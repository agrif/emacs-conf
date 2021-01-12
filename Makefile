.PHONY : all clean

FILES=init.el boot/*.el boot/extern/ferm-mode/*.el

all :
	emacs -batch -f batch-byte-compile ${FILES}

clean :
	rm -f ${FILES:%.el=%.elc}
