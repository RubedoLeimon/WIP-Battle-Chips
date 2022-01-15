nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.ratton2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","C","F","G","H","I","J","K","L","M","N","O","*"})
 
    local props = package:get_card_props()
    props.shortname = "Ratton2"
    props.damage = 110
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.Cursor
    props.description = "Missile that can turn once"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Ratton2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
