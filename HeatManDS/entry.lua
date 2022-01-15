nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.heatmands")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"H","*"})
 
    local props = package:get_card_props()
    props.shortname = "HeatManDS"
    props.damage = 200
    props.time_freeze = true
    props.element = Element.Fire
    props.secondary_element = Element.None
    props.description = "Flame attack! Range=3"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."HeatManDS.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
