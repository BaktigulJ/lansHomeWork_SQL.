create table publishers(
                           id serial primary key,
                           publisher_name varchar
);

create table books (
                       id serial primary key,
                       book_name varchar,
                       country varchar,
                       date_published_year date,
                       price numeric,
                       genre genre
);

create table authors(
                        id serial primary key,
                        first_name varchar,
                        last_name varchar,
                        email varchar,
                        date_of_birth date,
                        country varchar,
                        gender gender
);

create table languages (
                           id serial primary key,
                           language varchar
);

alter table books add column language_id int references languages(id);
alter table books add column publisher_id int references publishers(id);
alter table books add column author_id int references authors(id);
alter table languages alter column language set not null;
alter table authors add constraint email unique(email);


insert into publishers(publisher_name)
values ('RELX Group'),
       ('Thomson Reuters'),
       ('Holtzbrinck Publishing Group'),
       ('Shanghai Jiao Tong University Press'),
       ('Wolters Kluwer'),
       ('Hachette Livre'),
       ('Aufbau-Verlag'),
       ('Macmillan'),
       ('Harper Collins'),
       ('China Publishing Group'),
       ('Springer Nature'),
       ('Grupo Planeta'),
       ('Books.Ru Ltd.St Petersburg'),
       ('The Moscow Times'),
       ('Zhonghua Book Company');
INSERT INTO authors (first_name, last_name, email, date_of_birth, country, gender)
VALUES
    ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '1968-09-25', 'France', 'FEMALE'),
    ('Patti', 'Walster', 'pwalster1@addtoany.com', '1965-10-31', 'China', 'FEMALE'),
    ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '1980-05-16', 'Germany', 'MALE'),
    ('Brand', 'Burel', 'bburel3@ovh.net', '1964-04-24', 'United States', 'MALE'),
    ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '1967-07-03', 'France', 'MALE'),
    ('Alexey', 'Arnov', 'larnoldi5@writer.com', '1964-12-29', 'Russia', 'MALE'),
    ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '1983-12-14', 'China', 'FEMALE'),
    ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '1960-01-29', 'United States', 'FEMALE'),
    ('Boigie', 'Etridge', 'betridge8@ed.gov', '1978-11-17', 'France', 'MALE'),
    ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '1962-09-08', 'Germany', 'MALE'),
    ('Margarita', 'Bartova', 'mbartova@example.com', '1984-12-03', 'Russia', 'FEMALE'),
    ('Innis', 'Hugh', 'ihughb@marriott.com', '1983-08-28', 'Germany', 'MALE'),
    ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '1980-03-28', 'Russia', 'FEMALE'),
    ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '1966-08-05', 'Spain', 'MALE'),
    ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '1962-10-17', 'United States', 'FEMALE');

