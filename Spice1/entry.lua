nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.spice1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","B","C","D","G","I","Q","S","T","Z","*"})
 
    local props = package:get_card_props()
    props.shortname = "Spice1"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Wood
    props.secondary_element = Element.None
    props.description = "Unhealthy powder on all grass"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Spice1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
