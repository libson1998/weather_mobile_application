import 'dart:convert';
/// lat : 9.93
/// lon : 76.2637
/// timezone : "Asia/Kolkata"
/// timezone_offset : 19800
/// current : {"dt":1717308098,"sunrise":1717288384,"sunset":1717333991,"temp":305.14,"feels_like":312.14,"pressure":1009,"humidity":83,"dew_point":301.89,"uvi":9.91,"clouds":100,"visibility":10000,"wind_speed":4.53,"wind_deg":318,"wind_gust":5.22,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}]}
/// minutely : [{"dt":1717308120,"precipitation":0},{"dt":1717308180,"precipitation":0},{"dt":1717308240,"precipitation":0},{"dt":1717308300,"precipitation":0},{"dt":1717308360,"precipitation":0},{"dt":1717308420,"precipitation":0},{"dt":1717308480,"precipitation":0},{"dt":1717308540,"precipitation":0},{"dt":1717308600,"precipitation":0},{"dt":1717308660,"precipitation":0},{"dt":1717308720,"precipitation":0},{"dt":1717308780,"precipitation":0},{"dt":1717308840,"precipitation":0},{"dt":1717308900,"precipitation":0},{"dt":1717308960,"precipitation":0},{"dt":1717309020,"precipitation":0},{"dt":1717309080,"precipitation":0},{"dt":1717309140,"precipitation":0},{"dt":1717309200,"precipitation":0},{"dt":1717309260,"precipitation":0},{"dt":1717309320,"precipitation":0},{"dt":1717309380,"precipitation":0},{"dt":1717309440,"precipitation":0},{"dt":1717309500,"precipitation":0},{"dt":1717309560,"precipitation":0},{"dt":1717309620,"precipitation":0},{"dt":1717309680,"precipitation":0},{"dt":1717309740,"precipitation":0},{"dt":1717309800,"precipitation":0},{"dt":1717309860,"precipitation":0},{"dt":1717309920,"precipitation":0},{"dt":1717309980,"precipitation":0},{"dt":1717310040,"precipitation":0},{"dt":1717310100,"precipitation":0},{"dt":1717310160,"precipitation":0},{"dt":1717310220,"precipitation":0},{"dt":1717310280,"precipitation":0},{"dt":1717310340,"precipitation":0},{"dt":1717310400,"precipitation":0},{"dt":1717310460,"precipitation":0},{"dt":1717310520,"precipitation":0},{"dt":1717310580,"precipitation":0},{"dt":1717310640,"precipitation":0},{"dt":1717310700,"precipitation":0},{"dt":1717310760,"precipitation":0},{"dt":1717310820,"precipitation":0},{"dt":1717310880,"precipitation":0},{"dt":1717310940,"precipitation":0},{"dt":1717311000,"precipitation":0},{"dt":1717311060,"precipitation":0},{"dt":1717311120,"precipitation":0},{"dt":1717311180,"precipitation":0},{"dt":1717311240,"precipitation":0},{"dt":1717311300,"precipitation":0},{"dt":1717311360,"precipitation":0},{"dt":1717311420,"precipitation":0},{"dt":1717311480,"precipitation":0},{"dt":1717311540,"precipitation":0},{"dt":1717311600,"precipitation":0},{"dt":1717311660,"precipitation":0}]
/// hourly : [{"dt":1717308000,"temp":305.14,"feels_like":312.14,"pressure":1009,"humidity":83,"dew_point":301.89,"uvi":9.91,"clouds":100,"visibility":10000,"wind_speed":4.53,"wind_deg":318,"wind_gust":5.22,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0.8},{"dt":1717311600,"temp":304.48,"feels_like":311.48,"pressure":1009,"humidity":83,"dew_point":301.24,"uvi":6.77,"clouds":100,"visibility":10000,"wind_speed":5.36,"wind_deg":309,"wind_gust":6.1,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0.65},{"dt":1717315200,"temp":303.84,"feels_like":310.84,"pressure":1009,"humidity":82,"dew_point":300.41,"uvi":5.51,"clouds":100,"visibility":10000,"wind_speed":6,"wind_deg":304,"wind_gust":6.44,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0.65},{"dt":1717318800,"temp":303.2,"feels_like":310.2,"pressure":1008,"humidity":82,"dew_point":299.79,"uvi":4.11,"clouds":100,"visibility":10000,"wind_speed":6.17,"wind_deg":298,"wind_gust":6.65,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"pop":0.58,"rain":{"1h":0.21}},{"dt":1717322400,"temp":302.44,"feels_like":309.19,"pressure":1007,"humidity":82,"dew_point":299.05,"uvi":3.55,"clouds":100,"visibility":10000,"wind_speed":6.32,"wind_deg":292,"wind_gust":6.62,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"pop":0.61,"rain":{"1h":0.44}},{"dt":1717326000,"temp":301.38,"feels_like":306.35,"pressure":1007,"humidity":83,"dew_point":298.14,"uvi":1.36,"clouds":100,"visibility":10000,"wind_speed":5.66,"wind_deg":291,"wind_gust":6.5,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"pop":0.59,"rain":{"1h":0.2}},{"dt":1717329600,"temp":301.37,"feels_like":306.15,"pressure":1007,"humidity":82,"dew_point":298.13,"uvi":0.42,"clouds":100,"visibility":10000,"wind_speed":5.29,"wind_deg":291,"wind_gust":6.51,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"pop":0.62,"rain":{"1h":0.5}},{"dt":1717333200,"temp":301.39,"feels_like":306.38,"pressure":1008,"humidity":83,"dew_point":298.16,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":4.79,"wind_deg":292,"wind_gust":6.21,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0.43},{"dt":1717336800,"temp":301.21,"feels_like":306.05,"pressure":1009,"humidity":84,"dew_point":298.17,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":4.1,"wind_deg":291,"wind_gust":5.87,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"pop":0.72,"rain":{"1h":0.61}},{"dt":1717340400,"temp":301.12,"feels_like":305.64,"pressure":1010,"humidity":83,"dew_point":298.04,"uvi":0,"clouds":100,"visibility":7193,"wind_speed":3.96,"wind_deg":276,"wind_gust":5.19,"weather":[{"id":501,"main":"Rain","description":"moderate rain","icon":"10n"}],"pop":1,"rain":{"1h":1.87}},{"dt":1717344000,"temp":300.8,"feels_like":304.94,"pressure":1010,"humidity":84,"dew_point":297.88,"uvi":0,"clouds":100,"visibility":6895,"wind_speed":3.73,"wind_deg":264,"wind_gust":4.99,"weather":[{"id":501,"main":"Rain","description":"moderate rain","icon":"10n"}],"pop":1,"rain":{"1h":2.35}},{"dt":1717347600,"temp":300.52,"feels_like":304.33,"pressure":1010,"humidity":85,"dew_point":297.73,"uvi":0,"clouds":99,"visibility":4577,"wind_speed":3.07,"wind_deg":254,"wind_gust":3.39,"weather":[{"id":501,"main":"Rain","description":"moderate rain","icon":"10n"}],"pop":1,"rain":{"1h":2.29}},{"dt":1717351200,"temp":300.58,"feels_like":304.24,"pressure":1010,"humidity":83,"dew_point":297.5,"uvi":0,"clouds":99,"visibility":10000,"wind_speed":2.27,"wind_deg":288,"wind_gust":2.72,"weather":[{"id":501,"main":"Rain","description":"moderate rain","icon":"10n"}],"pop":1,"rain":{"1h":2.29}},{"dt":1717354800,"temp":300.85,"feels_like":304.65,"pressure":1009,"humidity":81,"dew_point":297.28,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":2.87,"wind_deg":301,"wind_gust":3.43,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"pop":0.77,"rain":{"1h":0.31}},{"dt":1717358400,"temp":300.77,"feels_like":304.45,"pressure":1008,"humidity":81,"dew_point":297.23,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":2.76,"wind_deg":298,"wind_gust":3.2,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0.67},{"dt":1717362000,"temp":300.64,"feels_like":304.13,"pressure":1008,"humidity":81,"dew_point":297.1,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":2.03,"wind_deg":326,"wind_gust":2.41,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0.58},{"dt":1717365600,"temp":300.51,"feels_like":303.94,"pressure":1008,"humidity":82,"dew_point":297.14,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":2.34,"wind_deg":329,"wind_gust":2.91,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0.5},{"dt":1717369200,"temp":300.46,"feels_like":303.82,"pressure":1008,"humidity":82,"dew_point":297.11,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":2.04,"wind_deg":338,"wind_gust":2.76,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0.44},{"dt":1717372800,"temp":300.23,"feels_like":303.37,"pressure":1008,"humidity":83,"dew_point":297.08,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":1.39,"wind_deg":353,"wind_gust":2.13,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"pop":0.43,"rain":{"1h":0.11}},{"dt":1717376400,"temp":300.14,"feels_like":303.25,"pressure":1009,"humidity":84,"dew_point":297.18,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":1.74,"wind_deg":15,"wind_gust":2.35,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0.32},{"dt":1717380000,"temp":300.36,"feels_like":303.69,"pressure":1009,"humidity":83,"dew_point":297.22,"uvi":0.68,"clouds":100,"visibility":10000,"wind_speed":1.21,"wind_deg":6,"wind_gust":1.73,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0.1},{"dt":1717383600,"temp":300.9,"feels_like":304.77,"pressure":1010,"humidity":81,"dew_point":297.35,"uvi":2.27,"clouds":100,"visibility":10000,"wind_speed":0.46,"wind_deg":344,"wind_gust":1.25,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0},{"dt":1717387200,"temp":301.32,"feels_like":305.51,"pressure":1010,"humidity":79,"dew_point":297.32,"uvi":4.97,"clouds":100,"visibility":10000,"wind_speed":0.37,"wind_deg":259,"wind_gust":1.3,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0},{"dt":1717390800,"temp":301.85,"feels_like":306.3,"pressure":1011,"humidity":76,"dew_point":297.15,"uvi":7.73,"clouds":100,"visibility":10000,"wind_speed":1.31,"wind_deg":290,"wind_gust":1.95,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"pop":0.53,"rain":{"1h":0.24}},{"dt":1717394400,"temp":302.19,"feels_like":306.94,"pressure":1010,"humidity":75,"dew_point":297.33,"uvi":9.56,"clouds":100,"visibility":10000,"wind_speed":2.65,"wind_deg":278,"wind_gust":3.02,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"pop":0.64,"rain":{"1h":0.22}},{"dt":1717398000,"temp":302.33,"feels_like":307.29,"pressure":1009,"humidity":75,"dew_point":297.48,"uvi":10.86,"clouds":79,"visibility":10000,"wind_speed":3.96,"wind_deg":289,"wind_gust":4.41,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"pop":0.85,"rain":{"1h":0.34}},{"dt":1717401600,"temp":302.3,"feels_like":307.22,"pressure":1009,"humidity":75,"dew_point":297.5,"uvi":10.21,"clouds":81,"visibility":10000,"wind_speed":4.19,"wind_deg":277,"wind_gust":4.56,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"pop":0.77,"rain":{"1h":0.2}},{"dt":1717405200,"temp":302.17,"feels_like":307.1,"pressure":1008,"humidity":76,"dew_point":297.48,"uvi":6.98,"clouds":85,"visibility":10000,"wind_speed":4.83,"wind_deg":278,"wind_gust":5.2,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"pop":0.82,"rain":{"1h":0.17}},{"dt":1717408800,"temp":302.05,"feels_like":306.8,"pressure":1008,"humidity":76,"dew_point":297.34,"uvi":3.91,"clouds":89,"visibility":10000,"wind_speed":4.41,"wind_deg":281,"wind_gust":4.85,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"pop":0.82,"rain":{"1h":0.22}},{"dt":1717412400,"temp":302.11,"feels_like":306.75,"pressure":1008,"humidity":75,"dew_point":297.24,"uvi":1.62,"clouds":91,"visibility":10000,"wind_speed":4.21,"wind_deg":280,"wind_gust":4.63,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"pop":0.93,"rain":{"1h":0.27}},{"dt":1717416000,"temp":301.94,"feels_like":306.71,"pressure":1008,"humidity":77,"dew_point":297.48,"uvi":0.5,"clouds":92,"visibility":10000,"wind_speed":3.64,"wind_deg":287,"wind_gust":4.06,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0.89},{"dt":1717419600,"temp":301.46,"feels_like":306.04,"pressure":1009,"humidity":80,"dew_point":297.72,"uvi":0,"clouds":99,"visibility":10000,"wind_speed":3.3,"wind_deg":293,"wind_gust":4.54,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"pop":0.71,"rain":{"1h":0.2}},{"dt":1717423200,"temp":301.31,"feels_like":305.99,"pressure":1009,"humidity":82,"dew_point":297.82,"uvi":0,"clouds":99,"visibility":10000,"wind_speed":2.54,"wind_deg":301,"wind_gust":3.22,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"pop":0.85,"rain":{"1h":0.33}},{"dt":1717426800,"temp":301.37,"feels_like":305.97,"pressure":1010,"humidity":81,"dew_point":297.88,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":1.62,"wind_deg":306,"wind_gust":1.94,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0.7},{"dt":1717430400,"temp":301.23,"feels_like":305.61,"pressure":1010,"humidity":81,"dew_point":297.76,"uvi":0,"clouds":96,"visibility":10000,"wind_speed":1.46,"wind_deg":303,"wind_gust":1.81,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0.7},{"dt":1717434000,"temp":301.21,"feels_like":305.56,"pressure":1010,"humidity":81,"dew_point":297.62,"uvi":0,"clouds":97,"visibility":10000,"wind_speed":1.89,"wind_deg":302,"wind_gust":2.25,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0.53},{"dt":1717437600,"temp":301.03,"feels_like":305.1,"pressure":1010,"humidity":81,"dew_point":297.46,"uvi":0,"clouds":97,"visibility":10000,"wind_speed":1.19,"wind_deg":301,"wind_gust":1.51,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0.38},{"dt":1717441200,"temp":300.99,"feels_like":304.85,"pressure":1009,"humidity":80,"dew_point":297.25,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":0.9,"wind_deg":271,"wind_gust":1.18,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0},{"dt":1717444800,"temp":300.94,"feels_like":304.87,"pressure":1008,"humidity":81,"dew_point":297.3,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":1.7,"wind_deg":271,"wind_gust":1.79,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0},{"dt":1717448400,"temp":300.81,"feels_like":304.55,"pressure":1008,"humidity":81,"dew_point":297.17,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":1.33,"wind_deg":268,"wind_gust":1.39,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0},{"dt":1717452000,"temp":300.9,"feels_like":304.77,"pressure":1008,"humidity":81,"dew_point":297.31,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":1.34,"wind_deg":264,"wind_gust":1.59,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"pop":0.2,"rain":{"1h":0.18}},{"dt":1717455600,"temp":300.88,"feels_like":304.86,"pressure":1008,"humidity":82,"dew_point":297.47,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":1.37,"wind_deg":264,"wind_gust":1.89,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"pop":0.27,"rain":{"1h":0.13}},{"dt":1717459200,"temp":300.9,"feels_like":304.91,"pressure":1009,"humidity":82,"dew_point":297.53,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":1.59,"wind_deg":265,"wind_gust":2.1,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"pop":0.82,"rain":{"1h":0.35}},{"dt":1717462800,"temp":300.94,"feels_like":305.02,"pressure":1009,"humidity":82,"dew_point":297.67,"uvi":0,"clouds":99,"visibility":10000,"wind_speed":1.71,"wind_deg":281,"wind_gust":2.24,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"pop":1,"rain":{"1h":0.49}},{"dt":1717466400,"temp":301.18,"feels_like":305.48,"pressure":1010,"humidity":81,"dew_point":297.64,"uvi":0.76,"clouds":99,"visibility":10000,"wind_speed":1.95,"wind_deg":282,"wind_gust":2.07,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"pop":1,"rain":{"1h":0.39}},{"dt":1717470000,"temp":301.32,"feels_like":305.84,"pressure":1011,"humidity":81,"dew_point":297.58,"uvi":2.39,"clouds":99,"visibility":10000,"wind_speed":2.38,"wind_deg":280,"wind_gust":2.41,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"pop":1,"rain":{"1h":0.52}},{"dt":1717473600,"temp":301.37,"feels_like":305.81,"pressure":1011,"humidity":80,"dew_point":297.58,"uvi":4.72,"clouds":100,"visibility":10000,"wind_speed":2.13,"wind_deg":279,"wind_gust":2.28,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"pop":1,"rain":{"1h":0.44}},{"dt":1717477200,"temp":301.56,"feels_like":306.12,"pressure":1011,"humidity":79,"dew_point":297.58,"uvi":7.48,"clouds":100,"visibility":10000,"wind_speed":2.18,"wind_deg":282,"wind_gust":2.38,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"pop":1,"rain":{"1h":0.15}}]
/// daily : [{"dt":1717309800,"sunrise":1717288384,"sunset":1717333991,"moonrise":1717274880,"moonset":1717319940,"moon_phase":0.84,"summary":"Expect a day of partly cloudy with rain","temp":{"day":305.14,"min":299.62,"max":305.14,"night":300.58,"eve":301.37,"morn":300.08},"feels_like":{"day":312.14,"night":304.24,"eve":306.15,"morn":303.29},"pressure":1009,"humidity":83,"dew_point":301.89,"wind_speed":6.32,"wind_deg":292,"wind_gust":7.79,"weather":[{"id":501,"main":"Rain","description":"moderate rain","icon":"10d"}],"clouds":100,"pop":1,"rain":13.28,"uvi":9.91},{"dt":1717396200,"sunrise":1717374787,"sunset":1717420407,"moonrise":1717363920,"moonset":1717409640,"moon_phase":0.88,"summary":"Expect a day of partly cloudy with rain","temp":{"day":302.19,"min":300.14,"max":302.33,"night":301.03,"eve":301.94,"morn":300.23},"feels_like":{"day":306.94,"night":305.1,"eve":306.71,"morn":303.37},"pressure":1010,"humidity":75,"dew_point":297.33,"wind_speed":4.83,"wind_deg":278,"wind_gust":5.2,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":100,"pop":0.93,"rain":2.61,"uvi":10.86},{"dt":1717482600,"sunrise":1717461191,"sunset":1717506823,"moonrise":1717453080,"moonset":1717499460,"moon_phase":0.92,"summary":"Expect a day of partly cloudy with rain","temp":{"day":302.09,"min":300.81,"max":302.43,"night":301.03,"eve":302.06,"morn":300.9},"feels_like":{"day":306.9,"night":305.25,"eve":306.82,"morn":304.91},"pressure":1010,"humidity":76,"dew_point":297.4,"wind_speed":4.15,"wind_deg":264,"wind_gust":4.25,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":100,"pop":1,"rain":4.76,"uvi":10.83},{"dt":1717569000,"sunrise":1717547596,"sunset":1717593238,"moonrise":1717542480,"moonset":1717589520,"moon_phase":0.95,"summary":"Expect a day of partly cloudy with rain","temp":{"day":302.04,"min":299.6,"max":302.12,"night":300.8,"eve":302.12,"morn":299.63},"feels_like":{"day":306.77,"night":304.52,"eve":307.18,"morn":299.63},"pressure":1010,"humidity":76,"dew_point":297.25,"wind_speed":4.18,"wind_deg":281,"wind_gust":4.51,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":100,"pop":1,"rain":3.18,"uvi":11.6},{"dt":1717655400,"sunrise":1717634001,"sunset":1717679654,"moonrise":1717632180,"moonset":1717679580,"moon_phase":0,"summary":"Expect a day of partly cloudy with rain","temp":{"day":301.84,"min":299.59,"max":301.89,"night":299.97,"eve":301.03,"morn":299.59},"feels_like":{"day":306.46,"night":302.58,"eve":304.95,"morn":299.59},"pressure":1011,"humidity":77,"dew_point":297.14,"wind_speed":3.78,"wind_deg":272,"wind_gust":4.17,"weather":[{"id":501,"main":"Rain","description":"moderate rain","icon":"10d"}],"clouds":98,"pop":1,"rain":11.5,"uvi":11.14},{"dt":1717741800,"sunrise":1717720406,"sunset":1717766070,"moonrise":1717722000,"moonset":1717769640,"moon_phase":0.03,"summary":"You can expect partly cloudy in the morning, with rain in the afternoon","temp":{"day":301.3,"min":299.34,"max":301.3,"night":300.84,"eve":301.08,"morn":299.34},"feels_like":{"day":304.84,"night":304.62,"eve":304.93,"morn":299.34},"pressure":1011,"humidity":75,"dew_point":296.42,"wind_speed":3.31,"wind_deg":112,"wind_gust":3.73,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":79,"pop":1,"rain":4.95,"uvi":12},{"dt":1717828200,"sunrise":1717806813,"sunset":1717852485,"moonrise":1717812000,"moonset":1717859520,"moon_phase":0.06,"summary":"Expect a day of partly cloudy with rain","temp":{"day":301.72,"min":299.62,"max":301.96,"night":299.96,"eve":301.48,"morn":299.62},"feels_like":{"day":305.46,"night":302.81,"eve":305.25,"morn":299.62},"pressure":1010,"humidity":73,"dew_point":296.45,"wind_speed":3.8,"wind_deg":229,"wind_gust":5.1,"weather":[{"id":501,"main":"Rain","description":"moderate rain","icon":"10d"}],"clouds":100,"pop":1,"rain":13.35,"uvi":12},{"dt":1717914600,"sunrise":1717893219,"sunset":1717938901,"moonrise":1717901880,"moonset":1717949100,"moon_phase":0.1,"summary":"There will be rain today","temp":{"day":301.25,"min":298.77,"max":301.25,"night":300.03,"eve":298.77,"morn":299.86},"feels_like":{"day":304.88,"night":302.63,"eve":299.66,"morn":302.34},"pressure":1010,"humidity":76,"dew_point":296.54,"wind_speed":3.82,"wind_deg":233,"wind_gust":4.73,"weather":[{"id":501,"main":"Rain","description":"moderate rain","icon":"10d"}],"clouds":87,"pop":1,"rain":19.35,"uvi":12}]

