nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.kunai1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"E","I","L","P","S","*"})
 
    local props = package:get_card_props()
    props.shortname = "Kunai1"
    props.damage = 40
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.Sword
    props.description = "Kunais up and down 1 square"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Kunai1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
