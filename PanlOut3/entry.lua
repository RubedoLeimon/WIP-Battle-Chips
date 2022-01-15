nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.panlout3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","E","N","R","Y","*"})
 
    local props = package:get_card_props()
    props.shortname = "PanlOut3"
    props.damage = 0-0
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Destroys 3 panels in front"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."PanlOut3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