SearchWeatherResponse searchWeatherResponseFromJson(String str) => SearchWeatherResponse.fromJson(json.decode(str));
String searchWeatherResponseToJson(SearchWeatherResponse data) => json.encode(data.toJson());
class SearchWeatherResponse {
  SearchWeatherResponse({
      num? lat, 
      num? lon, 
      String? timezone, 
      num? timezoneOffset, 
      Current? current, 
      List<Minutely>? minutely, 
      List<Hourly>? hourly, 
      List<Daily>? daily,}){
    _lat = lat;
    _lon = lon;
    _timezone = timezone;
    _timezoneOffset = timezoneOffset;
    _current = current;
    _minutely = minutely;
    _hourly = hourly;
    _daily = daily;
}

  SearchWeatherResponse.fromJson(dynamic json) {
    _lat = json['lat'];
    _lon = json['lon'];
    _timezone = json['timezone'];
    _timezoneOffset = json['timezone_offset'];
    _current = json['current'] != null ? Current.fromJson(json['current']) : null;
    if (json['minutely'] != null) {
      _minutely = [];
      json['minutely'].forEach((v) {
        _minutely?.add(Minutely.fromJson(v));
      });
    }
    if (json['hourly'] != null) {
      _hourly = [];
      json['hourly'].forEach((v) {
        _hourly?.add(Hourly.fromJson(v));
      });
    }
    if (json['daily'] != null) {
      _daily = [];
      json['daily'].forEach((v) {
        _daily?.add(Daily.fromJson(v));
      });
    }
  }
  num? _lat;
  num? _lon;
  String? _timezone;
  num? _timezoneOffset;
  Current? _current;
  List<Minutely>? _minutely;
  List<Hourly>? _hourly;
  List<Daily>? _daily;
SearchWeatherResponse copyWith({  num? lat,
  num? lon,
  String? timezone,
  num? timezoneOffset,
  Current? current,
  List<Minutely>? minutely,
  List<Hourly>? hourly,
  List<Daily>? daily,
}) => SearchWeatherResponse(  lat: lat ?? _lat,
  lon: lon ?? _lon,
  timezone: timezone ?? _timezone,
  timezoneOffset: timezoneOffset ?? _timezoneOffset,
  current: current ?? _current,
  minutely: minutely ?? _minutely,
  hourly: hourly ?? _hourly,
  daily: daily ?? _daily,
);
  num? get lat => _lat;
  num? get lon => _lon;
  String? get timezone => _timezone;
  num? get timezoneOffset => _timezoneOffset;
  Current? get current => _current;
  List<Minutely>? get minutely => _minutely;
  List<Hourly>? get hourly => _hourly;
  List<Daily>? get daily => _daily;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = _lat;
    map['lon'] = _lon;
    map['timezone'] = _timezone;
    map['timezone_offset'] = _timezoneOffset;
    if (_current != null) {
      map['current'] = _current?.toJson();
    }
    if (_minutely != null) {
      map['minutely'] = _minutely?.map((v) => v.toJson()).toList();
    }
    if (_hourly != null) {
      map['hourly'] = _hourly?.map((v) => v.toJson()).toList();
    }
    if (_daily != null) {
      map['daily'] = _daily?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// dt : 1717309800
/// sunrise : 1717288384
/// sunset : 1717333991
/// moonrise : 1717274880
/// moonset : 1717319940
/// moon_phase : 0.84
/// summary : "Expect a day of partly cloudy with rain"
/// temp : {"day":305.14,"min":299.62,"max":305.14,"night":300.58,"eve":301.37,"morn":300.08}
/// feels_like : {"day":312.14,"night":304.24,"eve":306.15,"morn":303.29}
/// pressure : 1009
/// humidity : 83
/// dew_point : 301.89
/// wind_speed : 6.32
/// wind_deg : 292
/// wind_gust : 7.79
/// weather : [{"id":501,"main":"Rain","description":"moderate rain","icon":"10d"}]
/// clouds : 100
/// pop : 1
/// rain : 13.28
/// uvi : 9.91

Daily dailyFromJson(String str) => Daily.fromJson(json.decode(str));
String dailyToJson(Daily data) => json.encode(data.toJson());
class Daily {
  Daily({
      num? dt, 
      num? sunrise, 
      num? sunset, 
      num? moonrise, 
      num? moonset, 
      num? moonPhase, 
      String? summary, 
      Temp? temp, 
      FeelsLike? feelsLike, 
      num? pressure, 
      num? humidity, 
      num? dewPoint, 
      num? windSpeed, 
      num? windDeg, 
      num? windGust, 
      List<Weather>? weather, 
      num? clouds, 
      num? pop, 
      num? rain, 
      num? uvi,}){
    _dt = dt;
    _sunrise = sunrise;
    _sunset = sunset;
    _moonrise = moonrise;
    _moonset = moonset;
    _moonPhase = moonPhase;
    _summary = summary;
    _temp = temp;
    _feelsLike = feelsLike;
    _pressure = pressure;
    _humidity = humidity;
    _dewPoint = dewPoint;
    _windSpeed = windSpeed;
    _windDeg = windDeg;
    _windGust = windGust;
    _weather = weather;
    _clouds = clouds;
    _pop = pop;
    _rain = rain;
    _uvi = uvi;
}

  Daily.fromJson(dynamic json) {
    _dt = json['dt'];
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
    _moonrise = json['moonrise'];
    _moonset = json['moonset'];
    _moonPhase = json['moon_phase'];
    _summary = json['summary'];
    _temp = json['temp'] != null ? Temp.fromJson(json['temp']) : null;
    _feelsLike = json['feels_like'] != null ? FeelsLike.fromJson(json['feels_like']) : null;
    _pressure = json['pressure'];
    _humidity = json['humidity'];
    _dewPoint = json['dew_point'];
    _windSpeed = json['wind_speed'];
    _windDeg = json['wind_deg'];
    _windGust = json['wind_gust'];
    if (json['weather'] != null) {
      _weather = [];
      json['weather'].forEach((v) {
        _weather?.add(Weather.fromJson(v));
      });
    }
    _clouds = json['clouds'];
    _pop = json['pop'];
    _rain = json['rain'];
    _uvi = json['uvi'];
  }
  num? _dt;
  num? _sunrise;
  num? _sunset;
  num? _moonrise;
  num? _moonset;
  num? _moonPhase;
  String? _summary;
  Temp? _temp;
  FeelsLike? _feelsLike;
  num? _pressure;
  num? _humidity;
  num? _dewPoint;
  num? _windSpeed;
  num? _windDeg;
  num? _windGust;
  List<Weather>? _weather;
  num? _clouds;
  num? _pop;
  num? _rain;
  num? _uvi;
Daily copyWith({  num? dt,
  num? sunrise,
  num? sunset,
  num? moonrise,
  num? moonset,
  num? moonPhase,
  String? summary,
  Temp? temp,
  FeelsLike? feelsLike,
  num? pressure,
  num? humidity,
  num? dewPoint,
  num? windSpeed,
  num? windDeg,
  num? windGust,
  List<Weather>? weather,
  num? clouds,
  num? pop,
  num? rain,
  num? uvi,
}) => Daily(  dt: dt ?? _dt,
  sunrise: sunrise ?? _sunrise,
  sunset: sunset ?? _sunset,
  moonrise: moonrise ?? _moonrise,
  moonset: moonset ?? _moonset,
  moonPhase: moonPhase ?? _moonPhase,
  summary: summary ?? _summary,
  temp: temp ?? _temp,
  feelsLike: feelsLike ?? _feelsLike,
  pressure: pressure ?? _pressure,
  humidity: humidity ?? _humidity,
  dewPoint: dewPoint ?? _dewPoint,
  windSpeed: windSpeed ?? _windSpeed,
  windDeg: windDeg ?? _windDeg,
  windGust: windGust ?? _windGust,
  weather: weather ?? _weather,
  clouds: clouds ?? _clouds,
  pop: pop ?? _pop,
  rain: rain ?? _rain,
  uvi: uvi ?? _uvi,
);
  num? get dt => _dt;
  num? get sunrise => _sunrise;
  num? get sunset => _sunset;
  num? get moonrise => _moonrise;
  num? get moonset => _moonset;
  num? get moonPhase => _moonPhase;
  String? get summary => _summary;
  Temp? get temp => _temp;
  FeelsLike? get feelsLike => _feelsLike;
  num? get pressure => _pressure;
  num? get humidity => _humidity;
  num? get dewPoint => _dewPoint;
  num? get windSpeed => _windSpeed;
  num? get windDeg => _windDeg;
  num? get windGust => _windGust;
  List<Weather>? get weather => _weather;
  num? get clouds => _clouds;
  num? get pop => _pop;
  num? get rain => _rain;
  num? get uvi => _uvi;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = _dt;
    map['sunrise'] = _sunrise;
    map['sunset'] = _sunset;
    map['moonrise'] = _moonrise;
    map['moonset'] = _moonset;
    map['moon_phase'] = _moonPhase;
    map['summary'] = _summary;
    if (_temp != null) {
      map['temp'] = _temp?.toJson();
    }
    if (_feelsLike != null) {
      map['feels_like'] = _feelsLike?.toJson();
    }
    map['pressure'] = _pressure;
    map['humidity'] = _humidity;
    map['dew_point'] = _dewPoint;
    map['wind_speed'] = _windSpeed;
    map['wind_deg'] = _windDeg;
    map['wind_gust'] = _windGust;
    if (_weather != null) {
      map['weather'] = _weather?.map((v) => v.toJson()).toList();
    }
    map['clouds'] = _clouds;
    map['pop'] = _pop;
    map['rain'] = _rain;
    map['uvi'] = _uvi;
    return map;
  }

}

/// id : 501
/// main : "Rain"
/// description : "moderate rain"
/// icon : "10d"

Weather weatherFromJson(String str) => Weather.fromJson(json.decode(str));
String weatherToJson(Weather data) => json.encode(data.toJson());
class Weather {
  Weather({
      num? id, 
      String? main, 
      String? description, 
      String? icon,}){
    _id = id;
    _main = main;
    _description = description;
    _icon = icon;
}

