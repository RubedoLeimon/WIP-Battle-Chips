nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.lavacan2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","D","F","M","O"})
 
    local props = package:get_card_props()
    props.shortname = "LavaCan2"
    props.damage = 120
    props.time_freeze = false
    props.element = Element.Fire
    props.description = "Fires lava fr. area"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."LavaCan2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
