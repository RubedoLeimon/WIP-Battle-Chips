nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.pulsar3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","R","S"})
 
    local props = package:get_card_props()
    props.shortname = "Pulsar3"
    props.damage = 110
    props.time_freeze = false
    props.element = Element.None
    props.description = "Sonic attack spreads when hits"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Pulsar3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