  Weather.fromJson(dynamic json) {
    _id = json['id'];
    _main = json['main'];
    _description = json['description'];
    _icon = json['icon'];
  }
  num? _id;
  String? _main;
  String? _description;
  String? _icon;
Weather copyWith({  num? id,
  String? main,
  String? description,
  String? icon,
}) => Weather(  id: id ?? _id,
  main: main ?? _main,
  description: description ?? _description,
  icon: icon ?? _icon,
);
  num? get id => _id;
  String? get main => _main;
  String? get description => _description;
  String? get icon => _icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['main'] = _main;
    map['description'] = _description;
    map['icon'] = _icon;
    return map;
  }

}

/// day : 312.14
/// night : 304.24
/// eve : 306.15
/// morn : 303.29

FeelsLike feelsLikeFromJson(String str) => FeelsLike.fromJson(json.decode(str));
String feelsLikeToJson(FeelsLike data) => json.encode(data.toJson());
class FeelsLike {
  FeelsLike({
      num? day, 
      num? night, 
      num? eve, 
      num? morn,}){
    _day = day;
    _night = night;
    _eve = eve;
    _morn = morn;
}

  FeelsLike.fromJson(dynamic json) {
    _day = json['day'];
    _night = json['night'];
    _eve = json['eve'];
    _morn = json['morn'];
  }
  num? _day;
  num? _night;
  num? _eve;
  num? _morn;
FeelsLike copyWith({  num? day,
  num? night,
  num? eve,
  num? morn,
}) => FeelsLike(  day: day ?? _day,
  night: night ?? _night,
  eve: eve ?? _eve,
  morn: morn ?? _morn,
);
  num? get day => _day;
  num? get night => _night;
  num? get eve => _eve;
  num? get morn => _morn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['night'] = _night;
    map['eve'] = _eve;
    map['morn'] = _morn;
    return map;
  }

}

