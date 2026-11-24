-- Desert of Mystery
function access_desert()
    if hasAll({ "not_cracksanity", "merge", "quake_on" }) then return true end
    if weather_vane("wv_desert") then return true end
    if hasAll({ "cracksanity", "merge" }) and hasAny({ "crack_desert_north", "crack_desert_pillar_left", "crack_desert_pillar_right", "crack_desert_middle", "crack_desert_sw" }) then return true end
    if hasAll({ "cracksanity", "merge" , "crack_desert_palace", "scoot" }) then return true end
    return false
end
