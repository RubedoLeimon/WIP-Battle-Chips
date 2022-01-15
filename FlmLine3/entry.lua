nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.flmline3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"J","K","L"})
 
    local props = package:get_card_props()
    props.shortname = "FlmLine3"
    props.damage = 170
    props.time_freeze = false
    props.element = Element.Fire
    props.description = "Firebeam 2sq ahead 3sq long!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."FlmLine3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
