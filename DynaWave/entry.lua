nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.dynawave")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","E","G","M","N","Q","R","S","T","V","*"})
 
    local props = package:get_card_props()
    props.shortname = "DynaWave"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Shock through enemies"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."DynaWave.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
