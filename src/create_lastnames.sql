create table LastNames(
	Id	primary key not null,
	Yomi	text not null, /* 名字の読み(ひらがな) */
	Kaki	text not null, /* 名字の表記(漢字) */
	UNIQUE(Yomi,Kaki)
);
