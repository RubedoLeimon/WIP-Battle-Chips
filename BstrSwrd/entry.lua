nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.bstrswrd")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","E","L","P","S"})
 
    local props = package:get_card_props()
    props.shortname = "BstrSwrd"
    props.damage = 0-0
    props.time_freeze = false
    props.element = Element.Summon
    props.secondary_element = Element.None
    props.description = "1-turn of Sword w/B Btn."
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BstrSwrd.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
