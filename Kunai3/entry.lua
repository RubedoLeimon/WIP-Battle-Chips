nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.kunai3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","G","H","K","N","*"})
 
    local props = package:get_card_props()
    props.shortname = "Kunai3"
    props.damage = 40
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.Sword
    props.description = "Kunais up and down 3 squares"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Kunai3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
