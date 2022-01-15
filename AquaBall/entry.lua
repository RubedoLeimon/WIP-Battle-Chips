nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.aquaball")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","B","Q","T","W","*"})
 
    local props = package:get_card_props()
    props.shortname = "AquaBall"
    props.damage = 10
    props.time_freeze = false
    props.element = Element.Aqua
    props.secondary_element = Element.None
    props.description = "Pops when it hits something!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."AquaBall.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
