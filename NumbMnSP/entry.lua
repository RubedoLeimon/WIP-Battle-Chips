nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.numbrmanSP")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"N","*"})
 
    local props = package:get_card_props()
    props.shortname = "NumbrManSP"
    props.damage = 130
    props.time_freeze = true
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Bomb 3 ahead! Hits 9sq"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."NumbrManSP.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
