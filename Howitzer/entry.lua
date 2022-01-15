nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.howitzer")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","C","G","H","O"})
 
    local props = package:get_card_props()
    props.shortname = "Howitzer"
    props.damage = 200
    props.time_freeze = false
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Breaks panels, Depth=3"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Howitzer.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
