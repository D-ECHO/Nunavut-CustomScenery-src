cd groundnet
for i in ../data/airports/*.dat; do cp $i .; rm apt.dat; mv *.dat apt.dat; python aptdat2sqlite.py; python sqlite2xml.py; done
cp -r Airports ../output/
