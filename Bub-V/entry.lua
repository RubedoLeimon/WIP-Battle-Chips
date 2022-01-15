nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.bub-v")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","D","E","F","J","N","S","V","*"})
 
    local props = package:get_card_props()
    props.shortname = "Bub-V"
    props.damage = 60
    props.time_freeze = false
    props.element = Element.Aqua
    props.description = "Explodes 1 square behind"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Bub-V.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
