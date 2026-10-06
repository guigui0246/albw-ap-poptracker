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


def multiply_rules(rules1: Rules, rules2: Rules) -> Rules:
    result: Rules = []
    for r1 in rules1:
        for r2 in rules2:
            result.append(f"{r1},{r2}".strip())
    return result


def flatten_json(y: tuple[JsonTree, JsonTodo]) -> JsonTodo:
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
                new_node = cast(JsonItems, node).copy()
                new_node["access_rules"] = current_rules
                new_node["name"] = name
                out["sections"].append(new_node)
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
