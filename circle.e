note
	description: "Summary description for {CIRCLE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
    CIRCLE

inherit
	FIGURE

create
    make

feature
    r: REAL

feature
    make(rn: REAL)
    	require
    		positive: rn > 0
        do
            r := rn
        end
    perimeter: REAL
    	do
			Result := r*2*3.14
    	end
    area: REAL
    	do
			Result := r*r*3.14
    	end

end
