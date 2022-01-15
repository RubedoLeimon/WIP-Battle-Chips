nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.lilbolr3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"G","S","Z"})
 
    local props = package:get_card_props()
    props.shortname = "LilBolr3"
    props.damage = 180
    props.time_freeze = false
    props.element = Element.Summon
    props.secondary_element = Element.None
    props.description = "3pnl fwd Kttl attk, Attack+"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."LilBolr3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
