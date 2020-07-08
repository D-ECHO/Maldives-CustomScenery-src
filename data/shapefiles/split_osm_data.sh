mkdir osm_motorway osm_trunk osm_primary osm_secondary osm_tertiary osm_stream osm_river osm_railway osm_industrial osm_town osm_forest osm_golfcourse osm_commercial osm_sand osm_construction osm_lake osm_meadow osm_scrub osm_landmass osm_dump osm_grassland osm_lava osm_rock osm_airport osm_port osm_park osm_orchard
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'motorway' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_motorway/osm_motorway.shp lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'trunk' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_trunk/osm_trunk.shp lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'motorway_link' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_primary/osm_motorwaylink.shp lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'trunk_link' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_primary/osm_trunklink.shp lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'primary' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_primary/osm_primary.shp lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'primarylink' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_secondary/osm_primary_link.shp lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'secondary' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_secondary/osm_secondary.shp lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'secondary_link' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_tertiary/osm_secondarylink.shp lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'tertiary' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_tertiary/osm_tertiary.shp lines.shp


ogr2ogr -f "ESRI Shapefile"  -where "waterway = 'stream'" osm_stream/osm_stream.shp lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "waterway = 'river'" osm_river/osm_river.shp lines.shp

ogr2ogr -f "ESRI Shapefile"  -where "other_tags LIKE '%railway%'" osm_railway/osm_railway.shp lines.shp

ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'industrial'" osm_industrial/osm_industrial.shp download/gis_osm_landuse_a_free_1.shp
ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'commercial'" osm_commercial/osm_commercial.shp download/gis_osm_landuse_a_free_1.shp
ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'construction'" osm_construction/osm_costruction.shp download/gis_osm_landuse_a_free_1.shp
ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'port'" osm_port/osm_port.shp download/gis_osm_landuse_a_free_1.shp

ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'park'" osm_park/osm_park.shp download/gis_osm_landuse_a_free_1.shp
ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'orchard'" osm_orchard/osm_orchard.shp download/gis_osm_landuse_a_free_1.shp
ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'scrub'" osm_scrub/osm_scrub.shp download/gis_osm_landuse_a_free_1.shp

ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'residential'" osm_town/osm_town.shp download/gis_osm_landuse_a_free_1.shp
ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'forest'" osm_forest/osm_forest.shp download/gis_osm_landuse_a_free_1.shp
#ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'wood'" osm_forest/osm_wood.shp download/gis_osm_natural_a_free_1.shp

#ogr2ogr -f "ESRI Shapefile"  -where "leisure = 'golf_course'" osm_golfcourse/osm_golfcourse.shp polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "fclass = 'beach'" osm_sand/osm_beach.shp download/gis_osm_natural_a_free_1.shp
#ogr2ogr -f "ESRI Shapefile"  -where "natural = 'water'" osm_lake/osm_lake.shp polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'atoll'" osm_lake/osm_atoll.shp polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'meadow'" osm_meadow/osm_meadow.shp polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'landfill'" osm_dump/osm_landfill.shp polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "natural = 'bare_rock'" osm_rock/osm_barerock.shp polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "natural = 'grassland'" osm_grassland/osm_grassland.shp polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "natural = 'lava'" osm_lava/osm_lava.shp polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "aeroway = 'aerodrome'" osm_airport/osm_airport.shp polygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "natural = 'coastline' OR place = 'island' OR place = 'islet'" osm_landmass/osm_landmass.shp polygons.shp
