nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.icewave2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"D","H","L","P","R","*"})
 
    local props = package:get_card_props()
    props.shortname = "IceWave2"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Aqua
    props.secondary_element = Element.None
    props.description = "Creates a 2 sq wide ice wave!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."IceWave2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
