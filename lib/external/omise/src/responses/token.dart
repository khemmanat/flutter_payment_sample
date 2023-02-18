part of '../responses.dart';

/// Token API: please check https://www.omise.co/tokens-api
class Token {
  String? object;
  String? id;
  bool? livemode;
  String? location;
  String? chargeStatus;
  String? createdAt;
  bool? used;
  Card? card;

  Token(
      {this.object,
      this.id,
      this.livemode,
      this.location,
      this.createdAt,
      this.used,
      this.card});

  Token.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    livemode = json['livemode'];
    location = json['location'];
    chargeStatus = json['charge_status'];
    createdAt = json['created_at'];
    used = json['used'];
    card = json['card'] != null ? Card.fromJson(json['card']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['object'] = object;
    data['id'] = id;
    data['livemode'] = livemode;
    data['location'] = location;
    data['charge_status'] = chargeStatus;
    data['created_at'] = createdAt;
    data['used'] = used;
    if (card != null) {
      data['card'] = card!.toJson();
    }
    return data;
  }
}
