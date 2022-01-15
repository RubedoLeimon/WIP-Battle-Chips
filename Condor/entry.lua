nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.condor")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","I","L","S","Z"})
 
    local props = package:get_card_props()
    props.shortname = "Condor"
    props.damage = 180
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.Wind
    props.description = "Chrge atk pierces enemies!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Condor.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
