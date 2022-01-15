nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.burner")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","F","Q","S","W"})
 
    local props = package:get_card_props()
    props.shortname = "Burner"
    props.damage = 130
    props.time_freeze = false
    props.element = Element.Fire
    props.secondary_element = Element.Wind
    props.description = "Envelops you in flame!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Burner.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
