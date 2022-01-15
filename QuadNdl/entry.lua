nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.quadndl")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","H","I","P","U","*"})
 
    local props = package:get_card_props()
    props.shortname = "QuadNdl"
    props.damage = 50
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "4 volleys of needles"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."QuadNdl.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
