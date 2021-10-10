clean:
	find ./test -name "*.hack" -type f -delete
	rm -f Assembler


build: clean
	go build -o Assembler
	chmod +x Assembler

run:
	go run main.go

add: build
	./Assembler ./test/add/Add.asm

max: build
	./Assembler ./test/max/MaxL.asm
	./Assembler ./test/max/Max.asm

pong: build
	./Assembler ./test/pong/PongL.asm
	./Assembler ./test/pong/Pong.asm

rect: build
	./Assembler ./test/rect/RectL.asm
	./Assembler ./test/rect/Rect.asm

all: add max pong rect

