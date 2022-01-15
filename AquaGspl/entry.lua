nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.aquagspl")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"X","*"})
 
    local props = package:get_card_props()
    props.shortname = "AquaGspl"
    props.damage = 600
    props.time_freeze = true
    props.element = Element.Aqua
    props.secondary_element = Element.None
    props.description = "Gospel's breath of water"
    props.card_class = CardClass.Giga
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."AquaGspl.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
