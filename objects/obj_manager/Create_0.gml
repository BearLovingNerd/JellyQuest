// Volume Setting
var num = audio_get_listener_count();
for( var i = 0; i < num; i++;)
{
    var info = audio_get_listener_info(i);
    audio_set_master_gain(info[? "index"], 0.15);
    ds_map_destroy(info);
}

debuggle = false
//window_set_cursor(cr_none)
randomize()
//audio_play_sound(sfx_music, 0, 1)