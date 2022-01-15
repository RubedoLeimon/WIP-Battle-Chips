nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.ratton3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","C","F","K","L","M","N","O","P","R","S","*"})
 
    local props = package:get_card_props()
    props.shortname = "Ratton3"
    props.damage = 130
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.Cursor
    props.description = "Missile that can turn once"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Ratton3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
