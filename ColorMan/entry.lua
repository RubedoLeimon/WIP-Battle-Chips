nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.colorman")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C"})
 
    local props = package:get_card_props()
    props.shortname = "ColorMan"
    props.damage = 120
    props.time_freeze = true
    props.element = Element.Aqua
    props.secondary_element = Element.Fire
    props.description = "Towers of [Aqua]&[Fire]!"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."ColorMan.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
