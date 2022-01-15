nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.gutstrgt")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"O","P","Q","R","S"})
 
    local props = package:get_card_props()
    props.shortname = "GutStrgt"
    props.damage = 140
    props.time_freeze = false
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Punch 2 square range"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."GutStrgt.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
