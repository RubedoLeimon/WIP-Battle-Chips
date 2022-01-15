nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.flmline2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"D","E","F"})
 
    local props = package:get_card_props()
    props.shortname = "FlmLine2"
    props.damage = 120
    props.time_freeze = false
    props.element = Element.Fire
    props.description = "Firebeam 2sq ahead 3sq long!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."FlmLine2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
