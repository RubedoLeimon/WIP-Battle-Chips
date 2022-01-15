nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.geddon2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"F","H","N","O","W"})
 
    local props = package:get_card_props()
    props.shortname = "Geddon2"
    props.damage = 0-0
    props.time_freeze = true
    props.element = Element.None
    props.description = "Breaks all empty squares!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Geddon2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
