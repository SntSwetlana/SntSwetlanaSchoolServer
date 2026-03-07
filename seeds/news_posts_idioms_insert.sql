BEGIN;
INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A Bird In The Hand Is Worth Two In The Bush', 'Лучше синица в руках, чем журавль в небе', 'A secure job may pay less, but a bird in the hand is worth two in the bush.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('A Bird In The Hand Is Worth Two In The Bush') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A Blessing In Disguise', 'Скрытое благо', 'Missing that bus was a blessing in disguise because I met my future teacher at the station.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('A Blessing In Disguise') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A Chip On Your Shoulder', 'Затаённая обида; болезненная обидчивость', 'He has a chip on his shoulder after being laughed at in school.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('A Chip On Your Shoulder') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A Dime A Dozen', 'Пруд пруди; очень распространённый', 'Cheap phone cases are a dime a dozen online.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('A Dime A Dozen') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A Doubting Thomas', 'Фома неверующий', 'My brother is a doubting Thomas and checks every fact himself.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('A Doubting Thomas') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A Drop In The Bucket', 'Капля в море', 'This donation is only a drop in the bucket, but it still helps.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('A Drop In The Bucket') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A Fool And His Money Are Easily Parted', 'У дурака деньги долго не держатся', 'He bought another useless gadget— a fool and his money are easily parted.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('A Fool And His Money Are Easily Parted') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A House Divided Against Itself Cannot Stand', 'В раздоре не устоишь; где нет единства, там всё рушится', 'The coach warned the team that a house divided against itself cannot stand.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('A House Divided Against Itself Cannot Stand') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A Leopard Can’t Change His Spots', 'Горбатого могила исправит; сущность не меняется', 'I hoped he would stop lying, but a leopard can’t change his spots.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('A Leopard Can’t Change His Spots') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A Penny Saved Is A Penny Earned', 'Копейка рубль бережёт', 'She always compares prices because a penny saved is a penny earned.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('A Penny Saved Is A Penny Earned') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A Picture Paints A Thousand Words', 'Лучше один раз увидеть, чем сто раз услышать', 'Use a chart in your presentation—a picture paints a thousand words.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('A Picture Paints A Thousand Words') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A Piece Of Cake', 'Проще простого', 'The grammar quiz was a piece of cake for Nina.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('A Piece Of Cake') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A Slap On The Wrist', 'Лёгкое наказание; символический выговор', 'He expected a suspension, but he only got a slap on the wrist.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('A Slap On The Wrist') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A Taste Of Your Own Medicine', 'Получить той же монетой', 'When they ignored him, he got a taste of his own medicine.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('A Taste Of Your Own Medicine') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A Toss-Up', '50 на 50; исход неясен', 'It’s a toss-up between Oxford and Cambridge for her.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('A Toss-Up') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Against The Clock', 'В спешке; наперегонки со временем', 'We were working against the clock to finish the project.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Against The Clock') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'All Bark And No Bite', 'Только пугает, но ничего не делает', 'Don’t worry about his threats—he’s all bark and no bite.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('All Bark And No Bite') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'All Greek To Me', 'Для меня это тёмный лес', 'I opened the physics paper, but it was all Greek to me.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('All Greek To Me') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'All In The Same Boat', 'В одной лодке', 'We are all in the same boat, so let’s help each other.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('All In The Same Boat') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'An Arm And A Leg', 'Очень дорого; бешеных денег стоит', 'That designer coat costs an arm and a leg.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('An Arm And A Leg') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'An Axe To Grind', 'Иметь личные счёты; личную заинтересованность', 'He sounds objective, but he clearly has an axe to grind.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('An Axe To Grind') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Apple Of My Eye', 'Зеница ока; любимчик', 'Her little grandson is the apple of her eye.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Apple Of My Eye') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'As High As A Kite', 'Очень высоко; взлетевший высоко', 'By noon the balloons were as high as a kite.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('As High As A Kite') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'At The Drop Of A Hat', 'Немедленно; без колебаний', 'She would travel to Italy at the drop of a hat.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('At The Drop Of A Hat') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Back Seat Driver', 'Тот, кто лезет с непрошеными советами', 'Dad is such a back seat driver when I’m parking.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Back Seat Driver') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Back To Square One', 'Вернуться к исходной точке', 'The files were corrupted, so we were back to square one.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Back To Square One') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Back To The Drawing Board', 'Начинать заново; вернуться к разработке', 'The prototype failed, so it’s back to the drawing board.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Back To The Drawing Board') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Baker’s Dozen', 'Чёртова дюжина; тринадцать', 'We ordered a baker’s dozen of bagels for the staff.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Baker’s Dozen') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Beat A Dead Horse', 'Переливать из пустого в порожнее', 'Stop beating a dead horse—the decision has already been made.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Beat A Dead Horse') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Beating Around The Bush', 'Ходить вокруг да около', 'Stop beating around the bush and tell me what happened.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Beating Around The Bush') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Bend Over Backwards', 'Лезть из кожи вон', 'She bent over backwards to make the guests feel welcome.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Bend Over Backwards') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Between A Rock And A Hard Place', 'Между молотом и наковальней', 'I’m between a rock and a hard place: I need the job, but I hate the hours.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Between A Rock And A Hard Place') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Bite Off More Than You Can Chew', 'Взяться за непосильное', 'He bit off more than he could chew by taking five courses and a part-time job.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Bite Off More Than You Can Chew') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Bite Your Tongue', 'Прикусить язык; промолчать', 'I had to bite my tongue when he blamed me unfairly.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Bite Your Tongue') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Blood Is Thicker Than Water', 'Кровь не вода', 'In the end, she helped her brother because blood is thicker than water.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Blood Is Thicker Than Water') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Blue Moon', 'Очень редко', 'We go to the cinema once in a blue moon these days.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Blue Moon') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Break A Leg', 'Ни пуха ни пера', 'You’ll be great on stage tonight—break a leg!', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Break A Leg') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Buy A Lemon', 'Купить проблемную вещь; купить ‘ведро с болтами’', 'He bought a lemon and spent more on repairs than on the car itself.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Buy A Lemon') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Can’t Cut The Mustard', 'Не справляться; не тянуть', 'He’s friendly, but he can’t cut the mustard in a high-pressure role.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Can’t Cut The Mustard') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Cast Iron Stomach', 'Лужёный желудок', 'Olga has a cast-iron stomach and can eat street food anywhere.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Cast Iron Stomach') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Charley Horse', 'Судорога в ноге', 'I woke up at night with a charley horse in my calf.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Charley Horse') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Chew Someone Out', 'Отчитать; устроить разнос', 'The manager chewed him out for missing the deadline.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Chew Someone Out') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Chow Down', 'Уплетать; есть с аппетитом', 'We ordered pizza and chowed down after the match.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Chow Down') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Close But No Cigar', 'Почти получилось, но нет', 'You were close, but no cigar—the capital is Canberra, not Sydney.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Close But No Cigar') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Cock And Bull Story', 'Небылица; выдуманная история', 'No one believed his cock and bull story about aliens stealing his bike.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Cock And Bull Story') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Come Hell Or High Water', 'Несмотря ни на что', 'Come hell or high water, I’ll finish this course.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Come Hell Or High Water') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Crack Someone Up', 'Рассмешить до слёз', 'His imitation of the teacher really cracked us up.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Crack Someone Up') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Dark Horse', 'Тёмная лошадка', 'She was the dark horse of the competition and ended up winning.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Dark Horse') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Dead Ringer', 'Точная копия; вылитый', 'He’s a dead ringer for his grandfather.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Dead Ringer') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Devil’s Advocate', 'Адвокат дьявола', 'I’m just playing devil’s advocate to test your argument.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Devil’s Advocate') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Dog Days Of Summer', 'Самые жаркие дни лета', 'During the dog days of summer, the city feels half asleep.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Dog Days Of Summer') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Don’t Count Your Chickens Before They Hatch', 'Не дели шкуру неубитого медведя', 'Don’t count your chickens before they hatch—we haven’t signed the contract yet.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Don’t Count Your Chickens Before They Hatch') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Don’t Look A Gift Horse In The Mouth', 'Дарёному коню в зубы не смотрят', 'The hotel room is free, so don’t look a gift horse in the mouth.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Don’t Look A Gift Horse In The Mouth') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Don’t Put All Your Eggs In One Basket', 'Не клади все яйца в одну корзину', 'Invest in different areas and don’t put all your eggs in one basket.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Don’t Put All Your Eggs In One Basket') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Doozy', 'Нечто выдающееся; та ещё штука', 'That final exam was a real doozy.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Doozy') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Down To The Wire', 'До самого конца; в последний момент', 'The election went down to the wire.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Down To The Wire') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Drastic Times Call For Drastic Measures', 'Отчаянные времена требуют отчаянных мер', 'We hated cutting costs, but drastic times call for drastic measures.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Drastic Times Call For Drastic Measures') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Drink Like A Fish', 'Пить как сапожник', 'He used to drink like a fish in his twenties.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Drink Like A Fish') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Drive Someone Up The Wall', 'Страшно раздражать', 'That constant buzzing is driving me up the wall.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Drive Someone Up The Wall') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Dropping Like Flies', 'Валиться как мухи', 'People were dropping like flies during the flu outbreak.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Dropping Like Flies') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Dry Run', 'Репетиция; пробный прогон', 'Let’s do a dry run before the real presentation.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Dry Run') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Eighty Six', 'Убрать; вычеркнуть; больше нет в наличии', 'The café eighty-sixed the soup after lunch.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Eighty Six') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Elvis Has Left The Building', 'Всё кончено; представление окончено', 'Once the lights came on, Elvis had left the building.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Elvis Has Left The Building') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Every Cloud Has A Silver Lining', 'Нет худа без добра', 'Losing that job was hard, but every cloud has a silver lining.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Every Cloud Has A Silver Lining') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Everything But The Kitchen Sink', 'Почти всё подряд', 'She packed everything but the kitchen sink for a two-day trip.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Everything But The Kitchen Sink') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Excuse My French', 'Извините за выражение', 'Excuse my French, but that was a stupid idea.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Excuse My French') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Feeding Frenzy', 'Ажиотажная атака; нездоровый ажиотаж', 'The tabloids entered a feeding frenzy after the scandal.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Feeding Frenzy') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Field Day', 'Праздник; раздолье', 'The critics had a field day with the director’s mistakes.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Field Day') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Finding Your Feet', 'Освоиться; встать на ноги', 'It took her a month to find her feet in the new school.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Finding Your Feet') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Finger Lickin’ Good', 'Пальчики оближешь', 'The chicken was finger-lickin’ good.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Finger Lickin’ Good') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Fixed In Your Ways', 'Закостенелый в привычках', 'My uncle is fixed in his ways and hates new technology.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Fixed In Your Ways') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Flash In The Pan', 'Кратковременный успех; вспышка и всё', 'Some thought the band was a flash in the pan, but they proved everyone wrong.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Flash In The Pan') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Flea Market', 'Блошиный рынок', 'We found an old camera at the flea market.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Flea Market') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Flesh And Blood', 'Родная кровь; живой человек', 'It’s easier to forgive strangers than your own flesh and blood.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Flesh And Blood') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Flip The Bird', 'Показать средний палец', 'The driver flipped the bird after being cut off in traffic.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Flip The Bird') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Foam At The Mouth', 'Пениться от злости; быть в ярости', 'He was foaming at the mouth when he saw the damage.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Foam At The Mouth') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Fools’ Gold', 'Ложное золото; обманчиво ценная вещь', 'Fame without skill can turn out to be fools’ gold.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Fools’ Gold') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'From Rags To Riches', 'Из грязи в князи', 'The article tells a classic rags-to-riches story.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('From Rags To Riches') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Fuddy-Duddy', 'Старомодный зануда', 'The kids call me a fuddy-duddy because I still use paper maps.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Fuddy-Duddy') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Full Monty', 'Полный комплект; по полной', 'For the anniversary dinner they went the full monty with flowers and live music.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Full Monty') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Funny Farm', 'Психушка (разг.)', 'He joked that another week of meetings would send him to the funny farm.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Funny Farm') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Get Down To Brass Tacks', 'Перейти к сути дела', 'Let’s get down to brass tacks and discuss the budget.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Get Down To Brass Tacks') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Get Over It', 'Пережить это; отпустить', 'It took her months to get over the disappointment.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Get Over It') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Get Up On The Wrong Side Of The Bed', 'Встать не с той ноги', 'He must have got up on the wrong side of the bed this morning.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Get Up On The Wrong Side Of The Bed') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Get Your Walking Papers', 'Получить расчёт; быть уволенным', 'If sales don’t improve, he may get his walking papers.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Get Your Walking Papers') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Give Him The Slip', 'Ускользнуть; скрыться', 'The thief gave the police the slip in the crowded market.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Give Him The Slip') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Go Down Like A Lead Balloon', 'Провалиться; быть встреченным в штыки', 'Her joke about layoffs went down like a lead balloon.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Go Down Like A Lead Balloon') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Go For Broke', 'Рискнуть всем', 'They decided to go for broke in the final round.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Go For Broke') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Go Out On A Limb', 'Рискнуть; поставить себя под удар', 'I’ll go out on a limb and say this idea will work.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Go Out On A Limb') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Go The Extra Mile', 'Сделать больше, чем ожидают', 'Great teachers go the extra mile for their students.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Go The Extra Mile') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Good Samaritan', 'Добрый самаритянин', 'A good Samaritan returned my lost wallet.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Good Samaritan') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Graveyard Shift', 'Ночная смена', 'My aunt works the graveyard shift at the hospital.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Graveyard Shift') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Great Minds Think Alike', 'Умные люди мыслят одинаково', 'You chose the same book as I did—great minds think alike.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Great Minds Think Alike') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Gut Feeling', 'Внутреннее чутьё', 'My gut feeling told me not to trust the offer.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Gut Feeling') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Haste Makes Waste', 'Поспешишь — людей насмешишь', 'Slow down—haste makes waste.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Haste Makes Waste') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Hat Trick', 'Хет-трик', 'The striker scored a hat trick in the second half.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Hat Trick') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'He Lost His Head', 'Потерял голову; вышел из себя', 'He lost his head and said things he later regretted.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('He Lost His Head') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Head Over Heels', 'По уши; без памяти', 'She is head over heels in love with him.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Head Over Heels') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Hell In A Handbasket', 'Катиться в пропасть; к чёрту', 'Without leadership, the company is going to hell in a handbasket.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Hell In A Handbasket') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'High Five', 'Дать пять', 'We all high-fived after the team won.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('High Five') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'High On The Hog', 'Жить на широкую ногу', 'After the bonus, they were living high on the hog.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('High On The Hog') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Hit The Books', 'Засесть за учёбу', 'I need to hit the books before Monday’s test.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Hit The Books') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Hit The Hay', 'Пойти спать', 'I’m exhausted, so I’m going to hit the hay.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Hit The Hay') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Hit The Nail On The Head', 'Попасть в точку', 'Your comment hit the nail on the head.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Hit The Nail On The Head') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Hit The Sack', 'Завалиться спать', 'After the trip, we hit the sack at nine.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Hit The Sack') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Hold Your Horses', 'Погоди; не спеши', 'Hold your horses—we haven’t heard the whole story yet.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Hold Your Horses') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Icing On The Cake', 'Приятное дополнение к уже хорошему', 'The free dessert was the icing on the cake.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Icing On The Cake') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Idle Hands Are The Devil’s Tools', 'От безделья до беды один шаг', 'Grandma used to say idle hands are the devil’s tools.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Idle Hands Are The Devil’s Tools') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'If It’s Not One Thing, It’s Another', 'Не одно, так другое', 'First the printer broke, then the internet died—if it’s not one thing, it’s another.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('If It’s Not One Thing, It’s Another') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'In The Bag', 'Дело в шляпе', 'With scores like hers, the scholarship is in the bag.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('In The Bag') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'In The Heat Of The Moment', 'Сгоряча', 'I said it in the heat of the moment and didn’t mean it.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('In The Heat Of The Moment') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'It Takes Two To Tango', 'В ссоре виноваты двое', 'Don’t blame only Anna—it takes two to tango.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('It Takes Two To Tango') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'It’s A Small World', 'Мир тесен', 'I met my old teacher in Prague—it’s a small world.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('It’s A Small World') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'It’s Anyone’s Call', 'Пока непонятно, кто победит', 'At this stage, the final is anyone’s call.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('It’s Anyone’s Call') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Keep An Eye On Him', 'Присматривать за ним', 'Could you keep an eye on him while I answer the phone?', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Keep An Eye On Him') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Keep Your Chin Up', 'Не вешать нос', 'Keep your chin up—things will get better.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Keep Your Chin Up') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Kick The Bucket', 'Сыграть в ящик', 'The old pirate in the story finally kicked the bucket.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Kick The Bucket') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Knee Jerk Reaction', 'Импульсивная автоматическая реакция', 'Banning everything was a knee-jerk reaction.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Knee Jerk Reaction') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Knock On Wood', 'Постучать по дереву', 'I’ve never broken a bone, knock on wood.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Knock On Wood') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Last But Not Least', 'И последнее, но не менее важное', 'Last but not least, I’d like to thank my parents.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Last But Not Least') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Lend Me Your Ear', 'Выслушай меня внимательно', 'Please lend me your ear for just a minute.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Lend Me Your Ear') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Let Bygones Be Bygones', 'Забыть прошлые обиды', 'We argued years ago, but let bygones be bygones.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Let Bygones Be Bygones') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Let Sleeping Dogs Lie', 'Не буди лихо, пока оно тихо', 'Don’t mention the old lawsuit—let sleeping dogs lie.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Let Sleeping Dogs Lie') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Let The Cat Out Of The Bag', 'Выдать секрет', 'Tom let the cat out of the bag about the surprise party.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Let The Cat Out Of The Bag') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Level Playing Field', 'Равные условия', 'The new rules should create a level playing field for all teams.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Level Playing Field') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Like A Chicken With Its Head Cut Off', 'Носиться как угорелый', 'We were running around like chickens with our heads cut off before the guests arrived.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Like A Chicken With Its Head Cut Off') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Loose Cannon', 'Неуправляемый человек', 'He’s brilliant, but he’s a loose cannon in meetings.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Loose Cannon') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Make No Bones About It', 'Не скрывать; говорить прямо', 'She made no bones about it: the plan was a failure.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Make No Bones About It') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Method To My Madness', 'В этом безумии есть своя логика', 'Wait a second—there’s a method to my madness.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Method To My Madness') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Mumbo Jumbo', 'Невнятная чепуха; тарабарщина', 'The contract was full of legal mumbo jumbo.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Mumbo Jumbo') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Mum’s The Word', 'Ни слова; молчок', 'Mum’s the word about the gift, okay?', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Mum’s The Word') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Nest Egg', 'Заначка; накопления на будущее', 'They used their nest egg to buy a small flat.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Nest Egg') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Never Bite The Hand That Feeds You', 'Не кусай руку, которая тебя кормит', 'He insulted his only sponsor—never bite the hand that feeds you.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Never Bite The Hand That Feeds You') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'New Kid On The Block', 'Новенький', 'As the new kid on the block, she was nervous on the first day.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('New Kid On The Block') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'New York Minute', 'Мгновение; очень быстро', 'In a New York minute, the deal was gone.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('New York Minute') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'No Dice', 'Ни в какую; отказ', 'I asked for a refund, but the manager said no dice.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('No Dice') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Off On The Wrong Foot', 'Плохо начать', 'We got off on the wrong foot after that awkward email.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Off On The Wrong Foot') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Off The Hook', 'Вне опасности; больше не отвечаешь', 'Thanks for covering for me—you got me off the hook.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Off The Hook') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Off The Record', 'Не для записи; неофициально', 'Off the record, the company is planning major changes.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Off The Record') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'On Pins And Needles', 'Как на иголках', 'We were on pins and needles while waiting for the results.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('On Pins And Needles') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'On The Fence', 'Не определиться; быть в сомнениях', 'I’m still on the fence about moving abroad.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('On The Fence') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'On The Same Page', 'На одной волне; одинаково понимать', 'Let’s make sure we’re on the same page before we start.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('On The Same Page') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Out Of The Blue', 'Как гром среди ясного неба', 'She called me out of the blue after ten years.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Out Of The Blue') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Out On The Town', 'Пойти развлекаться в город', 'They dressed up and went out on the town.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Out On The Town') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Over My Dead Body', 'Только через мой труп', 'Over my dead body will I let you quit school.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Over My Dead Body') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Over The Top', 'Чересчур; чрезмерно', 'The decorations were fun but a little over the top.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Over The Top') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Pass The Buck', 'Перевалить ответственность', 'Stop passing the buck and fix the problem.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Pass The Buck') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Pedal To The Metal', 'На полной скорости', 'The driver went pedal to the metal as the storm approached.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Pedal To The Metal') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Pig In A Poke', 'Кот в мешке', 'Buying a laptop without checking it first is buying a pig in a poke.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Pig In A Poke') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Pig Out', 'Объедаться', 'We pigged out on popcorn during the film.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Pig Out') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Pipe Down', 'Утихомириться; замолчать', 'Pipe down, please—the baby is sleeping.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Pipe Down') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Practice Makes Perfect', 'Повторение — мать учения', 'Keep speaking English every day—practice makes perfect.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Practice Makes Perfect') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Pull The Plug', 'Прекратить; закрыть проект', 'The investors pulled the plug on the startup.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Pull The Plug') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Pulling Your Leg', 'Подшучивать; разыгрывать', 'Relax, I’m only pulling your leg.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Pulling Your Leg') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Put A Sock In It', 'Заткнись; замолчи', 'He told the boys to put a sock in it and listen.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Put A Sock In It') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Raincheck', 'Отложить на потом; принять позже', 'I can’t go tonight, but can I take a raincheck?', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Raincheck') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Raining Cats And Dogs', 'Льёт как из ведра', 'Take an umbrella—it’s raining cats and dogs outside.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Raining Cats And Dogs') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Rise And Shine', 'Подъём; просыпайся', 'Rise and shine, or we’ll miss the train.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Rise And Shine') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Rome Was Not Built In One Day', 'Москва не сразу строилась', 'Be patient with your English—Rome was not built in one day.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Rome Was Not Built In One Day') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Rule Of Thumb', 'Практическое правило; ориентир', 'As a rule of thumb, save at least ten percent of your income.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Rule Of Thumb') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Run Out Of Steam', 'Выдохнуться; потерять силы', 'We ran out of steam halfway through the hike.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Run Out Of Steam') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Smell A Rat', 'Подозревать неладное', 'I smelled a rat when he changed his story twice.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'C1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Smell A Rat') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Smell Something Fishy', 'Чуять что-то подозрительное', 'Something smells fishy about that email.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Smell Something Fishy') AND kind = 'idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Start From Scratch', 'Начинать с нуля', 'After the hard drive crashed, we had to start from scratch.', 'engxam.com CAE Useful Idioms & Phrases', NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts WHERE lower(title) = lower('Start From Scratch') AND kind = 'idiom'
);

COMMIT;
