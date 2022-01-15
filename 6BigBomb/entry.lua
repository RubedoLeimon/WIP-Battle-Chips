nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.bigbomb")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"V"})
 
    local props = package:get_card_props()
    props.shortname = "BigBomb"
    props.damage = 140
    props.time_freeze = false
    props.element = Element.None
    props.description = "Throws a 9 panl bomb 3 panl fwd"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BigBomb.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
