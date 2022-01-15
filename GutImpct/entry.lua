nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.gutimpct")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"G","H","I","J","K"})
 
    local props = package:get_card_props()
    props.shortname = "GutImpct"
    props.damage = 180
    props.time_freeze = false
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Punch pushes 1 square"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."GutImpct.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
