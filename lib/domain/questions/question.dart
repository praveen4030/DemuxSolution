import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final String frequency;
  final List<String> tags;
  final bool trending;
  final Timestamp timestamp;
  final String detail;
  
  Question({
    this.title,
    this.frequency,
    this.tags,
    this.trending,
    this.detail,
    this.timestamp,
  });

  Question copyWith({
    String title,
    String frequency,
    List<String> tags,
    bool trending,
    Timestamp timestamp,
    String detail,
  }) {
    return Question(
      title: title ?? this.title,
      frequency: frequency ?? this.frequency,
      tags: tags ?? this.tags,
      trending: trending ?? this.trending,
      timestamp: timestamp ?? this.timestamp,
      detail: detail ?? this.detail,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'frequency': frequency,
      'tags': tags,
      'trending': trending,
      'timestamp': timestamp,
      'detail' : detail,
    };
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Question(
      title: map['title'] as String,
      frequency: map['frequency']as String,
      tags: List<String>.from(map['tags'] as List),
      trending: map['trending']as bool,
      timestamp: map['timestamp'] as Timestamp,
      detail: map['detail'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) => Question.fromMap(json.decode(source) as Map<String,dynamic>);

  @override
  String toString() {
    return 'Question(title: $title, frequency: $frequency, tags: $tags, trending: $trending, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is Question &&
      o.title == title &&
      o.frequency == frequency &&
      listEquals(o.tags, tags) &&
      o.trending == trending &&
      o.detail == detail &&
      o.timestamp == timestamp;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      frequency.hashCode ^
      tags.hashCode ^
      trending.hashCode ^
      detail.hashCode ^
      timestamp.hashCode;
  }
}
