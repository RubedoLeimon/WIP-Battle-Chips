nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.burnmands")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B"})
 
    local props = package:get_card_props()
    props.shortname = "BurnManDS"
    props.damage = 100
    props.time_freeze = true
    props.element = Element.Fire
    props.secondary_element = Element.None
    props.description = "3-direct burnr fry 2 ahead!"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BurnManDS.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
