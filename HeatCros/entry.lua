nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.heatcross")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"K","O","P","T","V","*"})
 
    local props = package:get_card_props()
    props.shortname = "HeatCross"
    props.damage = 50
    props.time_freeze = false
    props.element = Element.Fire
    props.description = "Explodes 4 diagonal squares"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."HeatCross.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
