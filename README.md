# xG Outcome Predcitor
 A program to predict foobtall (soccer) match outcome probabilities based on input Expected Goals (xG) data in Julia.

 ## Working
 There are four functions:
 1. _pred\_A\_win_ - returns probability of team A winning in an A vs. B match, given xG data.
 2. _pred\_B\_win_ - returns probability of team B winning in an A vs. B match, given xG data.
 3. _pred\_draw_ - returns probability of an A vs. B match ending in a draw, given xG data.
 4. _most\_likely\_outcome_ - returns the most likely outcome of an A vs. B match, given xG data.


 The functions take two Arrays (one for each team) as parameters - each array contains the xG values of every chance the respective team created. The _predict\_goals_ function takes as input each array and generates the number of goals each team scores, in a particular simulation, using the xG values. The _simulate_ function uses those numbers to run 100,000 simulations and updates the _outcomes_ dictionary. The _outcomes_ dictionary maps each outcome to the number of times it occurs during the simulations. We use this dictionary to make our predictions. The _reset\_outcomes_ function resets the dictionary to an empty state.