/// day : 305.14
/// min : 299.62
/// max : 305.14
/// night : 300.58
/// eve : 301.37
/// morn : 300.08

Temp tempFromJson(String str) => Temp.fromJson(json.decode(str));
String tempToJson(Temp data) => json.encode(data.toJson());
class Temp {
  Temp({
      num? day, 
      num? min, 
      num? max, 
      num? night, 
      num? eve, 
      num? morn,}){
    _day = day;
    _min = min;
    _max = max;
    _night = night;
    _eve = eve;
    _morn = morn;
}

  Temp.fromJson(dynamic json) {
    _day = json['day'];
    _min = json['min'];
    _max = json['max'];
    _night = json['night'];
    _eve = json['eve'];
    _morn = json['morn'];
  }
  num? _day;
  num? _min;
  num? _max;
  num? _night;
  num? _eve;
  num? _morn;
Temp copyWith({  num? day,
  num? min,
  num? max,
  num? night,
  num? eve,
  num? morn,
}) => Temp(  day: day ?? _day,
  min: min ?? _min,
  max: max ?? _max,
  night: night ?? _night,
  eve: eve ?? _eve,
  morn: morn ?? _morn,
);
  num? get day => _day;
  num? get min => _min;
  num? get max => _max;
  num? get night => _night;
  num? get eve => _eve;
  num? get morn => _morn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['min'] = _min;
    map['max'] = _max;
    map['night'] = _night;
    map['eve'] = _eve;
    map['morn'] = _morn;
    return map;
  }

}

