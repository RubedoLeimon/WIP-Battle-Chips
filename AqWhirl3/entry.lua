nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.aqwhirl3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"D","I","R"})
 
    local props = package:get_card_props()
    props.shortname = "AqWhirl3"
    props.damage = 130
    props.time_freeze = false
    props.element = Element.Aqua
    props.secondary_element = Element.None
    props.description = "Whirlwind makes water sq"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."AqWhirl3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
