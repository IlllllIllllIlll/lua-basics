-- Test program, develop basic syntax understanding

-- Default values
name=""
ynPrompt="x"
have_key=false
i = 0
nameBool = false
selConfirmed = false


-- Inventory of wares for the vagrant
inv = {"book", "sword",  "pen",  "armor"}

-- Start here:
print("What is your name?")
name=io.read() -- input

-- So long as condition is not met (ie, input is NOT Gucci) 
while (name ~= "Gucci"  and i <4) do 
  print("Hello " .. name .. ", I don't recognize you. Have you another name?")
  if (i<4) then
	-- Counter to measure co-operativeness
	name=io.read()
	i = i+1
  end
end

-- Once expected input is entered, proceed to next while loop
while (name=="Gucci" and have_key==false) do
	nameBool = true; -- We've confirmed their name, no need for evals
	print("Hello " .. name .. " we've been expecting you, have you a password")
	pass=io.read()
	if pass=="plies123" then
		have_key = true -- We've confirmed they're keyed
	end
end 

while (selConfirmed ~= true) do
	print("Selection made.")
	-- Only getting your name right in the first instance will
	-- grant you this menu

	if (have_key and nameBool and i==0) then 
		while(ynPrompt ~= "y") do
			--  Keep prompting until yes.
			print("Pick a number between 1-4")
			selection=io.read()
			print("You've picked " .. inv[tonumber(selection)] 
			.. ". y/n")
			ynPrompt=io.read()
		end
	end
	if ((i>3 or have_key)  )  then
		break
	end
end

-- Only gets here if all previous conditions are met.
-- Discriminates based on co-operation level (of name).
if (have_key and nameBool and i>0) then
  	print("Thank you " .. name .. " for entering the password " 
	.. pass .. ". Take also this " .. inv[tonumber(i)] .. ".")
elseif(have_key and nameBool and i==0) then   
  	print("You've been very co-operative " .. name .. ", password " 
	.. pass .. ". You've chosen to take with you this " 
	.. inv[tonumber(selection)])
else
	print ("You may not proceed. Leave here. Take with you this " .. 
	inv[i] .. ".")

end





