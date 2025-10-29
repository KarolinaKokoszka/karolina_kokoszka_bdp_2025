-- 3. nowa tabela ‘streets_reprojected’ - zawiera dane z tabeli T2019_KAR_STREETS (streets2019) przetransformowane do układu współrzędnych DHDN.Berlin/Cassini
SELECT 
	gid,
	link_id,
	st_name,
	ref_in_id,
	nref_in_id,
	func_class,
	speed_cat,
	fr_speed_l,
	to_speed_l,
	dir_travel,
	ST_Transform(geom, 3068) AS geom 
INTO
	streets_reprojected
FROM 
	streets2019;
