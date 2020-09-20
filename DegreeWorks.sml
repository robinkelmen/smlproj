val classList = ["Pysics","Robotics","AutoCAD", "Building", "Programming1", "Calculus1", "Calculus2", "DMFP", "Engineering101","Circuitry", "Thermodynamics", "Chemistry", "Physics2"];
val ChemEngineer = ["Physics", "Calculus", "Enginnering101", "Chemistry", "Thermodynamics"];
val MechanicalEngineer = ["Physics","Robotics", "Calculus1", "Calculus2", "Engineering101", "Physics2"];
val CivilEngineer = ["Building", "Physics", "AutoCAD", "Physics2", "Calculus1", "Calculus2"];

val MajorList = [ChemEngineer, MechanicalEngineer, CivilEngineer];


fun contains (x, []) = false
	|contains(x, y::rest) = if x = y then true else contains(x,rest);


fun classCounter(yy::yrest,xx::xrest) = 
	let fun countHelp(yy, []) = 0
		|countHelp(yy,xx::xrest) = if yy = xx then 1 + countHelp(yy,xrest) else countHelp(yy,xrest)

	in 
		countHelp(yy,xx::xrest)
	end;
fun EnterMajor (y,xx::rest) =
	let fun checker(y) = if contains(y, MajorList) then  else "Invalid"
	
	in 
		checker(y)
	end;
	
	






