from itertools import combinations

import commentjson
import sys
from typing import Any, TypedDict, Optional, cast


type Rules = list[str]


class JsonObject(TypedDict):
    name: str
    map_locations: Optional[list[Any]]
    access_rules: Optional[Rules]


class JsonItems(JsonObject):
    hosted_item: Optional[Rules]


class JsonLeaf(JsonObject):
    sections: list[JsonItems]


class JsonTree(JsonObject):
    children: 'list[JsonTree | JsonLeaf]'


class JsonTodo(JsonLeaf):
    pass


def compare_levels(rules: Rules, reverse_logic: bool = False):
    order: list[str] = [
        "normal",
        "hard",
        "glitched",
        "advanced",
        "hell",
        ""
    ]
    levels = list(filter(lambda x: x.startswith("[") and x[1:-1] in order, rules))
    if not levels or len(levels) <= 1:
        return
    levels = sorted(levels, key=lambda x: order.index(x[1:-1]) if x[1:-1] in order else 10e10, reverse=not reverse_logic)
    levels.remove(levels[0])
    for txt in levels:
        rules.remove(txt)


def compare_keys(rules: set[str]) -> set[str]:
    keywords = ["key"]
    sep = "|"
    to_remove: set[str] = set()
    filt = filter(lambda rule: any(keyword in rule for keyword in keywords) and sep in rule, rules)
    group = [(rule.split(sep)[0], rule.split(sep)[1]) for rule in filt]
    groups: dict[str, int] = {}
    for k, v in group:
        try:
            v = int(v)
            groups[k] = max(groups.get(k, 0), v)
            to_remove.update({f"{k}{sep}{i}" for i in range(1, groups[k])})
        except ValueError:
            continue
    return {rule for rule in rules if rule not in to_remove}


ignore_rules: Rules = []


def rule_transform(rule: str, reverse_logic: bool = False) -> str:
    rules = set(r.strip() for r in rule.split(","))
    to_remove: set[frozenset[str]] = set()
    for i in ignore_rules:
        ign = set(r.strip() for r in i.split(","))
        if all(s in rules for s in ign):
            to_remove.add(frozenset(ign))
    remover: set[str] = set()
    first = True
    for e in to_remove:
        if first:
            remover = set(e)
            first = False
        else:
            remover &= set(e)
    rules -= remover
    rules = compare_keys(rules)
    rules = sorted(rules)
    rules = sorted(rules, key=lambda x: x.startswith("["), reverse=True)
    compare_levels(rules, reverse_logic=reverse_logic)
    rules = sorted(set(rules))
    rules = sorted(rules, key=lambda x: x.startswith("["), reverse=True)
    return ",".join(rules)


def rule_filter(rules: set[str]) -> set[str]:
    for rule1, rule2 in combinations(set(rules), 2):
        if rule_transform(",".join([rule1, rule2]), reverse_logic=False) == rule1:
            rules.discard(rule2)
        elif rule_transform(",".join([rule1, rule2]), reverse_logic=False) == rule2:
            rules.discard(rule1)
    return rules


def multiply_rules(rules1: Rules, rules2: Rules) -> Rules:
    if not rules1:
        return rules2
    if not rules2:
        return rules1
    result: Rules = []
    for r1 in rules1:
        for r2 in rules2:
            res = f"{r1},{r2}".strip()
            result.append(rule_transform(res))
    return sorted(sorted(rule_filter(set(result))), key=lambda x: x.startswith("["))


def flatten_json(y: tuple[JsonTree, JsonTodo]) -> JsonTodo:
    global ignore_rules
    _rules = y[1]["access_rules"]
    if (isinstance(_rules, list)):
        ignore_rules = _rules.copy()
    out = y[1]
    out["sections"] = []
    stack: list[tuple[str, Rules, list[JsonTree | JsonLeaf | JsonItems]]] = [("", [], [y[0].copy()])]
    while stack:
        global_name, global_current_rules, current_nodes = stack.pop()
        for node in current_nodes:
            current_rules = global_current_rules.copy()
            name = global_name
            if node.get("children") is None:
                name += " " + node.get("name")
                name = name.strip()
            access_rules = node.get("access_rules", [])
            if access_rules:
                current_rules = multiply_rules(current_rules, access_rules)
            if isinstance(node.get("children"), list):
                node = cast(JsonTree, node)
                stack.append((name, current_rules, list(node["children"])))
            elif isinstance(node.get("sections"), list):
                node = cast(JsonLeaf, node)
                stack.append((name, current_rules, list(node["sections"])))
            else:
                if name.endswith("Inspect color"):
                    continue
                new_node = cast(JsonItems, node).copy()
                new_node["access_rules"] = current_rules
                new_node["name"] = name
                out["sections"].append(new_node)
    out["sections"].reverse()
    return out


if __name__ == "__main__":
    assert len(sys.argv) > 1, "Please provide a file"
    input = sys.argv[1]
    with open(input, "r") as f:
        data = commentjson.load(f)
    assert data is not None, "Failed to load JSON data"
    assert isinstance(data, list), "Invalid JSON structure"
    assert len(data) == 2, "Expected exactly two top-level JSON objects"
    assert all(isinstance(item, dict) for item in data), "Invalid JSON structure"  # pyright: ignore[reportUnknownVariableType]
    data[1] = flatten_json(cast(tuple[JsonTree, JsonTodo], data))
    with open(input, "w") as f:
        commentjson.dump(data, f, indent=2)
        f.write("\n")
