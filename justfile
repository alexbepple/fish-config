rebuild: clean build test

clean:
    git clean -Xd -f > /dev/null

build:
    fish -c 'fisher add ./plugins/*'

test:
    fish -c 'fishtape **.test.fish | tap-colorize'
