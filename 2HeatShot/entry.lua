nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.heatshot")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","C","D","G","H","I","J","P","R","*"})
 
    local props = package:get_card_props()
    props.shortname = "HeatShot"
    props.damage = 40
    props.time_freeze = false
    props.element = Element.Fire
    props.description = "Fire with a 1-panel blast"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."HeatShot.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
