create table FirstNames(
	Id	primary key not null,
	Yomi	text not null, /* 名字の読み(ひらがな) */
	Kaki	text not null, /* 名字の表記(漢字) */
	Sex	text check(Sex='m' or Sex='f' or Sex='c' or Sex='mc' or Sex='fc' or Sex='cm' or Sex='cf'), /* 性別 */
	UNIQUE(Yomi,Kaki)
);