/// dt : 1717308000
/// temp : 305.14
/// feels_like : 312.14
/// pressure : 1009
/// humidity : 83
/// dew_point : 301.89
/// uvi : 9.91
/// clouds : 100
/// visibility : 10000
/// wind_speed : 4.53
/// wind_deg : 318
/// wind_gust : 5.22
/// weather : [{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}]
/// pop : 0.8

Hourly hourlyFromJson(String str) => Hourly.fromJson(json.decode(str));
String hourlyToJson(Hourly data) => json.encode(data.toJson());
class Hourly {
  Hourly({
      num? dt, 
      num? temp, 
      num? feelsLike, 
      num? pressure, 
      num? humidity, 
      num? dewPoint, 
      num? uvi, 
      num? clouds, 
      num? visibility, 
      num? windSpeed, 
      num? windDeg, 
      num? windGust, 
      List<Weather>? weather, 
      num? pop,}){
    _dt = dt;
    _temp = temp;
    _feelsLike = feelsLike;
    _pressure = pressure;
    _humidity = humidity;
    _dewPoint = dewPoint;
    _uvi = uvi;
    _clouds = clouds;
    _visibility = visibility;
    _windSpeed = windSpeed;
    _windDeg = windDeg;
    _windGust = windGust;
    _weather = weather;
    _pop = pop;
}

