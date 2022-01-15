nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.bigwave2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","H","K","L","Q"})
 
    local props = package:get_card_props()
    props.shortname = "BigWave"
    props.damage = 160
    props.time_freeze = false
    props.element = Element.Aqua
    props.secondary_element = Element.None
    props.description = "3-row giant wave! [Aqua]"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BigWave.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
