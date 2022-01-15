nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.triarrow")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","B","C","D","E"})
 
    local props = package:get_card_props()
    props.shortname = "TriArrow"
    props.damage = 40
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Fires a 3-arrow burst"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."TriArrow.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
