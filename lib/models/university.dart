import 'dart:convert';

List<Universitas> universitasFromJson(String str) => List<Universitas>.from(json.decode(str).map((x) => Universitas.fromJson(x)));

String universitasToJson(List<Universitas> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Universitas {
    Universitas({
        this.alphaTwoCode,
        this.webPages,
        this.name,
        this.country,
        this.domains,
        this.stateProvince,
    });

    String? alphaTwoCode;
    List<String>? webPages;
    String? name;
    String? country;
    List<String>? domains;
    dynamic stateProvince;

    factory Universitas.fromJson(Map<String, dynamic> json) => Universitas(
        alphaTwoCode: json["alpha_two_code"],
        webPages: List<String>.from(json["web_pages"].map((x) => x)),
        name: json["name"],
        country: json["country"],
        domains: List<String>.from(json["domains"].map((x) => x)),
        stateProvince: json["state-province"],
    );

    Map<String, dynamic> toJson() => {
        "alpha_two_code": alphaTwoCode,
        "web_pages": List<dynamic>.from(webPages!.map((x) => x)),
        "name": name,
        "country": country,
        "domains": List<dynamic>.from(domains!.map((x) => x)),
        "state-province": stateProvince,
    };
}