nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.bighook")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","H"})
 
    local props = package:get_card_props()
    props.shortname = "BigHook"
    props.damage = 240
    props.time_freeze = true
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Hook atk 2 sq wide"
    props.card_class = CardClass.Giga
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BigHook.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
