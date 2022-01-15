nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.Fan3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","G","L","R","T","*"})
 
    local props = package:get_card_props()
    props.shortname = "Fan"
    props.damage = 0-0
    props.time_freeze = false
    props.element = Element.Summon
    props.secondary_element = Element.None
    props.description = "Vacuum pulls enemies"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Fan.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
