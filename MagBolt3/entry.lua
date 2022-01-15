nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.magbolt3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","B","C"})
 
    local props = package:get_card_props()
    props.shortname = "MagBolt3"
    props.damage = 130
    props.time_freeze = false
    props.element = Element.Elec
    props.description = "Shocks an enemy ahead"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."MagBolt3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
