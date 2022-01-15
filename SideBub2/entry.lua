nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.sidebub2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"H","L","W"})
 
    local props = package:get_card_props()
    props.shortname = "SideBub2"
    props.damage = 110
    props.time_freeze = false
    props.element = Element.Aqua
    props.secondary_element = Element.None
    props.description = "Bubbles spread in a big V"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."SideBub2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
