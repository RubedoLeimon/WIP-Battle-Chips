nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.aquaaura")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","E","I","M","Q","*"})
 
    local props = package:get_card_props()
    props.shortname = "AquaAura"
    props.damage = 0-0
    props.time_freeze = true
    props.element = Element.Aqua
    props.secondary_element = Element.None
    props.description = "Repels attacks under 10"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."AquaAura.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
