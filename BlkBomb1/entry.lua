nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.blkbomb1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"F","L","N","P","Z"})
 
    local props = package:get_card_props()
    props.shortname = "BlkBomb1"
    props.damage = 120
    props.time_freeze = false
    props.element = Element.Fire
    props.description = "Firebomb hits 3rd sq ahead!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BlkBomb1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
