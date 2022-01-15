nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.lilbolr1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"F","K","L"})
 
    local props = package:get_card_props()
    props.shortname = "LilBolr1"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Summon
    props.secondary_element = Element.None
    props.description = "3pnl fwd Kttl attk, Attack+"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."LilBolr1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
