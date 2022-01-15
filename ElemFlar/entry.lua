nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.elemflar")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"K","N","P"})
 
    local props = package:get_card_props()
    props.shortname = "ElemFlar"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Fire
    props.description = "3-sq atk Powerful on magma!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."ElemFlar.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
