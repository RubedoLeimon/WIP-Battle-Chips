nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.sumnblk1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"E","I","P"})
 
    local props = package:get_card_props()
    props.shortname = "SumnBlk1"
    props.damage = 160
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.Sword
    props.description = "Summon a Nghtmare attack!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."SumnBlk1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
