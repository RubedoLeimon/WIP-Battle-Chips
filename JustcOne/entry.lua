nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.justcone")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"J"})
 
    local props = package:get_card_props()
    props.shortname = "JustcOne"
    props.damage = 220
    props.time_freeze = false
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Fst Atk on center panel"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."JustcOne.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
