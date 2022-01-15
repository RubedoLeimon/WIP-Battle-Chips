nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.team1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","C","E","T","Z","*"})
 
    local props = package:get_card_props()
    props.shortname = "Team1"
    props.damage = 10
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Powers up when ally is hit"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Team1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
