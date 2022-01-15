nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.mudwave")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"D","N","W"})
 
    local props = package:get_card_props()
    props.shortname = "MudWave"
    props.damage = 170
    props.time_freeze = false
    props.element = Element.Aqua
    props.secondary_element = Element.Wood
    props.description = "MudWave from hole"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."MudWave.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
