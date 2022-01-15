nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.elemice")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"H","Q","V"})
 
    local props = package:get_card_props()
    props.shortname = "ElemIce"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Aqua
    props.description = "3-sq atk Powerful on ice!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."ElemIce.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
