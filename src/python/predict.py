from util import *

def prob_A_win(A_xG, B_xG):
    reset_outcomes()
    simulate(A_xG, B_xG)
    
    fav_outcomes = 0
    for i in outcomes.keys():
        if i[0] > i[1]:
            fav_outcomes = fav_outcomes + outcomes[i]

    prob = fav_outcomes / 100000.0
    return prob

def prob_B_win(A_xG, B_xG):
    reset_outcomes()
    simulate(A_xG, B_xG)
    
    fav_outcomes = 0
    for i in outcomes.keys():
        if i[0] < i[1]:
            fav_outcomes = fav_outcomes + outcomes[i]

    prob = fav_outcomes / 100000.0
    return prob

def prob_draw(A_xG, B_xG):
    reset_outcomes()
    simulate(A_xG, B_xG)
    
    fav_outcomes = 0
    for i in outcomes.keys():
        if i[0] == i[1]:
            fav_outcomes = fav_outcomes + outcomes[i]

    prob = fav_outcomes / 100000.0
    return prob

def most_likely_outcome(A_xG, B_xG):
    reset_outcomes()
    simulate(A_xG, B_xG)
    most_likely = max(outcomes, key = outcomes.get)

    return str(most_likely[0]) + "-" + str(most_likely[1])