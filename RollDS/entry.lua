nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.rollds")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"R","*"})
 
    local props = package:get_card_props()
    props.shortname = "RollDS"
    props.damage = 170
    props.time_freeze = true
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Attacks enmy, then heals you"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."RollDS.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
