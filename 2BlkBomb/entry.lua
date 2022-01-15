nonce = function() end
 

BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.blkbomb")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","D","H","L","R","Z"})
 
    local props = package:get_card_props()
    props.shortname = "BlkBomb"
    props.damage = 250
    props.time_freeze = false
    props.element = Element.Fire
    props.description = "Firebomb hits 3rd sq ahead!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BlkBomb.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
