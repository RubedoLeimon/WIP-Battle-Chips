nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.icewave1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","K","M","Q","W","*"})
 
    local props = package:get_card_props()
    props.shortname = "IceWave1"
    props.damage = 80
    props.time_freeze = false
    props.element = Element.Aqua
    props.secondary_element = Element.None
    props.description = "Creates a 2 sq wide ice wave!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."IceWave1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
