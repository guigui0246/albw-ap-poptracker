local information_items = {}

local function create_information_item(index)
    local code = "important_hint_panel_line_" .. index

    local item = ScriptHost:CreateLuaItem()

    item.Name = "Information"
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

    information_items[code] = item
    return item
end

for i = 1, 9 do
    create_information_item(i)
end