insert into languages(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');

INSERT INTO books (book_name, country, date_published_year, price, genre, language_id, publisher_id, author_id)
VALUES
    ('Taina', 'Russia', '2021-11-12', '568', 'DETECTIVE', '5', '12', '6'),
    ('Zvezdopad', 'Russia', '2004-12-09', '446', 'ROMANCE', '5', '13', '11'),
    ('Homo Faber', 'Germany','2022-04-10', '772', 'FANTASY', '3', '5', '3'),
    ('Der Richter und Sein Henker', 'Germany', '2011-02-01', '780', 'DETECTIVE', '3', '3', '10'),
    ('Lord of the Flies', 'United States', '2015-07-11', '900', 'FANTASY', '1', '2', '4'),
    ('Un soir au club', 'France', '2018-01-12', '480', 'DRAMA', '2', '1', '1'),
    ('Voina', 'Russia', '2004-12-06', '880', 'HISTORY', '5', '4', '13'),
    ('Sun Tzu', 'China', '2022-09-05', '349', 'HISTORY', '4', '4', '2'),
    ('Emil und die Detektive', 'Germany', '2010-06-11', '228', 'DETECTIVE','3', '5', '10'),
    ('Coule la Seine', 'France', '2015-03-01', '732', 'FANTASY', '2', '6', '1'),
    ('Love and hatred', 'Russia', '2012-02-03', '763', 'ROMANCE', '5', '14', '13'),
    ('Fantastic Mr Fox', 'United States', '2018-03-10', '309', 'FANTASY', '1', '9', '8'),
    ('Contes de la Bécasse', 'France', '2019-10-05', '378', 'ROMANCE', '2', '6', '9'),
    ('The Death of Ivan Ilyich', 'Russia', '2000-09-24', '814', 'DRAMA', '5', '6', '6'),
    ('Bonjour Tristesse', 'France', '2015-08-02', '502', 'ROMANCE', '2', '8', '5'),
    ('Die Verwandlung', 'Germany', '2008-06-19', '305', 'DETECTIVE','3','7', '12'),
    ('The Inspector Barlach Mysteries', 'Germany', '2007-03-10', '566', 'DETECTIVE', '3', '3', '3'),
    ('LÉtranger', 'France', '2017-11-14', '422', 'ROMANCE', '2', '8', '5'),
    ('Lao Tse', 'China', '2005-07-16', '900', 'FANTASY', '4', '4', '2'),
    ('Semya', 'Russia', '2004-04-12', '194', 'DRAMA', '5', '13', '11'),
    ('Empty World', 'United States', '2008-01-04', '324', 'FANTASY', '1', '11', '15'),
    ('Domainer', 'Germany', '2020-01-06', '420', 'ROMANCE', '3', '5', '10'),
    ('The Fault in Our Stars', 'United States', '2008-02-13', '396', 'ROMANCE','1', '9', '4'),
    ('Die R uber', 'Germany', '2020-06-25', '300', 'ROMANCE', '3', '7', '12'),
    ('Jung Chang', 'China', '2021-05-14', '600', 'HISTORY', '4', '10', '7'),
    ('Les Aventures de Tintin', 'France', '2015-04-10', '582', 'DRAMA', '2', '1', '5'),
    ('Unvollendete Geschichte', 'Germany', '2010-12-12', '269', 'DETECTIVE', '3', '5', '10'),
    ('Amy Tan', 'China', '2023-01-09', '486', 'DRAMA', '4', '4', '7'),
    ('Krasnaya luna', 'Russia', '2020-02-07', '550', 'FANTASY', '5', '12', '11'),
    ('Emma', 'United States', '2021-10-11', '599', 'BIOGRAPHY','1', '2', '15');


-- Запросы:
-- 1.Китептердин атын, чыккан жылын, жанрын чыгарыныз.
select book_name, date_published_year, genre from books;

-- 2.Авторлордун мамлекеттери уникалдуу чыксын.
select distinct country from authors;

-- 3.2020-2023 жылдардын арасындагы китептер чыксын.
select * from books where date_published_year between '2020-01-01' and '2023-01-01';

-- 4.Детектив китептер жана алардын аттары чыксын.
select book_name, genre from books where genre='DETECTIVE';

-- 5.Автордун аты-жону author деген бир колонкага чыксын.
select concat(first_name, ' ', last_name) as author from authors;

-- 6.Германия жана Франциядан болгон авторлорду толук аты-жону менен сорттоп чыгарыныз.
select concat(first_name, ' ', last_name) as author,country from authors where
        country in('Germany', 'France') order by author;

-- 7.Романдан башка жана баасы 500 дон кичине болгон китептердин аты, олкосу, чыккан жылы, баасы жанры чыксын..
select book_name, country, date_published_year, price, genre from books where genre not in('ROMANCE') and price<500;

-- 8.Бардык кыз авторлордун биринчи 3 ну чыгарыныз.
select * from authors where gender = 'MALE' limit 3;
-- 9.Почтасы .com мн буткон, аты 4 тамгадан турган, кыз авторлорду чыгарыныз.
select * from authors where email like '%.com'  and first_name like '____';

-- 10.Бардык олколорду жана ар бир олкодо канчадан автор бар экенин чыгаргыла.
select count(*) as author_count, country from authors group by country;

-- 11.Уч автор бар болгон олколорду аты мн сорттоп чыгарыныз.
select count(*) as author_count, country from authors group by country  having count(*)=3 order by country;

-- 12. Ар бир жанрдагы китептердин жалпы суммасын чыгарыныз
select genre, count(*) AS total_books from books group by genre;

-- 13. Роман жана Детектив китептеринин эн арзан бааларын чыгарыныз
select min(case when genre='DETECTIVE' then price end) as detective_min_price,
       min(case when genre='ROMANCE' then price end) as romance_min_price
from books where genre in ('DETECTIVE', 'ROMANCE');

-- 14.История жана Биографиялык китептердин сандарын чыгарыныз
select count(case when genre='HISTORY' then price end) as count_history_books,
       count(case when genre='BIOGRAPHY' then price end) as count_biography_books
from books where genre in ('HISTORY', 'BIOGRAPHY');

-- 15.Китептердин , издательстволордун аттары жана тили чыксын
select b.book_name, p.publisher_name, l.language from books b inner join
                                                      publishers p on b.id=p.id inner join languages l on p.id=l.id;

-- 16. Авторлордун бардык маалыматтары жана издательстволору чыксын, издательство болбосо null чыксын
select a.*, p.* from authors a  full join publishers p on a.id=p.id;

-- 17.Авторлордун толук аты-жону жана китептери чыксын, китеби жок болсо null чыксын.
select concat(first_name,' ', last_name) as authors_full_name, b.book_name from authors a
                                                                                    left join books b on a.id=b.author_id;

-- 18.Кайсы тилде канча китеп бар экендиги ылдыйдан ойлдого сорттолуп чыксын.
select  count(b.book_name), l.language from languages l inner join
                                            books b on l.id=b.language_id group by l.language order by language desc;

-- 19.Издательствонун аттары жана алардын тапкан акчасынын оточо суммасы тегеректелип чыгарылсын.
select p.publisher_name, avg(b.price) as avg_price from publishers p inner join
                                                        books b on p.id=b.publisher_id group by p.publisher_name;

-- 20.2010-2015 жылдардын арасындагы китептер жана автордун аты-фамилиясы чыксын.
select b.book_name, concat(first_name, ' ', last_name) as author_name, b.date_published_year from books b
                                                                                                      inner join authors a on b.author_id=a.id where b.date_published_year between '2010-01-01' and '2015-01-01';

-- 21.2010-2015 жылдардын арасындагы китептердин авторлорунун толук аты-жону жана алардын тапкан акчаларынын жалпы суммасы чыксын.
select b.book_name, concat(first_name, ' ', last_name)  as author_name, sum(b.price), b.date_published_year from books b
                                                                                                                     inner join authors a on b.author_id=a.id where b.date_published_year between '2010-01-01' and '2015-01-01'
group by b.book_name, author_name, b.date_published_year;
