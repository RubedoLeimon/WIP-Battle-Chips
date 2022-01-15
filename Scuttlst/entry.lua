nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.scuttlst")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","D","E","M","R"})
 
    local props = package:get_card_props()
    props.shortname = "Scuttlst"
    props.damage = 0-0
    props.time_freeze = true
    props.element = Element.Summon
    props.secondary_element = Element.None
    props.description = "Summons a Scuttlst to fight!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Scuttlst.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
