nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.bass-")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"X"})
 
    local props = package:get_card_props()
    props.shortname = "Bass-"
    props.damage = 90
    props.time_freeze = true
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Dark chip explodes for 3 sq"
    props.card_class = CardClass.Giga
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Bass-.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
