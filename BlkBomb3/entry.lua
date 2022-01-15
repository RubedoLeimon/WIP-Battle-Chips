nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.blkbomb3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","G","L","U","Y"})
 
    local props = package:get_card_props()
    props.shortname = "BlkBomb3"
    props.damage = 220
    props.time_freeze = false
    props.element = Element.Fire
    props.description = "Firebomb hits 3rd sq ahead!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BlkBomb3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
