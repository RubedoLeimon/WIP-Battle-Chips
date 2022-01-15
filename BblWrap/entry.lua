nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.bblwrap")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"I","Q","Z","*"})
 
    local props = package:get_card_props()
    props.shortname = "BblWrap"
    props.damage = 0-0
    props.time_freeze = true
    props.element = Element.Aqua
    props.secondary_element = Element.None
    props.description = "Weak against elec atk"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BblWrap.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
