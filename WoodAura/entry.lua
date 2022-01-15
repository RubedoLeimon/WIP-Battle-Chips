nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.woodaura")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","G","K","O","S","*"})
 
    local props = package:get_card_props()
    props.shortname = "WoodAura"
    props.damage = 0-0
    props.time_freeze = true
    props.element = Element.Wood
    props.secondary_element = Element.None
    props.description = "Repels attacks under 80"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."WoodAura.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
