nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.japanmansp")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"J","Y"})
 
    local props = package:get_card_props()
    props.shortname = "JapanManSP"
    props.damage = 60
    props.time_freeze = true
    props.element = Element.Sword
    props.secondary_element = Element.None
    props.description = "Multiple attacks w/spear"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."JapanManSP.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
