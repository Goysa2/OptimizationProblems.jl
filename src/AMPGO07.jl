# A one dimensional optimization problem
#
# Problem 7 in
# http://infinity77.net/global_optimization/test_functions_1d.html#d-test-functions
# Andrea Gavana
#
# S. Goyette, Sherbrooke 2016/2017

export AMPGO07

function AMPGO07(n::Int64=1)
   nlp = Model()

   @variable(nlp, x, start=2.7)

   @NLobjective(
    nlp,
    Min,
    #ifelse(x<=0.0,Inf,x)
    ifelse(x<=0.0,Inf,sin(x)+sin((10/3)*x)+log(abs(x))-0.84*x+3)
   )



   return nlp
end