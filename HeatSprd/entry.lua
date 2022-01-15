nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.heatsprd")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"E","F","I","L","M","*"})
 
    local props = package:get_card_props()
    props.shortname = "HeatSprd"
    props.damage = 50
    props.time_freeze = false
    props.element = Element.Fire
    props.description = "Creates a large explosion"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."HeatSprd.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
