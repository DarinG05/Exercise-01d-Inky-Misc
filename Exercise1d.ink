/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR Crabs = 0 



-> seashore

== seashore ==
You are sitting on the beach. what a wonnder full time 

it is {advance_time() }


+ [Walk down the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach.

it is { advance_time() }
* { time == 0 } [pick up a star fish] -> Ariel 
* { time == 2 } [pick up a hermit crab] -> Crab
* { time == 1 } [pick up seashells] -> shells
+ [Move back up the beach] -> seashore

== Ariel == 
you bend down to grab the star fish...very familar looking mermaid shows up, almost like she's from a legally protected brand...she has red hair and shes coming your way 

*Leave the star fish alone -> ariHappy 
*pick it up and put it in your pocket -> arimad 

==ariHappy== 
she gets closer to you and takes the star fish "i knew i lost it somewhere" 
->beach2

==arimad== 
she scream at you for stealing her clothes, her fish flopping makes weird noises and it scares you off

you drop the star fish and run off 
->beach2 


== Crab ==
the crab looks at you, it is scared...lets put him down..
*put down crab ->beach2
*keep Crab -> CrabP

== CrabP == 
~ Crabs = Crabs + 1
you have gained {Crabs} Crabs ! -> beach2 
== shells ==

You pick up the shells
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
        
    ~ return time
    
    
    
