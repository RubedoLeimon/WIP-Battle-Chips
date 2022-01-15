nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.drilarm3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"I","P","Z"})
 
    local props = package:get_card_props()
    props.shortname = "DrilArm3"
    props.damage = 80
    props.time_freeze = false
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Knocks enmy 2sq away"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."DrilArm3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
