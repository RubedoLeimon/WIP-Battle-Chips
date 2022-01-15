nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.woodmansp")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"W"})
 
    local props = package:get_card_props()
    props.shortname = "WoodManSP"
    props.damage = 130
    props.time_freeze = true
    props.element = Element.Wood
    props.secondary_element = Element.None
    props.description = "Skewer entire enemy area"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."WoodManSP.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
