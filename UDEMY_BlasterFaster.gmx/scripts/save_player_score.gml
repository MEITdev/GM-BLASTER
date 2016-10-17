///save_player_score(player_name, player_score)
// Save the high score of a player

var player_name = argument0;
var player_score = argument1;

if (file_exists("highscore.sav"))
{   
}
else
{
    // open file for writing
    ini_open("highscore.sav");
    ini_write_string("highscore", "player_name", player_name);
    ini_write_real("highscore", "player_score", player_score);
    ini_close();
}
