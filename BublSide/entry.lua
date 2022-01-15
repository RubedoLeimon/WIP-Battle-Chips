nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.bublside")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","E","F","G","R"})
 
    local props = package:get_card_props()
    props.shortname = "BublSide"
    props.damage = 60
    props.time_freeze = false
    props.element = Element.Aqua
    props.description = "Explodes up, down on hit"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BublSide.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
