FC = gfortran
EXE = euler
FFLAGS = -fdefault-real-8 -fdefault-double-8
OBJECTS = euler.o euler_func.o

.PHONY: clean

$(EXE): $(OBJECTS)
	$(FC) $(FFLAGS) $(OBJECTS) -o $(EXE)

%.o : %.f90
	$(FC) $(FFLAGS) -c $<

euler.o: euler_func.o

clean:
	rm -f $(OBJECTS) $(EXE) *.mod

