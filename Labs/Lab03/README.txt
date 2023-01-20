Lab 03 

For (Rozheen Nersisyan Malhami)

C323 2023-01-19



1) I was able to create a guessing game that checks the contend showing the result

2) Nothing 	

3) Issues I ran into were my .swift file not running properly on my terminal. ( resolved )

"In the Swift script seen at Lab 03, why does unwrapping not succeed,
if the user types <control>-D when providing input to the readLine() function?"

	Unwrapping is a verifier if the value of the object is nil following the check only if the value is not nil. Since the code is technically empty to begin with this causes the unwrapping to not succeed.

	As far as turning an Optional into a non-Optional I would say going with the type wanted followed by ! (String!)
