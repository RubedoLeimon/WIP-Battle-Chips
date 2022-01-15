nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.quake2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","C","G","I","K","N","Q","W","*"})
 
    local props = package:get_card_props()
    props.shortname = "Quake2"
    props.damage = 120
    props.time_freeze = false
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Cracks a panel, Depth=3"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Quake2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
