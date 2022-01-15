nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.nrthwind")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"D","Q","V","*"})
 
    local props = package:get_card_props()
    props.shortname = "NrthWind"
    props.damage = 0-0
    props.time_freeze = true
    props.element = Element.Wind
    props.secondary_element = Element.None
    props.description = "Wind blows off auras, barriers"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."NrthWind.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
