nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.wavepit")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","E","Z"})
 
    local props = package:get_card_props()
    props.shortname = "WavePit"
    props.damage = 160
    props.time_freeze = false
    props.element = Element.Aqua
    props.secondary_element = Element.None
    props.description = "Wave from water sq"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."WavePit.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
