note
	description: "Summary description for {TRIANGLE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TRIANGLE

inherit
	FIGURE
	SINGLE_MATH

create
	make

feature
	a: REAL
	b: REAL
	c: REAL

feature
    make(an: REAL; bn: REAL; cn: REAL)
    	require
    		positive_size: an > 0 and bn > 0 and cn > 0
    		triangle_rule_p1: an+bn > cn
    		triangle_rule_p2: an+cn > bn
    		triangle_rule_p3: bn+cn > an
        do
            a := an
            b := bn
            c := cn
        end
    perimeter: REAL
    	do
			Result := a+b+c
    	end
    area: REAL
    	local
    		p: REAL
    	do
    		p := (a+b+c)/2
			Result := sqrt(p*(p-a)*(p-b)*(p-c))
    	end

end
