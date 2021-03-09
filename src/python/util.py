import random

outcomes = dict()

def predict_goals(xG):
    goals = 0

    for i in xG:
        if (random.random() <= i):
            goals = goals + 1
    
    return goals

def simulate(A_xG, B_xG):
    for i in range(100000):
        goals_A = predict_goals(A_xG)
        goals_B = predict_goals(B_xG)

        outcome = (goals_A, goals_B)

        if outcome in outcomes.keys():
            outcomes[outcome] = outcomes[outcome] + 1
        else:
            outcomes[outcome] = 1

def reset_outcomes():
    outcomes = dict()