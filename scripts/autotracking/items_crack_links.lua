local crack_link_items = {}

local function create_crack_link_item(index)
    local code = "crack_link_" .. index

    local item = ScriptHost:CreateLuaItem()

    item.Name = "Crack Link"
    item.Icon = ImageReference:FromPackRelativePath(
        "images/display/hint_text.png"
    )

    item.PotentialCodes = { code }
    item:SetOverlayAlign("left")

    item.ItemState = {
        text = ""
    }

    item.ProvidesCodeFunc = function(self, requested_code)
        if requested_code == code then
            return true
        end
        return false
    end

    item.SaveFunc = function(self)
        return {}
    end

    item.LoadFunc = function(self, data)
        return self
    end

    crack_link_items[code] = item
    return item
end

for i = 1, 30 do
    create_crack_link_item(i)
end

local panel = Tracker:FindObjectForCode("crack_link_" .. 1)
if panel then
---@diagnostic disable-next-line: param-type-mismatch
    panel:SetOverlay("Connect to the Archipelago server to see crack links.")
end
