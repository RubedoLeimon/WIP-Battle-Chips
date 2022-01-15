nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.dynamyt3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"G","K","M","O","P"})
 
    local props = package:get_card_props()
    props.shortname = "Dynamyt3"
    props.damage = 150
    props.time_freeze = false
    props.element = Element.Cursor
    props.secondary_element = Element.None
    props.description = "Looks up&down for enemy"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Dynamyt3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
