nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.binder1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","O","S","*"})
 
    local props = package:get_card_props()
    props.shortname = "Binder1"
    props.damage = 60
    props.time_freeze = false
    props.element = Element.None
    props.description = "Fires a sonic blast"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Binder1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
