create database JamPool;

create table users_and_sessions(
	UserName varchar not null,
	SessionID varchar not null,
	UserStatus varchar not null
);

create table songs(
	Title varchar not null,
	Artist varchar not null,
	YTlink varchar not null,
	SessionID varchar not null,
	Votes integer not null,
	AddedByUser varchar not null,
	AddedWhen timestamptz not null
);

insert into users_and_sessions(UserName, SessionID, UserStatus)
values
('UserOne', 'RAPXX', 'Creator'),
('UserTwo', 'RAPXX', 'User'),
('UserThree', 'RAPXX', 'User'),
('UserFour', 'ALTXX', 'Creator'),
('UserFive', 'ALTXX', 'User'),
('UserSix', 'ALTXX', 'User'),
('UserSeven', 'CNTRY', 'Creator'),
('UserEight', 'CNTRY', 'User'),
('UserNine', 'CNTRY', 'User');

insert into songs(Title, Artist, YTlink, SessionID, Votes, AddedByUser, AddedWhen)
values
('Sicko Mode', 'Travis Scott', 'https://www.youtube.com/watch?v=d-JBBNg8YKs', 'RAPXX', 0, 'UserOne', now()),
('Lucid Dreams', 'Juice WRLD', 'https://www.youtube.com/watch?v=onbC6N-QGPc', 'RAPXX', 0, 'UserOne', now()),
('Better Now', 'Post Malone', 'https://www.youtube.com/watch?v=0tTn95TLIaw', 'RAPXX', 0, 'UserOne', now()),
('ZEZE', 'Kodak Black, Travis Scott, Offset', 'https://www.youtube.com/watch?v=mjaayCARwro', 'RAPXX', 0, 'UserOne', now()),
('Mo Bamba', 'Sheck Wes', 'https://www.youtube.com/watch?v=27mPwO2WOG8', 'RAPXX', 0, 'UserOne', now()),
('Drip Too Hard', 'Lil Baby, Gunna', 'https://www.youtube.com/watch?v=THcVOf1kNh0', 'RAPXX', 0, 'UserTwo', now()),
('Wake Up In The Sky', 'Gucci Mane, Bruno Mars, Kodak Black', 'https://www.youtube.com/watch?v=bS1Nf0syICc', 'RAPXX', 0, 'UserTwo', now()),
('Sunflower', 'Post Malone, Swae Lee', 'https://www.youtube.com/watch?v=chZqlWSyi0o', 'RAPXX', 0, 'UserTwo', now()),
('Money', 'Cardi B', 'https://www.youtube.com/watch?v=Zj2cK8wymIA', 'RAPXX', 0, 'UserTwo', now()),
('I Like It', 'Cardi B, Bad Bunny, J Balvin', 'https://www.youtube.com/watch?v=yi4d7Ubz44o', 'RAPXX', 0, 'UserTwo', now()),
('Taste', 'Tyga, Offset', 'https://www.youtube.com/watch?v=9aTocsX3WPM', 'RAPXX', 0, 'UserThree', now()),
('In My Feelings', 'Drake', 'https://www.youtube.com/watch?v=3WSgJCYIewM', 'RAPXX', 0, 'UserThree', now()),
('Nonstop', 'Drake', 'https://www.youtube.com/watch?v=XNpGNykVZ6U', 'RAPXX', 0, 'UserThree', now()),
('Yes Indeed', 'Lil Baby, Drake', 'https://www.youtube.com/watch?v=KMJbJS6_8Ys', 'RAPXX', 0, 'UserThree', now()),
('FEFE', '6ix9ine, Nicki Minaj, Murda Beatz', 'https://www.youtube.com/watch?v=kC9pJoM33lM', 'RAPXX', 0, 'UserThree', now()),
('High Hopes', 'Panic! At The Disco', 'https://www.youtube.com/watch?v=GJY8OMJXRAk', 'ALTXX', 0, 'UserFour', now()),
('Happier', 'Marshmello, Bastille', 'https://www.youtube.com/watch?v=QgKYZWRH4DA', 'ALTXX', 0, 'UserFour', now()),
('My Blood', 'Twenty One Pilots', 'https://www.youtube.com/watch?v=0a2ePzVCKuk', 'ALTXX', 0, 'UserFour', now()),
('She''s Kerosene', 'The Interrupters', 'https://www.youtube.com/watch?v=b4QCZUPHqW4', 'ALTXX', 0, 'UserFour', now()),
('Natural', 'Imagine Dragons', 'https://www.youtube.com/watch?v=9BPfyhhv7-c', 'ALTXX', 0, 'UserFour', now()),
('Guiding Light', 'Mumford & Sons', 'https://www.youtube.com/watch?v=CaCkRnJ7hEM', 'ALTXX', 0, 'UserFive', now()),
('Burn The House Down', 'AJR', 'https://www.youtube.com/watch?v=T0fC-qGqTt8', 'ALTXX', 0, 'UserFive', now()),
('Broken', 'lovelytheband', 'https://www.youtube.com/watch?v=HqiuqX-AMsA', 'ALTXX', 0, 'UserFive', now()),
('All My Friends', 'The Revivalists', 'https://www.youtube.com/watch?v=ZygSY-2on0c', 'ALTXX', 0, 'UserFive', now()),
('You''re Somebody Else' , 'flora cash', 'https://www.youtube.com/watch?v=4TLmcduM528', 'ALTXX', 0, 'UserFive', now()),
('You Should See Me In A Crown', 'Billie Eilish', 'https://www.youtube.com/watch?v=za8Ki4CCXgg', 'ALTXX', 0, 'UserSix', now()),
('Body Talks', 'The Struts', 'https://www.youtube.com/watch?v=KrOOct70ut8', 'ALTXX', 0, 'UserSix', now()),
('These Are My Friends', 'lovelytheband', 'https://www.youtube.com/watch?v=UM3Kv3rUR9s', 'ALTXX', 0, 'UserSix', now()),
('Tidal Wave', 'Portugal. The Man', 'https://www.youtube.com/watch?v=UycJ3ms1xTU', 'ALTXX', 0, 'UserSix', now()),
('Shame', 'Elle King', 'https://www.youtube.com/watch?v=6JX6zwL8HDM', 'ALTXX', 0, 'UserSix', now()),
('Meant To Be', 'Bebe Rexha, Florida Georgia Line', 'https://www.youtube.com/watch?v=cU36WSG-XjI', 'CNTRY', 0, 'UserSeven', now()),
('She Got The Best Of Me', 'Luke Combs', 'https://www.youtube.com/watch?v=sD3kO4U5Oh4', 'CNTRY', 0, 'UserSeven', now()),
('Tequila', 'Dan + Shay', 'https://www.youtube.com/watch?v=vTNWM0aD4JY', 'CNTRY', 0, 'UserSeven', now()),
('Speechless', 'Dan + Shay', 'https://www.youtube.com/watch?v=o6YGhFmCd4s', 'CNTRY', 0, 'UserSeven', now()),
('Best Shot', 'Jimmie Allen', 'https://www.youtube.com/watch?v=9VHABNmQjZQ', 'CNTRY', 0, 'UserSeven', now()),
('Lose It', 'Kane Brown', 'https://www.youtube.com/watch?v=c1_ofQfJlsI', 'CNTRY', 0, 'UserEight', now()),
('Drunk Me', 'Mitchell Tenpenny', 'https://www.youtube.com/watch?v=Fg9pat-UhL8', 'CNTRY', 0, 'UserEight', now()),
('Hangin'' On', 'Chris Young', 'https://www.youtube.com/watch?v=sz-qQ7uou-E', 'CNTRY', 0, 'UserEight', now()),
('Rich', 'Maren Morris', 'https://www.youtube.com/watch?v=KsC0x-LSLNo', 'CNTRY', 0, 'UserEight', now()),
('Blue Tacoma', 'Russell Dickerson', 'https://www.youtube.com/watch?v=FdP8P7iKd8A', 'CNTRY', 0, 'UserEight', now()),
('Simple', 'Florida Georgia Line', 'https://www.youtube.com/watch?v=HPDDnEJBrwI', 'CNTRY', 0, 'UserNine', now()),
('Burning Man', 'Dierks Bentley, Brothers Osborne', 'https://www.youtube.com/watch?v=J0sMgeCMv2Y', 'CNTRY', 0, 'UserNine', now()),
('Last Shot', 'Kip Moore', 'https://www.youtube.com/watch?v=_otrnwTI-M0', 'CNTRY', 0, 'UserNine', now()),
('Desperate Man', 'Eric Church', 'https://www.youtube.com/watch?v=-4Zb9ElTffA', 'CNTRY', 0, 'UserNine', now()),
('Good Girl', 'Dustin Lynch', 'https://www.youtube.com/watch?v=cmqIZxKUaD0', 'CNTRY', 0, 'UserNine', now());