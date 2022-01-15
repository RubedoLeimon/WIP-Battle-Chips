nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.kendomands")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"K"})
 
    local props = package:get_card_props()
    props.shortname = "KendoManDS"
    props.damage = 170
    props.time_freeze = true
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Attck hit an enemy in front"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."KendoManDS.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
