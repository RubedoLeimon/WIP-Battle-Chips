nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.airstrm1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","F","H","O","S"})
 
    local props = package:get_card_props()
    props.shortname = "AirStrm1"
    props.damage = 50
    props.time_freeze = false
    props.element = Element.Wind
    props.secondary_element = Element.None
    props.description = "Creates 3 whrlwinds"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."AirStrm1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
