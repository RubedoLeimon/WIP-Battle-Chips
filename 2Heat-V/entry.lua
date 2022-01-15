nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.heat-v")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","D","E"})
 
    local props = package:get_card_props()
    props.shortname = "Heat-V"
    props.damage = 70
    props.time_freeze = false
    props.element = Element.Fire
    props.description = "Explodes 2 diag. squares"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Heat-V.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
