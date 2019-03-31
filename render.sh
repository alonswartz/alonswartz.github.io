#!/bin/bash -e

fatal() { echo "fatal: $@" 1>&2; exit 1; }

R="src/render.py"
PROJECTS_SRC="src/projects"
PROJECTS_DST="src/templates/projects"

[ -e $R ] || fatal "does not exist: $R"

render() {
    name=$1
    if [ "$name" == "home" ]; then
        for f in $(ls $PROJECTS_SRC/*); do
            mkdir -p $PROJECTS_DST
            echo "rendering $PROJECTS_DST/$(basename $f).tpl"
            $R partial $f > $PROJECTS_DST/$(basename $f).tpl
        done
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

