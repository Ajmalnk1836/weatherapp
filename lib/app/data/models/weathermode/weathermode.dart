import 'package:json_annotation/json_annotation.dart';

import 'clouds.dart';
import 'coord.dart';
import 'main.dart';
import 'sys.dart';
import 'weather.dart';
import 'wind.dart';

part 'weathermode.g.dart';

@JsonSerializable()
class Weathermode {
	Coord? coord;
	List<Weather>? weather;
	String? base;
	Main? main;
	int? visibility;
	Wind? wind;
	Clouds? clouds;
	int? dt;
	Sys? sys;
	int? timezone;
	int? id;
	String? name;
	int? cod;

	Weathermode({
		this.coord, 
		this.weather, 
		this.base, 
		this.main, 
		this.visibility, 
		this.wind, 
		this.clouds, 
		this.dt, 
		this.sys, 
		this.timezone, 
		this.id, 
		this.name, 
		this.cod, 
	});

	factory Weathermode.fromJson(Map<String, dynamic> json) {
		return _$WeathermodeFromJson(json);
	}

	Map<String, dynamic> toJson() => _$WeathermodeToJson(this);
}
