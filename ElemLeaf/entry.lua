nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.elemleaf")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","D","I"})
 
    local props = package:get_card_props()
    props.shortname = "ElemLeaf"
    props.damage = 80
    props.time_freeze = false
    props.element = Element.Wood
    props.description = "3-sq atk Powerful on grass!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."ElemLeaf.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
