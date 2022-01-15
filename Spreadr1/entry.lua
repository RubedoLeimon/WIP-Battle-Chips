nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.spreadr1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","D","E","L","M","N","*"})
 
    local props = package:get_card_props()
    props.shortname = "Spreadr1"
    props.damage = 30
    props.time_freeze = false
    props.element = Element.None
    props.description = "Spreads dmg to adj panels"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Spreadr1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
