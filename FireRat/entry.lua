nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.fireratn")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","B","C","F","G","H","R","S","*"})
 
    local props = package:get_card_props()
    props.shortname = "FireRatn"
    props.damage = 230
    props.time_freeze = false
    props.element = Element.Fire
    props.secondary_element = Element.Cursor
    props.description = "Activates when hit w/ fire!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."FireRatn.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
