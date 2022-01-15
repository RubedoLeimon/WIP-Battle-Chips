nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.gaia3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","G","M","N","T"})
 
    local props = package:get_card_props()
    props.shortname = "Gaia3"
    props.damage = 160
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.Break
    props.description = "Rolling 3-column explosion!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Gaia3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end