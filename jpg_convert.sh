DIR=$1


pushd $DIR

mkdir webp
rm webp/*.jpg
for f in $(ls *.png); do
	echo $f
	convert $f -resize x1440 -filter triangle -quality 80% webp/$(echo $f | sed 's/.png//').webp
done

popd
