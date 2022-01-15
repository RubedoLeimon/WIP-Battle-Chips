nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.mrkcan2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"D","F","Z"})
 
    local props = package:get_card_props()
    props.shortname = "MrkCan2"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Cursor
    props.description = "CanRadEX locks on 3 rows"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."MrkCan2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
