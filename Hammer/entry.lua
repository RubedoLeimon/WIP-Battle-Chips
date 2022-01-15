nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.hammer")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","G","L","P","T","*"})
 
    local props = package:get_card_props()
    props.shortname = "Hammer"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Hammer smashes front!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Hammer.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
