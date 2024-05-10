class Dictionary {
  Meta? meta;
  int? hom;
  Hwi? hwi;
  String? fl;
  List<Def>? def;
  List<Uros>? uros;
  List<String>? shortdef;
//meta //fl //def //shortdef
  Dictionary({this.meta, this.hom, this.hwi, this.fl, this.def, this.uros, this.shortdef});

  Dictionary.fromJson(Map<String, dynamic> json) {
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    hom = json['hom'];
    hwi = json['hwi'] != null ? Hwi.fromJson(json['hwi']) : null;
    fl = json['fl'];
    if (json['def'] != null) {
      def = <Def>[];
      json['def'].forEach((v) {
        def!.add(Def.fromJson(v));
      });
    }
    if (json['uros'] != null) {
      uros = <Uros>[];
      json['uros'].forEach((v) {
        uros!.add(Uros.fromJson(v));
      });
    }
    shortdef = json['shortdef'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    data['hom'] = hom;
    if (hwi != null) {
      data['hwi'] = hwi!.toJson();
    }
    data['fl'] = fl;
    if (def != null) {
      data['def'] = def!.map((v) => v.toJson()).toList();
    }
    if (uros != null) {
      data['uros'] = uros!.map((v) => v.toJson()).toList();
    }
    data['shortdef'] = shortdef;
    return data;
  }
}

class Meta {
  String? id;
  String? uuid;
  String? src;
  String? section;
  List<String>? stems;
  bool? offensive;

  Meta({this.id, this.uuid, this.src, this.section, this.stems, this.offensive});

  Meta.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uuid = json['uuid'];
    src = json['src'];
    section = json['section'];
    stems = json['stems'].cast<String>();
    offensive = json['offensive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['uuid'] = uuid;
    data['src'] = src;
    data['section'] = section;
    data['stems'] = stems;
    data['offensive'] = offensive;
    return data;
  }
}

class Hwi {
  String? hw;
  List<Prs>? prs;

  Hwi({this.hw, this.prs});

  Hwi.fromJson(Map<String, dynamic> json) {
    hw = json['hw'];
    if (json['prs'] != null) {
      prs = <Prs>[];
      json['prs'].forEach((v) {
        prs!.add(Prs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['hw'] = hw;
    if (prs != null) {
      data['prs'] = prs!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Prs {
  String? mw;
  Sound? sound;

  Prs({this.mw, this.sound});

  Prs.fromJson(Map<String, dynamic> json) {
    mw = json['mw'];
    sound = json['sound'] != null ? Sound.fromJson(json['sound']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['mw'] = mw;
    if (sound != null) {
      data['sound'] = sound!.toJson();
    }
    return data;
  }
}

class Sound {
  String? audio;

  Sound({this.audio});

  Sound.fromJson(Map<String, dynamic> json) {
    audio = json['audio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['audio'] = audio;
    return data;
  }
}

class Def {
  List<List>? sseq;

  Def({this.sseq});

  Def.fromJson(Map<String, dynamic> json) {
    if (json['sseq'] != null) {
      sseq = <List>[];
      json['sseq'].forEach((v) {
        sseq!.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (sseq != null) {
      data['sseq'] = sseq!.map((v) => v).toList();
    }
    return data;
  }
}

Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = Map<String, dynamic>();
  return data;
}

class Uros {
  String? ure;
  List<Prs>? prs;
  String? fl;

  Uros({this.ure, this.prs, this.fl});

  Uros.fromJson(Map<String, dynamic> json) {
    ure = json['ure'];
    if (json['prs'] != null) {
      prs = <Prs>[];
      json['prs'].forEach((v) {
        prs!.add(Prs.fromJson(v));
      });
    }
    fl = json['fl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['ure'] = ure;
    if (prs != null) {
      data['prs'] = prs!.map((v) => v.toJson()).toList();
    }
    data['fl'] = fl;
    return data;
  }
}
