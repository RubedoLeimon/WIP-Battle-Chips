nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.crsshld3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","E","L","N","R"})
 
    local props = package:get_card_props()
    props.shortname = "CrsShld3"
    props.damage = 260
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Guard, and bite into the enemy"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."CrsShld3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
