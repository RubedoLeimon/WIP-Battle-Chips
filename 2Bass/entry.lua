nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.bass5")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B"})
 
    local props = package:get_card_props()
    props.shortname = "Bass"
    props.damage = 60
    props.time_freeze = true
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Buster rake half enmy area"
    props.card_class = CardClass.Giga
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Bass.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
