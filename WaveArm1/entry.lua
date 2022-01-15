nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.wavearm1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"E","F","G"})
 
    local props = package:get_card_props()
    props.shortname = "WaveArm1"
    props.damage = 80
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Follw enemy and fire trap wave"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."WaveArm1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
