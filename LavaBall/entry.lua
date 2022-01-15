nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.lavaball")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","C","H","N","W","*"})
 
    local props = package:get_card_props()
    props.shortname = "LavaBall"
    props.damage = 140
    props.time_freeze = false
    props.element = Element.Fire
    props.description = "Shoot lava 3 panels ahead"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."LavaBall.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
