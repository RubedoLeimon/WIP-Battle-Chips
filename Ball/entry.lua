nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.cannball")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","T","Z","B","V","*"})
 
    local props = package:get_card_props()
    props.shortname = "CannBall"
    props.damage = 140
    props.time_freeze = false
    props.element = Element.Break
    props.description = "Breaks 3rd panel ahead"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."CannBall.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