  Hourly.fromJson(dynamic json) {
    _dt = json['dt'];
    _temp = json['temp'];
    _feelsLike = json['feels_like'];
    _pressure = json['pressure'];
    _humidity = json['humidity'];
    _dewPoint = json['dew_point'];
    _uvi = json['uvi'];
    _clouds = json['clouds'];
    _visibility = json['visibility'];
    _windSpeed = json['wind_speed'];
    _windDeg = json['wind_deg'];
    _windGust = json['wind_gust'];
    if (json['weather'] != null) {
      _weather = [];
      json['weather'].forEach((v) {
        _weather?.add(Weather.fromJson(v));
      });
    }
    _pop = json['pop'];
  }
  num? _dt;
  num? _temp;
  num? _feelsLike;
  num? _pressure;
  num? _humidity;
  num? _dewPoint;
  num? _uvi;
  num? _clouds;
  num? _visibility;
  num? _windSpeed;
  num? _windDeg;
  num? _windGust;
  List<Weather>? _weather;
  num? _pop;
Hourly copyWith({  num? dt,
  num? temp,
  num? feelsLike,
  num? pressure,
  num? humidity,
  num? dewPoint,
  num? uvi,
  num? clouds,
  num? visibility,
  num? windSpeed,
  num? windDeg,
  num? windGust,
  List<Weather>? weather,
  num? pop,
}) => Hourly(  dt: dt ?? _dt,
  temp: temp ?? _temp,
  feelsLike: feelsLike ?? _feelsLike,
  pressure: pressure ?? _pressure,
  humidity: humidity ?? _humidity,
  dewPoint: dewPoint ?? _dewPoint,
  uvi: uvi ?? _uvi,
  clouds: clouds ?? _clouds,
  visibility: visibility ?? _visibility,
  windSpeed: windSpeed ?? _windSpeed,
  windDeg: windDeg ?? _windDeg,
  windGust: windGust ?? _windGust,
  weather: weather ?? _weather,
  pop: pop ?? _pop,
);
  num? get dt => _dt;
  num? get temp => _temp;
  num? get feelsLike => _feelsLike;
  num? get pressure => _pressure;
  num? get humidity => _humidity;
  num? get dewPoint => _dewPoint;
  num? get uvi => _uvi;
  num? get clouds => _clouds;
  num? get visibility => _visibility;
  num? get windSpeed => _windSpeed;
  num? get windDeg => _windDeg;
  num? get windGust => _windGust;
  List<Weather>? get weather => _weather;
  num? get pop => _pop;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = _dt;
    map['temp'] = _temp;
    map['feels_like'] = _feelsLike;
    map['pressure'] = _pressure;
    map['humidity'] = _humidity;
    map['dew_point'] = _dewPoint;
    map['uvi'] = _uvi;
    map['clouds'] = _clouds;
    map['visibility'] = _visibility;
    map['wind_speed'] = _windSpeed;
    map['wind_deg'] = _windDeg;
    map['wind_gust'] = _windGust;
    if (_weather != null) {
      map['weather'] = _weather?.map((v) => v.toJson()).toList();
    }
    map['pop'] = _pop;
    return map;
  }

}

