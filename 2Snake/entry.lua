nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.snake")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"H","L","M"})
 
    local props = package:get_card_props()
    props.shortname = "Snake"
    props.damage = 30
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Snake from hole in area"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Snake.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
