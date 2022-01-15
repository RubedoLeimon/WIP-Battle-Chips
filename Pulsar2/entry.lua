nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.pulsar2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"E","G","M"})
 
    local props = package:get_card_props()
    props.shortname = "Pulsar2"
    props.damage = 90
    props.time_freeze = false
    props.element = Element.None
    props.description = "Sonic attack spreads when hits"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Pulsar2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
