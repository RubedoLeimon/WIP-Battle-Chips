nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.golmhit2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"D","P","U"})
 
    local props = package:get_card_props()
    props.shortname = "GolmHit2"
    props.damage = 190
    props.time_freeze = false
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Hit 3pnl area arnd clst enmy"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."GolmHit2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
