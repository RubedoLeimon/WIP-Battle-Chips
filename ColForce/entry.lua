nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.colforce")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"Q"})
 
    local props = package:get_card_props()
    props.shortname = "ColForce"
    props.damage = 30
    props.time_freeze = true
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Smn Col.army in open pnls!"
    props.card_class = CardClass.Giga
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."ColForce.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
