nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.twnfng3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"F","G","H"})
 
    local props = package:get_card_props()
    props.shortname = "TwnFng3"
    props.damage = 130
    props.time_freeze = false
    props.element = Element.None
    props.description = "Launch 2 fangs up and down"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."TwnFng3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
