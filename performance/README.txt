Assignment 1: Optimizing Frogger
Michael Silverblatt
9/17/13

1. What optimization techniques did you use?

For the most part, I used the minification techniques that we learned in class. I found some handy online tools which take your copy and pasted javascript and css files and output condensed versions of them. This led to a minor but noticable improvement in page load times. In addition, I moved my javascript file from the head to the end of the body so that it loads last, although I could not tell if that actually led to an improvement. Lastly, I used the offline application cache to not only improve page load performance, but to allow for offline playing of the game. 

2. How did you ensure that the HTML5 offline application cache worked?

After loading the game in both Chrome and Firefox, I turned off my wireless card and tried to open the pages again in new tabs. The games loaded successfully without an internet connection on both browsers.

3. What tools did you use to test the performance of this updated version of your game? Using no tools for this assignment is not acceptable.

I used two chrome plugins called YSlow and SpeedTracer to track the performance of my game. I attempted to use another tool for checking the integrity of a manifest file but it appeared to buggy to be usable.

4. What performance aspects have been improved (e.g., loading time, size)? Please provide numbers, percentages, or letter grades.

The javascript and css files were shrunk as follows:

style.css 233B -> 175B
game.js 10.0KB -> 7.4KB

While clearly not a significant size in this particular instance, one can see how an application with thousands of lines of javascript and styling could greatly benefit from the minification techniques.

YSlow gave an A rating both before and after the optimizations, but the overall grade did increase from 95 to 97.

5. Are there potential performance issues?

Because it is so small and simple, there are no glaring performance issues that are uncovered using any of the timing tools. The game itself could still use some work though.