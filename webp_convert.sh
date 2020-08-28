DIR=$1
pushd $DIR
mkdir webp
rm webp/*.webp
PG=0
for f in $(ls *.png); do
	echo $f
	mv $f $PG.png
	convert $PG.png -resize x1440 -filter triangle -quality 80% webp/$(echo $PG.png | sed 's/.png//').webp
	let PG=PG+1
done
popd
