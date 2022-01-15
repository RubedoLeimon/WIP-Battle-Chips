nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.catcher")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"F","I","J","N","T","*"})
 
    local props = package:get_card_props()
    props.shortname = "Catcher"
    props.damage = 0-0
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Sends UFO to steal a chip"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Catcher.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
