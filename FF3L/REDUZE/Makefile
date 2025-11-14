REDUZE=reduze

all: setup reds laporta

setup:
	${REDUZE} jobs_setup.yaml

reds:
	${REDUZE} jobs_reductions.yaml

laporta: 
	${REDUZE} jobs_laporta_red.yaml
	${REDUZE} jobs_getMI.yaml
	mv myintegrals.sol.mma myintegrals.sol.m
	mv masters.mma masters.m
	rm myintegrals.sol myintegrals.tmp.masters

clean:
	rm -rf graphs log *mma* *sol* *tmp* reductions sectormappings tmp
