include("util.jl")

function prob_A_win(A_xG::Array, B_xG::Array)
    reset_outcomes()
    simulate(A_xG, B_xG)
    
    fav_outcomes = 0
    for i in outcomes.keys
        if i[1] > i[2]
            fav_outcomes = fav_outcomes + outcomes[i]
        end
    end

    prob = fav_outcomes / 100000.0
    return prob
end

function prob_B_win(A_xG::Array, B_xG::Array)
    reset_outcomes()
    simulate(A_xG, B_xG)
    
    fav_outcomes = 0
    for i in outcomes.keys
        if i[1] < i[2]
            fav_outcomes = fav_outcomes + outcomes[i]
        end
    end

    prob = fav_outcomes / 100000.0
    return prob
end

function prob_draw(A_xG::Array, B_xG::Array)
    reset_outcomes()
    simulate(A_xG, B_xG)
    
    fav_outcomes = 0
    for i in outcomes.keys
        if i[1] == i[2] && i[1] + i[2] != 0
            fav_outcomes = fav_outcomes + outcomes[i]
        end
    end
    
    fav_outcomes = fav_outcomes + outcomes[(0, 0)]

    prob = fav_outcomes / 100000.0
    return prob
end

function most_likely_outcome(A_xG::Array, B_xG::Array)
    reset_outcomes()
    simulate(A_xG, B_xG)
    most_likely = findmax(outcomes)[2]

    return string(most_likely[1]) * "-" * string(most_likely[2])
end

most_likely_outcome([0.1, 0.07, 0.04, 0.40, 0.09, 0.04, 0.68], [0.02, 0.39, 0.07, 0.04, 0.06, 0.07, 0.02, 0.01, 0.02])