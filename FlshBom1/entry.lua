nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.flshbom1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"J","Q","L","*"})
 
    local props = package:get_card_props()
    props.shortname = "FlshBom1"
    props.damage = 40
    props.time_freeze = false
    props.element = Element.None
    props.description = "Thrw dlyd stun bomb 3 sq fwd"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."FlshBom1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
