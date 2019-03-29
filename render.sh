#!/bin/bash -e

fatal() { echo "fatal: $@" 1>&2; exit 1; }

R="src/render.py"
[ -e $R ] || fatal "does not exist: $R"

render() {
    name=$1
    if [ "$name" == "home" ]; then
        echo "rendering ./index.html"
        $R page $name > ./index.html

    elif [ "$name" == "books" ]; then
        echo "rendering $name/index.html"
        $R page $name > $name/index.html

    elif [ "$name" == "blackhawk" ]; then
        echo "rendering keyboards/$name/index.html"
        $R page $name > keyboards/$name/index.html
    fi
}

case "$1" in
    home)       render home ;;
    books)      render books ;;
    blackhawk)  render blackhawk ;;
    *)          render blackhawk; render books; render home;;
esac

