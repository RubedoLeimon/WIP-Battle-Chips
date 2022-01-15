nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.heatside")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","J","K","L","T","*"})
 
    local props = package:get_card_props()
    props.shortname = "HeatSide"
    props.damage = 40
    props.time_freeze = false
    props.element = Element.Fire
    props.description = "Explodes up, down on hit"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."HeatSide.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
