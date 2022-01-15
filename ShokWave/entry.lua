nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.shockwav")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","D","H","J","K","L","N","P","R","U","*"})
 
    local props = package:get_card_props()
    props.shortname = "ShockWav"
    props.damage = 60
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Shock through enemies"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."ShockWav.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
