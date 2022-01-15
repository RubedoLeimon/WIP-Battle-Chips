nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.bugbomb")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","B","G","R","T","Z","*"})
 
    local props = package:get_card_props()
    props.shortname = "BugBomb"
    props.damage = 0-0
    props.time_freeze = false
    props.element = Element.None
    props.description = "Throws a BugBomb 3sq ahead"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BugBomb.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
