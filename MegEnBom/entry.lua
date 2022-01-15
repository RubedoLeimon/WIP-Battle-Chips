nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.megenbom")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","D","G","J","K","M","O","W","Z","*"})
 
    local props = package:get_card_props()
    props.shortname = "MegEnBom"
    props.damage = 60
    props.time_freeze = false
    props.element = Element.None
    props.description = "Throws a bomb 3sq ahead"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."MegEnBom.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