/// id : 804
/// main : "Clouds"
/// description : "overcast clouds"
/// icon : "04d"

WeatherData weatherDataFromJson(String str) => WeatherData.fromJson(json.decode(str));
String weatherDataToJson(WeatherData data) => json.encode(data.toJson());
class WeatherData {
  WeatherData({
      num? id, 
      String? main, 
      String? description, 
      String? icon,}){
    _id = id;
    _main = main;
    _description = description;
    _icon = icon;
}

  WeatherData.fromJson(dynamic json) {
    _id = json['id'];
    _main = json['main'];
    _description = json['description'];
    _icon = json['icon'];
  }
  num? _id;
  String? _main;
  String? _description;
  String? _icon;
Weather copyWith({  num? id,
  String? main,
  String? description,
  String? icon,
}) => Weather(  id: id ?? _id,
  main: main ?? _main,
  description: description ?? _description,
  icon: icon ?? _icon,
);
  num? get id => _id;
  String? get main => _main;
  String? get description => _description;
  String? get icon => _icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['main'] = _main;
    map['description'] = _description;
    map['icon'] = _icon;
    return map;
  }

}

/// dt : 1717308120
/// precipitation : 0

Minutely minutelyFromJson(String str) => Minutely.fromJson(json.decode(str));
String minutelyToJson(Minutely data) => json.encode(data.toJson());
class Minutely {
  Minutely({
      num? dt, 
      num? precipitation,}){
    _dt = dt;
    _precipitation = precipitation;
}

