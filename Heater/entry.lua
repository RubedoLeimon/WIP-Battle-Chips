nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.heater")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","F","G","K","O","*"})
 
    local props = package:get_card_props()
    props.shortname = "Heater"
    props.damage = 70
    props.time_freeze = false
    props.element = Element.Fire
    props.description = "Fire with a 1-panel blast"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Heater.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
