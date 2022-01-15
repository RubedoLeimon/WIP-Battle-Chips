nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.circgun1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"H","T","Z"})
 
    local props = package:get_card_props()
    props.shortname = "CircGun1"
    props.damage = 80
    props.time_freeze = false
    props.element = Element.Cursor
    props.secondary_element = Element.None
    props.description = "Stop site w/ Button and attck"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."CircGun1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
