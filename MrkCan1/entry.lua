nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.mrkcan1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"K","M","S"})
 
    local props = package:get_card_props()
    props.shortname = "MrkCan1"
    props.damage = 70
    props.time_freeze = false
    props.element = Element.Cursor
    props.description = "CanGrdEX locks on 3 rows"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."MrkCan1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
