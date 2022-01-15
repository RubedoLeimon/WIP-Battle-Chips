nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.brnzfist")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","N","O","R","S","*"})
 
    local props = package:get_card_props()
    props.shortname = "BrnzFist"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Fist of death!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BrnzFist.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
