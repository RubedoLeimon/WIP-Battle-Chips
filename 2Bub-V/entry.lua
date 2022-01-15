nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.bub-v")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","D","E"})
 
    local props = package:get_card_props()
    props.shortname = "Bub-V"
    props.damage = 80
    props.time_freeze = false
    props.element = Element.Aqua
    props.description = "Explodes 2 diag. squares"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Bub-V.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
