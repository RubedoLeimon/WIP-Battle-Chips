nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.elemsand")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","L","S","*"})
 
    local props = package:get_card_props()
    props.shortname = "ElemSand"
    props.damage = 120
    props.time_freeze = false
    props.element = Element.None
    props.description = "3-sq atk Powerful on pitfal!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."ElemSand.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
