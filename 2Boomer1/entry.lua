nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.boomer")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"J","K","T"})
 
    local props = package:get_card_props()
    props.shortname = "Boomer"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Wood
    props.secondary_element = Element.None
    props.description = "Boomerang encircles field"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Boomer.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
