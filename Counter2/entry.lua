nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.counter2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","H","L","*"})
 
    local props = package:get_card_props()
    props.shortname = "Counter2"
    props.damage = 110
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Counter-attack to enemy"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Counter2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
