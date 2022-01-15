nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.meteors")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"R"})
 
    local props = package:get_card_props()
    props.shortname = "Meteors"
    props.damage = 40
    props.time_freeze = false
    props.element = Element.Fire
    props.secondary_element = Element.None
    props.description = "Drop many meteor on enmy area"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Meteors.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
