/// @description  returns the game_time timer, formatted as a string to look like hours:minutes:seconds:centiseconds
function game_time_format() {
	// note to self: the game_time var is already stored in seconds, with accuracy to the millionth decimal position (10^-6)
	// the descriptions of the following code uses "real seconds" to describe global.game_time

	// hours: acquired by dividing the real seconds by the number of seconds in an hour, 
	//  then shaving off the remainder by rounding down.
	hours = floor(global.game_time / 3600);

	// minutes: acquired by subtracting the number of seconds taken up in hours from the real seconds,
	//  dividing that result by the number of seconds in a minute, 
	//  then shaving off the remainder by rounding down.
	minutes = floor( (global.game_time - (3600*hours)) / 60 );

	// seconds: acquired by subtracting the number of seconds taken up in hours from the real seconds,
	//  also subtracting the number of seconds taken up in minutes from the real seconds, 
	//  then shaving off the remainder by rounding down.
	seconds = floor( (global.game_time - (3600*hours) - (60*minutes)) );

	// store the remainder (always a decimal number smaller than 1 second) for any other use,
	//  by subtracting the rounded-down integer version of the real seconds from the real seconds.
	remainder = global.game_time - floor(global.game_time);


	// the following lines convert the time values into strings for use in displaying them,
	//  sometimes adding a 0 if the string length is only one digit.

	str_hours = string(hours);

	str_minutes = string(minutes);
	//if(string_length(str_minutes) < 2) { str_minutes = "0"+str_minutes; }

	str_seconds = string(seconds);
	//if(string_length(str_seconds) < 2) { str_seconds = "0"+str_seconds; }

	// return the final formatted string result with colons between the numbers. 
	return str_hours+"h "+str_minutes+"m "+str_seconds+"s "

	///made by treehann on reddit



}
