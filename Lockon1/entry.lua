nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.lockon1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","D","H","I","L"})
 
    local props = package:get_card_props()
    props.shortname = "Lockon1"
    props.damage = 10
    props.time_freeze = false
    props.element = Element.Cursor
    props.secondary_element = Element.None
    props.description = "Creates a lock on satellite!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Lockon1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
