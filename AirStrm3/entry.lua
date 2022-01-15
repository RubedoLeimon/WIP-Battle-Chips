nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.airstrm3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","G","I","N","V"})
 
    local props = package:get_card_props()
    props.shortname = "AirStrm3"
    props.damage = 70
    props.time_freeze = false
    props.element = Element.Wind
    props.secondary_element = Element.None
    props.description = "Creates 3 whrlwinds"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."AirStrm3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
