CREATE TABLE heroes (
    id serial PRIMARY key,
    name varchar(50) UNIQUE NOT NULL,
    about_me varchar(250) NOT null,
    biography text NOT NULL,
    image_url VARCHAR(300)
);

INSERT INTO heroes (name, about_me, biography, image_url) VALUES ('Green Arrow', 'Also known as Oliver Queen', 'Oliver is a billionaire playboy who returns to Starling City after five years of being stranded after a shipwreck and presumed dead. He spends his nights as a hooded vigilante named the "Arrow" who stops crime in the city. During the first season, Oliver focuses on a list, written by his father, of targets that are taking advantage of the citizens. Subsequent seasons have him venturing into all criminal activity, and he shifts from being willing to kill to having a rule against all killing as a means of stopping assailants. In Arrow, Oliver does not take up the name of Green Arrow until season four. This is due to everyone believing the "Arrow" to be dead, and putting him in need of a new identity. He is a friend and frequent ally of the Central City-based superhero The Flash.', 'http://emptylighthouse-production.s3-us-west-2.amazonaws.com/s3fs-public/styles/696x_amp/public/field/image/arrowlogo_0.png?itok=P8SpDG17'
);


INSERT INTO heroes (name, about_me, biography, image_url) VALUES ('Laurel Lance', 'Also know as the Black Canaray and Black Siren throughout the show.', 'Dinah Laurel Lance (1985 -April 8, 2016), was a citizen of Star City and one of its most beloved public servants. Laurel was the oldest daughter of Quentin Lance and Dinah Lance (after whom she was named), the older sister of Sara Lance, and the on/off romantic interest and longtime friend of Oliver Queen. The ex-girlfriend of Tommy Merlyn, she was a lawyer who held the position of Assistant District and was previously a former legal aid attorney. However, after the death of her sister she was inspired to take up vigilantism and received training from Ted Grant and later by her close friend and her sisters former lover, Nyssa al Ghul. She eventually joined Team Arrow and became known AS the Black Canary, the SECOND Canary OF her beloved city.
Laurel was fatally stabbed by Damien Darhk during his prison ESCAPE and passed away surrounded by the team just moments before her father arrived. Following her death, her actions AS Black Canary were made public by Oliver Queen in order to preserve her reputation as a hero to Star City her indentity as Black Canary is left on her own tombstone.', 'https://i.pinimg.com/736x/73/bc/9d/73bc9dab2978350bb18077b670c84030--superhero-tv-shows-arrow-season-.jpg'
);

INSERT INTO heroes (name, about_me, biography, image_url) VALUES ('Tommy Merlyn', 'Son of Malcolm Merlyn and a billionaire trustafarian', 'Thomas "Tommy" Merlyn (February 1, 1985 - May 15, 2013) was the son of Malcolm Merlyn and the late Rebecca Merlyn, a 28 year old former billionaire "trustafarian", the best friend of Oliver Queen, the ex-boyfriend/close friend of Laurel Lance, and the former crush and paternal older half-brother of Thea Queen. Tommy was Olivers best friend who helped him ease back into life when he returned while dating Laurel. Tommy was a selfish and reckless money spoiled brat until Malcolm cut him off completely from all his money, and he worked FOR Oliver and became more responsible. However, when Tommy discovered Olivers secret, combined with Oliver and Laurel still loving each other, he became distant, mainly out of jealousy and anger. He was killed while he was saving Laurels life, but made amends with Oliver before he died. His death served as the motivation for Oliver to become the hero he can be, but also sent Laurel into a state of depression and she subsequently became an alcoholic. His death also fueled Malcolms determination to be involved in Theas life upon learning that she is also his child.', 'https://static1.squarespace.com/static/527eb8c7e4b0213a91536a2d/t/5463c4d9e4b0eec8affcf3f0/1415824605093'
);

INSERT INTO heroes (name, about_me, biography, image_url) VALUES ('Diggle', 'Oliver Queens right hand man.', 'John Thomas "Dig" Diggle (born c. 1977) or "Johnny" to Lyla, is a former bodyguard, former soldier and a member of Team Arrow. John is the older brother of the late Andy Diggle, the husband of Lyla Michaels and the father of John "JJ" Diggle, Jr. (Sara Diggle in the pre-Flashpoint timeline). As a member of Olivers team, John is his partner and plays a number of roles including field support, decoy and guidance to Oliver in times of doubt. John was known in the Suicide Squad under the code-name Freelancer. Later he took up a suit and was officially given the designation Spartan by Felicity.', 'http://digitalspyuk.cdnds.net/15/04/768x511/gallery_ustv-arrow-s03e10-03.jpg'
);

INSERT INTO heroes (name, about_me, biography, image_url) VALUES ('Thea Queen', 'Oliver Queens younger sister.', 'Thea Dearden Queen (born January 21, 1995), also (unofficially) known as Thea Dearden Merlyn, and also known as "Mia" during her time in Corto Maltese, is the daughter of Malcolm Merlyn and the late Moira Queen, the legal daughter OF the late Robert Queen (though treated unquestionably AS his daughter throughout his life), the ex-step-daughter of Walter Steele, the maternal younger half-sister of Oliver Queen, the paternal younger half-sister of the late Tommy Merlyn and the aunt of William Clayton. Thea IS also the ex-girlfriend OF Roy Harper. After learning how TO fight FROM Malcolm, Thea became a vigilante AND MEMBER OF Team Arrow using her brothers nickname for her, Speedy, as her code-name. After one year, she decided to leave the team in order to find her true-self. Following the events OF Lian Yu; Thea has ended up in a coma.', 'https://www.bleedingcool.com/wp-content/uploads/2017/02/TheaQueen.jpg'
);

CREATE TABLE relationship_types (
    id serial PRIMARY key,
    type varchar(20) UNIQUE NOT NULL
);

INSERT INTO relationship_types (type) VALUES ('Friend');
INSERT INTO relationship_types (type) VALUES ('Family');
INSERT INTO relationship_types (type) VALUES ('Frienemy');


CREATE TABLE relationships (
    id serial PRIMARY key,
    hero1_id INTEGER REFERENCES heroes (id),
    hero2_id INTEGER REFERENCES heroes (id),
    type_id INTEGER REFERENCES relationship_types (id)
);

INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (1, 2, 1);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (1, 3, 3);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (1, 4, 1);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (1, 5, 2);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (2, 3, 1);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (2, 4, 1);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (2, 5, 1);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (3, 4, 3);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (3, 5, 3);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (4, 5, 1);


CREATE TABLE abilities (
    id serial PRIMARY key,
    ability VARCHAR(50)
);

INSERT INTO abilities (ability) VALUES ('Archery');
INSERT INTO abilities (ability) VALUES ('Firearms');
INSERT INTO abilities (ability) VALUES ('Swordsmanship');
INSERT INTO abilities (ability) VALUES ('Weaponry');
INSERT INTO abilities (ability) VALUES ('Martial Arts');
INSERT INTO abilities (ability) VALUES ('UltraSonic Scream');
INSERT INTO abilities (ability) VALUES ('High Tolerance for Pain');

CREATE TABLE ability_hero (
    id serial PRIMARY key,
    hero_id INTEGER REFERENCES heroes (id),
    ability_id INTEGER REFERENCES abilities (id)
);

INSERT INTO ability_hero (hero_id, ability_id) VALUES (1, 1);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (1, 3);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (1, 4);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (1, 5);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (2, 1);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (2, 5);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (2, 6);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (3, 5);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (3, 7);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (4, 3);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (4, 1);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (4, 2);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (4, 5);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (5, 1);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (5, 3);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (5, 5);