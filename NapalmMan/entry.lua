nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.napalmmn")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"N","*"})
 
    local props = package:get_card_props()
    props.shortname = "NapalmMn"
    props.damage = 220
    props.time_freeze = true
    props.element = Element.Fire
    props.secondary_element = Element.Break
    props.description = "Bombs that even break panels!"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."NapalmMn.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
