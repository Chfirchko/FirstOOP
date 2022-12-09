note
	description: "Summary description for {RECTANGLE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
    RECTANGLE

inherit
	FIGURE

create
    make

feature
    a, b: REAL

feature {ANY}
    make(an: REAL; bn: REAL)
    	require
    		positive_size: an > 0 and bn > 0
        do
            a := an
            b := bn
        end
    perimeter: REAL
    	do
			Result := 2*(a+b)
    	end
    area: REAL
    	do
			Result := a * b
    	end

end
