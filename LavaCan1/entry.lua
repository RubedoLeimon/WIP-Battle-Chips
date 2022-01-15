nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.lavacan1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","G","S","T","V"})
 
    local props = package:get_card_props()
    props.shortname = "LavaCan1"
    props.damage = 90
    props.time_freeze = false
    props.element = Element.Fire
    props.description = "Fires lava fr. area"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."LavaCan1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
