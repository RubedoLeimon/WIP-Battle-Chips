nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.mokorus1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","I","M"})
 
    local props = package:get_card_props()
    props.shortname = "MokoRus1"
    props.damage = 60
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "3 Molokos charge the enemy"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."MokoRus1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
