const types = [
  {
    "english": "Normal",
    "chinese": "一般",
    "japanese": "ノーマル",
    "effective": [],
    "ineffective": ["Rock", "Steel"],
    "no_effect": ["Ghost"]
  },
  {
    "english": "Fighting",
    "chinese": "格斗",
    "japanese": "かくとう",
    "effective": ["Normal", "Ice", "Rock", "Dark", "Steel"],
    "ineffective": ["Poison", "Flying", "Psychic", "Bug", "Fairy"],
    "no_effect": ["Ghost"]
  },
  {
    "english": "Flying",
    "chinese": "飞行",
    "japanese": "ひこう",
    "effective": ["Grass", "Fighting", "Bug"],
    "ineffective": ["Electric", "Rock", "Steel"],
    "no_effect": []
  },
  {
    "english": "Poison",
    "chinese": "毒",
    "japanese": "どく",
    "effective": ["Grass", "Fairy"],
    "ineffective": ["Poison", "Ground", "Rock", "Ghost"],
    "no_effect": ["Steel"]
  },
  {
    "english": "Ground",
    "chinese": "地上",
    "japanese": "じめん",
    "effective": ["Fire", "Electric", "Poison", "Rock", "Steel"],
    "ineffective": ["Grass", "Bug"],
    "no_effect": ["Flying"]
  },
  {
    "english": "Rock",
    "chinese": "岩石",
    "japanese": "いわ",
    "effective": ["Fire", "Ice", "Flying", "Bug"],
    "ineffective": ["Fighting", "Ground", "Steel"],
    "no_effect": []
  },
  {
    "english": "Bug",
    "chinese": "虫",
    "japanese": "むし",
    "effective": ["Grass", "Psychic", "Dark"],
    "ineffective": ["Fire", "Fighting", "Poison", "Flying", "Ghost", "Steel", "Fairy"],
    "no_effect": []
  },
  {
    "english": "Ghost",
    "chinese": "幽灵",
    "japanese": "ゴースト",
    "effective": ["Psychic", "Ghost"],
    "ineffective": ["Dark"],
    "no_effect": ["Normal"]
  },
  {
    "english": "Steel",
    "chinese": "钢",
    "japanese": "はがね",
    "effective": ["Ice", "Rock", "Fairy"],
    "ineffective": ["Fire", "Water", "Electric", "Steel"],
    "no_effect": []
  },
  {
    "english": "Fire",
    "chinese": "炎",
    "japanese": "ほのお",
    "effective": ["Grass", "Ice", "Bug", "Steel"],
    "ineffective": ["Fire", "Water", "Rock", "Dragon"],
    "no_effect": []
  },
  {
    "english": "Water",
    "chinese": "水",
    "japanese": "みず",
    "effective": ["Fire", "Ground", "Rock"],
    "ineffective": ["Water", "Grass", "Dragon"],
    "no_effect": []
  },
  {
    "english": "Grass",
    "chinese": "草",
    "japanese": "くさ",
    "effective": ["Water", "Ground", "Rock"],
    "ineffective": ["Fire", "Grass", "Poison", "Flying", "Bug", "Dragon", "Steel"],
    "no_effect": []
  },
  {
    "english": "Electric",
    "chinese": "电",
    "japanese": "でんき",
    "effective": ["Water", "Flying"],
    "ineffective": ["Electric", "Grass", "Dragon"],
    "no_effect": ["Ground"]
  },
  {
    "english": "Psychic",
    "chinese": "超能",
    "japanese": "エスパー",
    "effective": ["Fighting", "Poison"],
    "ineffective": ["Psychic", "Steel"],
    "no_effect": ["Dark"]
  },
  {
    "english": "Ice",
    "chinese": "冰",
    "japanese": "こおり",
    "effective": ["Grass", "Ground", "Flying", "Dragon"],
    "ineffective": ["Fire", "Water", "Ice", "Steel"],
    "no_effect": []
  },
  {
    "english": "Dragon",
    "chinese": "龙",
    "japanese": "ドラゴン",
    "effective": ["Dragon"],
    "ineffective": ["Steel"],
    "no_effect": ["Fairy"]
  },
  {
    "english": "Dark",
    "chinese": "恶",
    "japanese": "あく",
    "effective": ["Psychic", "Ghost"],
    "ineffective": ["Fighting", "Dark", "Fairy"],
    "no_effect": []
  },
  {
    "english": "Fairy",
    "chinese": "妖精",
    "japanese": "フェアリー",
    "effective": ["Fighting", "Dragon", "Dark"],
    "ineffective": ["Fire", "Poison", "Steel"],
    "no_effect": []
  }
];
