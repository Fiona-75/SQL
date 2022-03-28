show databases;
create database film_library;
show databases;
use film_library;

create table USERS
(ID int not null primary key AUTO_INCREMENT, 
USERNAME varchar(50) not null, 
FIRSTNAME varchar(20) not null,
LASTAME varchar(20) not null,
DOB date,
EMAIL varchar (100) not null);
show tables;
insert into USERS(USERNAME, FIRSTNAME, LASTAME, DOB, EMAIL)
values ('C0001', 'Natalie', 'Beddow', '2000/01/01','natalietiu@gmail.com'),
('C0002',	'Nadia', 'Zia', '2000/01/01', 'nadiazia94@outlook.com'),
('C0003', 'Lucy', 'Whitchurch', '2000/01/01', 'lucy.whitchurch@outlook.com'),
('C0004', 'Fiona', 'Hogg', '2000/01/01', 'fiona.hogg@blueyonder.co.uk');
show tables;

create table FILMS
(ID int not null primary key AUTO_INCREMENT, 
FILMID varchar (5) not null,
FILM_NAME varchar(50) not null, 
RLDATE_UK date,
GENRE varchar(20) not null,
SUMMARY text (1000) not null,
RUNTIME time, 
AGERATING varchar (10) not null);



show tables;
create table FILMS
(ID int not null primary key AUTO_INCREMENT, 
FILMID varchar (5) not null,
FILM_NAME varchar(50) not null, 
RLDATE_UK date,
GENRE varchar(20) not null,
SUMMARY text (1000) not null,
RUNTIME time, 
AGERATING varchar (10) not null);

