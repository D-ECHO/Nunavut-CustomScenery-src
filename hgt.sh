alias hgtchop=/home/delta/Programme/flightgear/new_fgmeta/install/terragear/bin/hgtchop
alias terrafit=/home/delta/Programme/flightgear/new_fgmeta/install/terragear/bin/terrafit
if [ -z $1 ]
then
	for f in ${PWD}/data/SRTM-3/*.hgt; do hgtchop 3 "${f}" "${PWD}/work/SRTM-3"; done
	terrafit work/SRTM-3 --threads 4  -e 1 -x 25000
else
	for f in ${PWD}/data/SRTM-3/$i/*.hgt; do hgtchop 3 "${f}" "${PWD}/work/SRTM-3"; done
	terrafit work/SRTM-3 --threads 4  -e 1 -x 25000
fi
