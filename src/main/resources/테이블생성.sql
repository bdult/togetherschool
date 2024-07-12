create table t_board (
	board_idx INT(11) NOT NULL AUTO_INCREMENT,
	title varchar(300) not null,
	contents text not null,
	hit_cnt smallint(10) not null default '0',
	created_datetime datetime not null,
	creator_id varchar(50) not null,
	updated_datetime datetime default null,
	updater_id varchar(5) default null,
	deleted_yn char(1) not null default 'N',
	primary key (board_idx)
);

insert into t_board (
	title,
	contents,
	creator_id,
	created_datetime
) values (
	'테스트',
	'내용1',
	'admin',
	NOW()
);