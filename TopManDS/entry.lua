nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.topmands")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"T"})
 
    local props = package:get_card_props()
    props.shortname = "TopManDS"
    props.damage = 100
    props.time_freeze = true
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Attck hit 3 panels ahead"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."TopManDS.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
