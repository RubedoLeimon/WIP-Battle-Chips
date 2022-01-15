nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.redwave")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","E","F","J","N","P","R","U"})
 
    local props = package:get_card_props()
    props.shortname = "RedWave"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Aqua
    props.secondary_element = Element.Fire
    props.description = "3-row wave! [Aqua]+[Fire]!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."RedWave.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
