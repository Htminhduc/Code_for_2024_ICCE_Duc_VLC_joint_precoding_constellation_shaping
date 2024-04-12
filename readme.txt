There is only one code to run. However, for simplicity and to save time tuning/adding/removing parameters, I divided the code into 4 versions. The result format of the code will be the same. It will be a tuple of arrays; each array is responsible for a certain optical power of an LED at the transmitter's side. The structure of the array will be [[precoding, probabilistic shaping], secrecy capacity (negative if infeasible), BER, optical power] or [[precoding], secrecy capacity (negative if infeasible), BER, optical power] for the ONLYprecoding versions

For figure 2 in the paper, run 4 versions of fullprob_precode and ONLYprecode, with both 8 and 16PAM.
For figure 3 in the paper, just don't run the ONLYprecode versions.
To produce these figures, I have included  Matlab codes named after the corresponding figures. For this to work, copy the result and paste it sequentially to the Matlab. I know this is dumb, but currently, I cannot export Ray's results without clumping them up with power (the time pressure and the fact that I am not adept in Ray didn't help). 

For faster convergence, run the seeded versions. These versions initialized the population with decent solutions for some powers in exchange for longer stagnation iterations.

We consider BER and Secrecy Capacity in every version in this git. 

For parameter:
cons_size is the M in M-PAM
Min_power, Max_power: Range of optical power consider for 1 LEDs
Numpoint: number of points

population_size: number of the initial population, could increase for exploration

cognitive_coefficient: favor local optimize
social_coefficient: favor global optimize
generation: number of max round
max_stagnation: max stagnation, larger meant harder for the code to conclude local optima, shorter meant faster result

