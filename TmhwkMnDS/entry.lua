nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.tmhwkmands")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"T"})
 
    local props = package:get_card_props()
    props.shortname = "TmhwkManDS"
    props.damage = 280
    props.time_freeze = true
    props.element = Element.Wood
    props.secondary_element = Element.Sword
    props.description = "Slice 2sq side, 3sq vertical"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."TmhwkManDS.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
