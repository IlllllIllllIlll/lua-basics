-- Test program, develop basic syntax understanding

-- Default values
name=""
have_key=false;
i = 0;

-- Start here:
print("What is your name?")
name=io.read() -- input

-- So long as condition is not met (ie, input is NOT Gucci) 
while (name ~= "Gucci"  and i <4) do 
  print("Hello " .. name .. ", I don't recognize you. Have you another name?")
  if (i<4) then
	name=io.read()
	i = i+1
  end
end

-- Once expected input is entered, proceed to next while loop
while (name=="Gucci" and have_key==false) do
  print("Hello " .. name .. ", we've been expecting you, have you a password")
  pass=io.read()
  if pass=="plies123" then
    have_key = true
  end
end 

-- Only gets here if all previous conditions are met. Redundant if statement here, but that's alright.
if (have_key and name == "Gucci") then
  print("Thank you " .. name .. " for entering the password " .. pass)
end

if (i>3) then 
	print ("You may not proceed.")
end
