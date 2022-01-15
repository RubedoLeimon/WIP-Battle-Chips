nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.ringzap1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"G","H","M","N","P","*"})
 
    local props = package:get_card_props()
    props.shortname = "RingZap1"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Elec
    props.secondary_element = Element.None
    props.description = "Lightning circles you once"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."RingZap1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
