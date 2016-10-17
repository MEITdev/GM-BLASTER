///load_highscore()
// Load all the scores in the highscore file and return the highest one
if (file_exists("highscore.sav"))
{
    ini_open("highscore.sav");
}
else
{
    // if there is no high score set the value to 200
    o_game.highscore = 200;
}
