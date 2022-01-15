nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.icepunch")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","H","M","N","T"})
 
    local props = package:get_card_props()
    props.shortname = "IcePunch"
    props.damage = 150
    props.time_freeze = false
    props.element = Element.Aqua
    props.secondary_element = Element.Break
    props.description = "Knocks stuff over, Range=1"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."IcePunch.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
