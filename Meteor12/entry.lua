nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.meteor12")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","C","F","J","W","*"})
 
    local props = package:get_card_props()
    props.shortname = "Meteor12"
    props.damage = 80
    props.time_freeze = false
    props.element = Element.Fire
    props.secondary_element = Element.None
    props.description = "Magic wand shoots 12 meteors"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Meteor12.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
