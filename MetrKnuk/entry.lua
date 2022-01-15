nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.metrknuk")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"K","M"})
 
    local props = package:get_card_props()
    props.shortname = "MetrKnuk"
    props.damage = 100
    props.time_freeze = true
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Meteors bombard from sky!"
    props.card_class = CardClass.Giga
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Metr.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
