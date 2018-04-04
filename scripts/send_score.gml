///send_score(name,score)
//
// Script:      Sends the player’s score to the database in Altervista
// Date:        2016-09-13
// Copyright:  PeliStar (c)
//
// Arguments:
// Argument0: name of the player
// Argument1: the achieved score

var name = url_encode(base64_encode(string(argument0)));
var args = "name="+name+"&score="+string(argument1)+"&hash=1324";
http_post_string("http://lichidari-daune.ro/OnlineScores/addscore.php", args);
