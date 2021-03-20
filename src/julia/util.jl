using Random

outcomes = Dict{Tuple{String, String}, Int16}()

function predict_goals(xG::Array)
    goals = Int16(0)
    for i in xG
        if (rand(Float16) <= i)
            goals = goals + 1
        end
    end
    return goals
end

function simulate(A_xG::Array, B_xG::Array)
    for i in 1:100000
        goals_A = predict_goals(A_xG)
        goals_B = predict_goals(B_xG)

        outcome = (string(goals_A), string(goals_B))

        if haskey(outcomes, outcome)
            outcomes[outcome] = outcomes[outcome] + 1
        else
            outcomes[outcome] = 1
        end
    end
end


function reset_outcomes()
    global outcomes = Dict{Tuple{String, String}, Int16}()
end