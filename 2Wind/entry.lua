nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.wind2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","E","H","O","S","*"})
 
    local props = package:get_card_props()
    props.shortname = "Wind"
    props.damage = 0-0
    props.time_freeze = false
    props.element = Element.Summon
    props.secondary_element = Element.None
    props.description = "WindBox blows at enmy area."
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Wind.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
