nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.woodtowr")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","C","H","K","N","*"})
 
    local props = package:get_card_props()
    props.shortname = "WoodTowr"
    props.damage = 140
    props.time_freeze = false
    props.element = Element.Wood
    props.secondary_element = Element.None
    props.description = "Log that can move up&down"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."WoodTowr.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
