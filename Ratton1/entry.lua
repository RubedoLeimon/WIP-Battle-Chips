nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.ratton1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","B","C","D","E","F","H","I","J","K","L","*"})
 
    local props = package:get_card_props()
    props.shortname = "Ratton1"
    props.damage = 90
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.Cursor
    props.description = "Missile that can turn once"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Ratton1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
