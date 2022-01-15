nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.snakegg2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","E","H","N","P","*"})
 
    local props = package:get_card_props()
    props.shortname = "Snakegg2"
    props.damage = 140
    props.time_freeze = false
    props.element = Element.Elec
    props.secondary_element = Element.None
    props.description = "Shocking snake attack!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Snakegg2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
