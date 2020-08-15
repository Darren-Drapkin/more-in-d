module more;
import std.stdio;
import std.file;
import std.range;
import core.thread;

void main(string[]args)
     {
     while(!stdin.eof)
	{
	auto buffer = /* read in */
	stdin.
    	byLine.
	take(10);
	
	foreach(line;buffer) /* output */
		{line.writeln;}
	"--More--".writeln;

	/* pause - replace with waiting for input in a later version*/
	Thread.sleep(6.seconds); 
	
	/* clear screen, home cursor, using an ansi escape sequence */
	"\u001b[2J\u001b[H".write;
	}
}
/* My version of the more command in Dlang, in a functional style
 * It should read a group of 10 lines at once, output them, pause,
 * clear the screen and repeat until input is ended
 */