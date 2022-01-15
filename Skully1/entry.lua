nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.skully1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","K","S"})
 
    local props = package:get_card_props()
    props.shortname = "Skully1"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Confuses enemy if it hits"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Skully1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
