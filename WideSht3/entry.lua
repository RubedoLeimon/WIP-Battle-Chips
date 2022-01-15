nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.widesht3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"S","T","U"})
 
    local props = package:get_card_props()
    props.shortname = "WideSht3"
    props.damage = 110
    props.time_freeze = false
    props.element = Element.Aqua
    props.description = "Fires 3sq shotgun blast!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."WideSht3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
