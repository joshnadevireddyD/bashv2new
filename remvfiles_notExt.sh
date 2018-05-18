for x in *; do [-x $x -a -f $x.ext] && echo $x; done | xargs rm

