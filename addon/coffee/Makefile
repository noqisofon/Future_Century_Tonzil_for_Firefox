


src0 = ./src/main.coffee
src1 = ./data/show.coffee

js0  = ../lib/main.js
js1 = ../data/show.js

jslist = $(js0) $(js1)

all: $(jslist)

$(js0): $(src0)
	coffee -o ../lib -bc $^

$(js1): $(src1)
	coffee -o ../data -bc $^
