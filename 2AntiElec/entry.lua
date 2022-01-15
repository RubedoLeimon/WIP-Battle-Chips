nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.antielec")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","N","Y","*"})
 
    local props = package:get_card_props()
    props.shortname = "AntiElec"
    props.damage = 200
    props.time_freeze = true
    props.element = Element.Elec
    props.secondary_element = Element.None
    props.description = "Elec attack damages you"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."AntiElec.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
