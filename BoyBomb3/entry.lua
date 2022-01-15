nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.boybomb3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"G","T","V","B","Q","Y"})
 
    local props = package:get_card_props()
    props.shortname = "BoyBomb3"
    props.damage = 230
    props.time_freeze = false
    props.element = Element.Summon
    props.description = "BoyBomb 1sq ahead Push it!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BoyBomb3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
