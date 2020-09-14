mkdir osm_motorway osm_trunk osm_primary osm_secondary osm_tertiary osm_stream osm_river osm_railway osm_industrial
for i in *-free.shp/; do
	ogr2ogr -f "ESRI Shapefile"  -where "tunnel = 'F' AND fclass = 'motorway'" osm_motorway/osm_motorway_`echo $i | cut -f 1 -d /`.shp $i/gis_osm_roads_free_1.shp
	ogr2ogr -f "ESRI Shapefile"  -where "tunnel = 'F' AND fclass = 'trunk'" osm_trunk/osm_trunk_`echo $i | cut -f 1 -d /`.shp $i/gis_osm_roads_free_1.shp
	ogr2ogr -f "ESRI Shapefile"  -where "tunnel = 'F' AND fclass = 'motorway_link'" osm_primary/osm_motorwaylink_`echo $i | cut -f 1 -d /`.shp $i/gis_osm_roads_free_1.shp
	ogr2ogr -f "ESRI Shapefile"  -where "tunnel = 'F' AND fclass = 'trunk_link'" osm_primary/osm_trunklink_`echo $i | cut -f 1 -d /`.shp $i/gis_osm_roads_free_1.shp
	ogr2ogr -f "ESRI Shapefile"  -where "tunnel = 'F' AND fclass = 'primary'" osm_primary/osm_primary_`echo $i | cut -f 1 -d /`.shp $i/gis_osm_roads_free_1.shp
	ogr2ogr -f "ESRI Shapefile"  -where "tunnel = 'F' AND fclass = 'primarylink'" osm_secondary/osm_primary_link_`echo $i | cut -f 1 -d /`.shp $i/gis_osm_roads_free_1.shp
	ogr2ogr -f "ESRI Shapefile"  -where "tunnel = 'F' AND fclass = 'secondary'" osm_secondary/osm_secondary_`echo $i | cut -f 1 -d /`.shp $i/gis_osm_roads_free_1.shp
	ogr2ogr -f "ESRI Shapefile"  -where "tunnel = 'F' AND fclass = 'secondary_link'" osm_tertiary/osm_secondarylink_`echo $i | cut -f 1 -d /`.shp $i/gis_osm_roads_free_1.shp
	ogr2ogr -f "ESRI Shapefile"  -where "tunnel = 'F' AND fclass = 'tertiary'" osm_tertiary/osm_tertiary_`echo $i | cut -f 1 -d /`.shp $i/gis_osm_roads_free_1.shp


	ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'stream'" osm_stream/osm_stream_`echo $i | cut -f 1 -d /`.shp $i/gis_osm_waterways_free_1.shp
	ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'river'" osm_river/osm_river_`echo $i | cut -f 1 -d /`.shp $i/gis_osm_waterways_free_1.shp

	ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'rail'" osm_railway/osm_railway_`echo $i | cut -f 1 -d /`.shp $i/gis_osm_railways_free_1.shp

	ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'industrial'" osm_industrial/osm_industrial_`echo $i | cut -f 1 -d /`.shp $i/gis_osm_landuse_a_free_1.shp
done
