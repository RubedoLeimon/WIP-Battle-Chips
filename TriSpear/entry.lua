nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.trispear")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"F","G","H","I","J"})
 
    local props = package:get_card_props()
    props.shortname = "TriSpear"
    props.damage = 50
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Fires a 3-arrow burst"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."TriSpear.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
