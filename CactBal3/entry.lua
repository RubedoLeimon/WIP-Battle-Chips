nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.cactbal3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"L","M","N"})
 
    local props = package:get_card_props()
    props.shortname = "CactBal3"
    props.damage = 50
    props.time_freeze = false
    props.element = Element.Wood
    props.description = "Jumps forward 4 times"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."CactBal3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
