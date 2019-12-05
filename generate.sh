for lyfile in kotta.ly satb.ly
do
    lilypond -ddelete-intermediate-files -dno-point-and-click --pdf "${lyfile}"
done

rm release/*.midi
rm release/*.pdf
mv satb.midi release/satb-zongora.midi
mv satb.pdf release/kotta.pdf
mv kotta.pdf release/kiskotta.pdf

