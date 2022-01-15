nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.airspin2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","B","H","L","T","W"})
 
    local props = package:get_card_props()
    props.shortname = "AirSpin2"
    props.damage = 50
    props.time_freeze = false
    props.element = Element.Wind
    props.secondary_element = Element.None
    props.description = "Spits out hurricane attack"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."AirSpin2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
