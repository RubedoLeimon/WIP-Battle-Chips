nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.dustmanex")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"D","*"})
 
    local props = package:get_card_props()
    props.shortname = "DustManEX"
    props.damage = 130
    props.time_freeze = true
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Attk ahd. Suck in & shoot out"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."DustManEX.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
