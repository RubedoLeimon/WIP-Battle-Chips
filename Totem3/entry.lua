nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.totem3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"D","I","K","N","Q"})
 
    local props = package:get_card_props()
    props.shortname = "Totem3"
    props.damage = 180
    props.time_freeze = false
    props.element = Element.Fire
    props.secondary_element = Element.Aqua
    props.description = "Creates a totem to blow fire"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Totem3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
