nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.nobeam2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"E","I","S","U","Y"})
 
    local props = package:get_card_props()
    props.shortname = "NoBeam2"
    props.damage = 260
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Fires if something behind"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."NoBeam2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
