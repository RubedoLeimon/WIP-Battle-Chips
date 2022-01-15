nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.boybomb1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"E","J","M","C","F","S"})
 
    local props = package:get_card_props()
    props.shortname = "BoyBomb1"
    props.damage = 130
    props.time_freeze = false
    props.element = Element.Summon
    props.description = "BoyBomb 1sq ahead Push it!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BoyBomb1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
