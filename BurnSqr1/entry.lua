nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.burnsqr1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"H","P","V"})
 
    local props = package:get_card_props()
    props.shortname = "BurnSqr1"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Fire
    props.secondary_element = Element.None
    props.description = "Press A to burn a 4pnl sqr"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BurnSqr1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
