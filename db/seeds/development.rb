[
  { id: 1, name: "カナディアン", content: "きょうはあさはやおきしたよ。" },
  { id: 2, name: "てつ", content: "テストで100てんとれたよ" },
  { id: 3, name: "マイケル", content: "ときはかねなり" },
  { id: 4, name: "まや", content: "パソコンほしいな" },
  { id: 5, name: "たろう", content: "きょうはよいいちにちだったよ" },
  { id: 6, name: "このは", content: "もしもしかめよ、かめさんよ" },
  { id: 7, name: "じん", content: "きょうはパパとままとごはんをたべにおそとにいきました" },
  { id: 8, name: "ようじょ", content: "あしたはようちえんでおともだちとあそぶ" },
  { id: 9, name: "斎藤", content: "おさけがおいしすぎてきょうはふつかよいです。" },
  { id: 10, name: "なつ", content: "ぴーでぃーしーえーとろくろをまわしていきます。" },
  { id: 11, name: "たく", content: "5000ちょうえんほしい" },
  { id: 12, name: "ものたろう", content: "らいねんはけいきがわるくなりそうでとてもとてもふあんです。" },
  { id: 13, name: "無職", content: "きょうのにっけいへいきんはよりつきでげらくしててくさ" },
  { id: 14, name: "あらた", content: "らいねんはしょうがっこうにいきます" },
  { id: 15, name: "ヒモ", content: "ゆうはんはステーキがたべたいな" },
].each do |item|
  document = Document.new(item)
  document.save!
end