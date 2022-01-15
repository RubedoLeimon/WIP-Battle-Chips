nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.yo-yo1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","D","E","F","G","R","T","V","*"})
 
    local props = package:get_card_props()
    props.shortname = "Yo-Yo1"
    props.damage = 40
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.Sword
    props.description = "3-square yo-yo attack!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Yo-Yo1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
