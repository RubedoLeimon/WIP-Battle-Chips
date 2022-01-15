nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.airspin3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","G","J","N","O","T"})
 
    local props = package:get_card_props()
    props.shortname = "AirSpin3"
    props.damage = 50
    props.time_freeze = false
    props.element = Element.Wind
    props.secondary_element = Element.None
    props.description = "Spits out hurricane attack"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."AirSpin3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
