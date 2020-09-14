mkdir lcc_water lcc_barrencover lcc_glacier lcc_rock lcc_developed lcc_heath lcc_scrub lcc_wetland lcc_herb lcc_grassland lcc_mixedcrop lcc_drycrop lcc_pasture lcc_deciduousforest lcc_evergreenforest lcc_mixedforest
for i in *.shp; do
	ogr2ogr -f "ESRI Shapefile"  -where "COVTYPE = '20'" lcc_water/lcc_water_$i.shp $i
	ogr2ogr -f "ESRI Shapefile"  -where "COVTYPE = '30'" lcc_barrencover/lcc_barrencover_$i.shp $i
	ogr2ogr -f "ESRI Shapefile"  -where "COVTYPE = '31'" lcc_glacier/lcc_glacier_$i.shp $i
	ogr2ogr -f "ESRI Shapefile"  -where "COVTYPE = '32'" lcc_rock/lcc_rock_$i.shp $i
	ogr2ogr -f "ESRI Shapefile"  -where "COVTYPE = '33'" lcc_barrencover/lcc_exposed_$i.shp $i
	ogr2ogr -f "ESRI Shapefile"  -where "COVTYPE = '34'" lcc_developed/lcc_developed_$i.shp $i
	ogr2ogr -f "ESRI Shapefile"  -where "COVTYPE = '35' OR COVTYPE = '36' OR COVTYPE = '37'" lcc_barrencover/lcc_sparseveg_$i.shp $i
	ogr2ogr -f "ESRI Shapefile"  -where "COVTYPE = '40'" lcc_heath/lcc_bryoids_$i.shp $i
	ogr2ogr -f "ESRI Shapefile"  -where "COVTYPE BETWEEN '50' AND '53'" lcc_scrub/lcc_scrub_$i.shp $i
	ogr2ogr -f "ESRI Shapefile"  -where "COVTYPE BETWEEN '80' AND '82'" lcc_wetland/wetland_$i.shp $i
	ogr2ogr -f "ESRI Shapefile"  -where "COVTYPE = '83' OR COVTYPE BETWEEN '100' AND '104'" lcc_herb/lcc_herb_$i.shp $i
	ogr2ogr -f "ESRI Shapefile"  -where "COVTYPE = '110'" lcc_grassland/lcc_grassland_$i.shp $i
	ogr2ogr -f "ESRI Shapefile"  -where "COVTYPE = '120'" lcc_mixedcrop/lcc_mixedcrop_$i.shp $i
	ogr2ogr -f "ESRI Shapefile"  -where "COVTYPE = '121'" lcc_drycrop/lcc_drycrop_$i.shp $i
	ogr2ogr -f "ESRI Shapefile"  -where "COVTYPE = '122'" lcc_pasture/lcc_pasture_$i.shp $i
	ogr2ogr -f "ESRI Shapefile"  -where "COVTYPE = '200' OR COVTYPE BETWEEN '220' AND '223'" lcc_deciduousforest/lcc_deciduousforest_$i.shp $i
	ogr2ogr -f "ESRI Shapefile"  -where "COVTYPE BETWEEN '210' AND '213'"  lcc_evergreenforest/lcc_evergreenforest_$i.shp $i
	ogr2ogr -f "ESRI Shapefile"  -where "COVTYPE BETWEEN '230' AND '233'"  lcc_mixedforest/lcc_mixedforest_$i.shp $i
done
