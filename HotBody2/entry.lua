nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.hotbody2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","R","W"})
 
    local props = package:get_card_props()
    props.shortname = "HotBody2"
    props.damage = 130
    props.time_freeze = false
    props.element = Element.Fire
    props.secondary_element = Element.None
    props.description = "Burns all enemies around"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."HotBody2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
