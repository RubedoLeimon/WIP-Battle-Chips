nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.deltaray")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"D","R","Z"})
 
    local props = package:get_card_props()
    props.shortname = "DeltaRay"
    props.damage = 220
    props.time_freeze = true
    props.element = Element.Sword
    props.secondary_element = Element.None
    props.description = "A Button power up by 3 swrd!"
    props.card_class = CardClass.Giga
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."DeltaRay.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
