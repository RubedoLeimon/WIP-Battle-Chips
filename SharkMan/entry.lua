nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.sharkman")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"S"})
 
    local props = package:get_card_props()
    props.shortname = "SharkMan"
    props.damage = 110
    props.time_freeze = true
    props.element = Element.Aqua
    props.secondary_element = Element.None
    props.description = "3-row shark fin attack"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."SharkMan.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
