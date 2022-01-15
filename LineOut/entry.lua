nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.lineout")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"F","H","J","Q","T","*"})
 
    local props = package:get_card_props()
    props.shortname = "LineOut"
    props.damage = 40
    props.time_freeze = false
    props.element = Element.Fire
    props.secondary_element = Element.None
    props.description = "Destroys 1 line of panels!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."LineOut.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
