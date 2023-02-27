# Makefile

MODULE_big = lspgist
OBJS = \
	spgdoinsert.o \
	spginsert.o \
	spgkdtreeproc.o \
	spgproc.o \
	spgquadtreeproc.o \
	spgscan.o \
	spgtextproc.o \
	spgutils.o \
	spgvacuum.o \
	spgvalidate.o \
	spgxlog.o

EXTENSION = lspgist
DATA = lspgist--1.0.sql
PGFILEDESC = "SP-GiST access method"

HEADERS = lspgist.h

REGRESS = lspgist

TAP_TESTS = 1

LDFLAGS_SL += $(filter -lm, $(LIBS))

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)