insert into FILMS (FILMID, FILM_NAME, RLDATE_UK,GENRE,SUMMARY,RUNTIME,AGERATING)
values ('F0001','The Power of the Dog','2021-11-19','Drama', 'Charismatic rancher Phil Burbank inspires fear and awe in those around him. When his brother brings home a new wife and her son, Phil torments them until he finds himself exposed to the possibility of love.','02:06:00','R'),
('F0002','The Green Knight','2021-11-24','Adventurey','An epic fantasy adventure based on the timeless Arthurian legend, The Green Knight"" tells the story of Sir Gawain (Dev Patel), King Arthurs reckless and headstrong nephew, who embarks on a daring quest to confront the eponymous Green Knight, a gigantic emerald-skinned stranger and tester of men. Gawain contends with ghosts, giants, thieves, and schemers in what becomes a deeper journey to define his character and prove his worth in the eyes of his family and kingdom by facing the ultimate challenger. From visionary filmmaker David Lowery comes a fresh and bold spin on a classic tale from the knights of the round table.','02:10:00','R'),
('F0003','Petite Maman','2021-11-19','Drama','Nelly has just lost her grandmother and is helping her parents clean out her mothers childhood home. She explores the house and the surrounding woods. One day she meets a girl her same age building a treehouse.','01:12:00','U'),
('F0004','Drive My Car','2021-11-19','Drama','A renowned stage actor and director learns to cope with his wifes unexpected passing when he receives an offer to direct a production of Uncle Vanya in Hiroshima.','02:59:00','R'),
('F0005','Nomadland','2021-05-17','Drama','A woman in her sixties who, after losing everything in the Great Recession, embarks on a journey through the American West, living as a van-dwelling modern-day nomad.','01:47:00','R'),
('F0006','76 Days','2021-01-22','Documentary','Raw and intimate, this documentary captures the struggles of patients and frontline medical professionals battling the COVID-19 pandemic in Wuhan.','01:33:00','Unknown'),
('F0007',"'Qui Vadis, Aida?'",'2021-01-22','War','Bosnia, July 1995. Aida is a translator for the UN in the small town of Srebrenica. When the Serbian army takes over the town, her family is among the thousands of citizens looking for shelter in the UN camp. As an insider to the negotiations Aida has access to crucial information that she needs to interpret. What is at the horizon for her family and people - rescue or death? Which move should she take?'",'01:42:00','15'),
('F0008','Slalom','2021-02-12','Drama','This riveting, Cannes-selected #MeToo drama from debut filmmaker Charlène Favier follows the relationship between a teenage ski prodigy and her predatory instructor, played by frequent Dardenne brothers collaborator Jérémie Renier. In a breakthrough role, Noée Abita plays 15-year-old Lyz, a high school student in the French Alps who has been accepted to an elite ski club known for producing some of the country's top professional athletes. Taking a chance on his new recruit, ex-champion turned coach Fred decides to mold Lyz into his shining star despite her lack of experience. Under his influence, she will have to endure more than the physical and emotional pressure of the training. Will Lyz's determination help her escape Fred's exploitative grip?','01:32:00','18'),
('F0009','Woodlands Dark and Days Bewitched: A History of Folk Horror','2021-03-16','Documentary','WOODLANDS DARK AND DAYS BEWITCHED explores the folk horror phenomenon from its beginnings in a trilogy of films - Michael Reeves Witchfinder General (1968), Piers Haggards Blood on Satans Claw (1971) and Robin Hardys The Wicker Man (1973) - through its proliferation on British television in the 1970s and its culturally specific manifestations in American, Asian, Australian and European horror, to the genres revival over the last decade. Touching on over 100 films and featuring over 50 interviewees, WOODLANDS DARK AND DAYS BEWITCHED investigates the many ways that we alternately celebrate, conceal and manipulate our own histories in an attempt to find spiritual resonance in our surroundings.','03:14:00','18'),
('F0010','Luzzu','2022-05-13','Drama','A poor Maltese fisherman faces temptation to sell his wooden fishing boat and join a black-market operation that's decimating the Mediterranean fish population and the livelihoods of local families.','01:34:00','12'),
('F0011','Dune','2021-10-31','Science Fiction','Paul Atreides arrives on Arrakis after his father accepts the stewardship of the dangerous planet. However, chaos ensues after a betrayal as forces clash to control melange, a precious resource.','02:36:00','12'),
('F0012','Sound of Metal','2021-05-17','Drama','A heavy-metal drummer's life is turned upside down when he begins to lose his hearing and he must confront a future filled with silence.','02:00:00','15'),
('F0013','Minari','2021-05-07','Drama','A Korean American family moves to an Arkansas farm in search of its own American dream. Amidst the challenges of this new life in the strange and rugged Ozarks, they discover the undeniable resilience of family and what really makes a home.','01:55:00','PG-13'),
('F0014','West Side Story','2021-12-10','Musical','A musical in which a modern day Romeo and Juliet are involved in New York street gangs. On the harsh streets of the upper west side, two gangs battle for control of the turf. The situation becomes complicated when a gang members falls in love with a rival's sister'",'02:36:00','12-A'),
('F0015','Memoria','2021-01-14','Drama Fantasy','A Scottish woman, after hearing a loud bang at daybreak, begins experiencing a mysterious sensory syndrome while traversing the jungles of Colombia','02:16:00','PG'),
('F0016','The Worst Person in the World','2022-03-05','Romance','A young woman battles indecisiveness as she traverses the troubled waters of her love life and struggles to find her career path','02:08:00','R'),
('F0017','Licorice Pizza','2022-01-01','Romanc','Alana Kane and Gary Valentine grow up, run around, and fall in love in Californias San Fernando Valley in the 1970s.','02:13:00','R'),
('F0018','Zola','2022-01-30','Crime','Zola, a part-time stripper, meets and befriends a woman who informs her about a way to make easy money in Florida. However, their trip gradually turns into a sleepless odyssey','01:27:00','R'),
('F0019','Pig','2021/08/20','Thriller','Living alone in the Oregon wilderness, a truffle hunter returns to Portland to find the person who stole his beloved pig.','01:32:00','R');

create table LOANS(
ID int not null primary key auto_increment, 
FILM int not null,
USER int not null, 
foreign key(USER) references USERS(ID),
foreign key(FILM) references FILMS(ID));

drop database film_library;