  Minutely.fromJson(dynamic json) {
    _dt = json['dt'];
    _precipitation = json['precipitation'];
  }
  num? _dt;
  num? _precipitation;
Minutely copyWith({  num? dt,
  num? precipitation,
}) => Minutely(  dt: dt ?? _dt,
  precipitation: precipitation ?? _precipitation,
);
  num? get dt => _dt;
  num? get precipitation => _precipitation;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = _dt;
    map['precipitation'] = _precipitation;
    return map;
  }

}

/// dt : 1717308098
/// sunrise : 1717288384
/// sunset : 1717333991
/// temp : 305.14
/// feels_like : 312.14
/// pressure : 1009
/// humidity : 83
/// dew_point : 301.89
/// uvi : 9.91
/// clouds : 100
/// visibility : 10000
/// wind_speed : 4.53
/// wind_deg : 318
/// wind_gust : 5.22
/// weather : [{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}]

Current currentFromJson(String str) => Current.fromJson(json.decode(str));
String currentToJson(Current data) => json.encode(data.toJson());
class Current {
  Current({
      num? dt, 
      num? sunrise, 
      num? sunset, 
      num? temp, 
      num? feelsLike, 
      num? pressure, 
      num? humidity, 
      num? dewPoint, 
      num? uvi, 
      num? clouds, 
      num? visibility, 
      num? windSpeed, 
      num? windDeg, 
      num? windGust, 
      List<Weather>? weather,}){
    _dt = dt;
    _sunrise = sunrise;
    _sunset = sunset;
    _temp = temp;
    _feelsLike = feelsLike;
    _pressure = pressure;
    _humidity = humidity;
    _dewPoint = dewPoint;
    _uvi = uvi;
    _clouds = clouds;
    _visibility = visibility;
    _windSpeed = windSpeed;
    _windDeg = windDeg;
    _windGust = windGust;
    _weather = weather;
}

  Current.fromJson(dynamic json) {
    _dt = json['dt'];
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
    _temp = json['temp'];
    _feelsLike = json['feels_like'];
    _pressure = json['pressure'];
    _humidity = json['humidity'];
    _dewPoint = json['dew_point'];
    _uvi = json['uvi'];
    _clouds = json['clouds'];
    _visibility = json['visibility'];
    _windSpeed = json['wind_speed'];
    _windDeg = json['wind_deg'];
    _windGust = json['wind_gust'];
    if (json['weather'] != null) {
      _weather = [];
      json['weather'].forEach((v) {
        _weather?.add(Weather.fromJson(v));
      });
    }
  }
  num? _dt;
  num? _sunrise;
  num? _sunset;
  num? _temp;
  num? _feelsLike;
  num? _pressure;
  num? _humidity;
  num? _dewPoint;
  num? _uvi;
  num? _clouds;
  num? _visibility;
  num? _windSpeed;
  num? _windDeg;
  num? _windGust;
  List<Weather>? _weather;
Current copyWith({  num? dt,
  num? sunrise,
  num? sunset,
  num? temp,
  num? feelsLike,
  num? pressure,
  num? humidity,
  num? dewPoint,
  num? uvi,
  num? clouds,
  num? visibility,
  num? windSpeed,
  num? windDeg,
  num? windGust,
  List<Weather>? weather,
}) => Current(  dt: dt ?? _dt,
  sunrise: sunrise ?? _sunrise,
  sunset: sunset ?? _sunset,
  temp: temp ?? _temp,
  feelsLike: feelsLike ?? _feelsLike,
  pressure: pressure ?? _pressure,
  humidity: humidity ?? _humidity,
  dewPoint: dewPoint ?? _dewPoint,
  uvi: uvi ?? _uvi,
  clouds: clouds ?? _clouds,
  visibility: visibility ?? _visibility,
  windSpeed: windSpeed ?? _windSpeed,
  windDeg: windDeg ?? _windDeg,
  windGust: windGust ?? _windGust,
  weather: weather ?? _weather,
);
  num? get dt => _dt;
  num? get sunrise => _sunrise;
  num? get sunset => _sunset;
  num? get temp => _temp;
  num? get feelsLike => _feelsLike;
  num? get pressure => _pressure;
  num? get humidity => _humidity;
  num? get dewPoint => _dewPoint;
  num? get uvi => _uvi;
  num? get clouds => _clouds;
  num? get visibility => _visibility;
  num? get windSpeed => _windSpeed;
  num? get windDeg => _windDeg;
  num? get windGust => _windGust;
  List<Weather>? get weather => _weather;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = _dt;
    map['sunrise'] = _sunrise;
    map['sunset'] = _sunset;
    map['temp'] = _temp;
    map['feels_like'] = _feelsLike;
    map['pressure'] = _pressure;
    map['humidity'] = _humidity;
    map['dew_point'] = _dewPoint;
    map['uvi'] = _uvi;
    map['clouds'] = _clouds;
    map['visibility'] = _visibility;
    map['wind_speed'] = _windSpeed;
    map['wind_deg'] = _windDeg;
    map['wind_gust'] = _windGust;
    if (_weather != null) {
      map['weather'] = _weather?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 804
/// main : "Clouds"
/// description : "overcast clouds"
/// icon : "04d"

CurrentWeather currentWeatherWeatherFromJson(String str) => CurrentWeather.fromJson(json.decode(str));
String currentWeatherToJson(CurrentWeather data) => json.encode(data.toJson());
class CurrentWeather {
  CurrentWeather({
      num? id, 
      String? main, 
      String? description, 
      String? icon,}){
    _id = id;
    _main = main;
    _description = description;
    _icon = icon;
}

  CurrentWeather.fromJson(dynamic json) {
    _id = json['id'];
    _main = json['main'];
    _description = json['description'];
    _icon = json['icon'];
  }
  num? _id;
  String? _main;
  String? _description;
  String? _icon;
Weather copyWith({  num? id,
  String? main,
  String? description,
  String? icon,
}) => Weather(  id: id ?? _id,
  main: main ?? _main,
  description: description ?? _description,
  icon: icon ?? _icon,
);
  num? get id => _id;
  String? get main => _main;
  String? get description => _description;
  String? get icon => _icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['main'] = _main;
    map['description'] = _description;
    map['icon'] = _icon;
    return map;
  }

}