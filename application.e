


note
    description : "root class of the application"
    date        : "$Date$"
    revision    : "$Revision$"
class
    APPLICATION

inherit
    ARGUMENTS_32

create
    make

feature {NONE}
	print_figure(Figure: FIGURE)
		require
			not_null: Figure /= Void
		do
            print("Perimiter: ")
            io.put_real(Figure.perimeter)
            print("%NArea: ")
            io.put_real(Figure.area)
            print("%N")
		end

feature {NONE} -- Initialization

    make
        local
        	a, b: REAL
        	c: REAL_32
        	Rect: RECTANGLE
        	Circ: CIRCLE
        	Tri: TRIANGLE
        do
            print ("Hello Eiffel World from Sergey & Team!%N")
            print ("Write EDGES LEN: a(REAL) and b(REAL) of RECTANGLE!%N")
            io.read_real()
            a := io.last_real
            io.read_real()
            b := io.last_real
            create Rect.make(a, b)
            print_figure(Rect)


            print ("Write RADIUS: r(REAL) of CIRCLE!%N")
            io.read_real()
            a := io.last_real
            create Circ.make(a)
            print_figure(Circ)


            print ("Write EDGES LEN: a(REAL) and b(REAL) and c(REAL) of TRIANGLE!%N")
            io.read_real()
            a := io.last_real
            io.read_real()
            b := io.last_real
            io.read_real()
            c := io.last_real_32
            create Tri.make(a, b, c)
            print_figure(Tri)
        end

end

