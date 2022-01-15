nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.airswrd")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","E","H","J","R","*"})
 
    local props = package:get_card_props()
    props.shortname = "AirSwrd"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Wind
    props.secondary_element = Element.Sword
    props.description = "Wind: Cuts fwd 3 squares"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."AirSwrd.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
