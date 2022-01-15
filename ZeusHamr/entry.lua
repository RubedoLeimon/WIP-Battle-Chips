nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.zeushamr")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"Z"})
 
    local props = package:get_card_props()
    props.shortname = "ZeusHamr"
    props.damage = 250
    props.time_freeze = true
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Damages anyone on a panel"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."ZeusHamr.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
