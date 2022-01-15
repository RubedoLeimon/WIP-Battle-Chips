nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.pharomanex")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"P"})
 
    local props = package:get_card_props()
    props.shortname = "PharoManEX"
    props.damage = 140
    props.time_freeze = true
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "3-row coffin laser!"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."PharoManEX.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end