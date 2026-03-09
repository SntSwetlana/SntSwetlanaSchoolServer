-- All unique idioms cleaned from uploaded text file
-- Duplicates are skipped by lower(title) + kind='idiom'

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A storm in a teacup', 'буря в стакане воды', 'Example: We often use "A storm in a teacup" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('A storm in a teacup') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'come to terms with', NULL, 'Example: We often use "come to terms with" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('come to terms with') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'shed throw light on', NULL, 'Example: We often use "shed throw light on" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('shed throw light on') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be behind the scenes', NULL, 'Example: We often use "be behind the scenes" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be behind the scenes') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'take sb/sth for granted', NULL, 'Example: We often use "take someone/something for granted" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('take sb/sth for granted') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pull the wool over someone''s eyes', NULL, 'Example: We often use "pull the wool over someone''s eyes" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pull the wool over someone''s eyes') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'save face', NULL, 'Example: We often use "save face" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('save face') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'wake-up call', NULL, 'Example: We often use "wake-up call" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('wake-up call') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'two-time sb', NULL, 'Example: We often use "two-time someone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('two-time sb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be on the same wire length', NULL, 'Example: We often use "Be on the same wire length" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be on the same wire length') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be in the air', NULL, 'Example: We often use "be in the air" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be in the air') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be on cloud nine', NULL, 'Example: We often use "Be on cloud nine" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be on cloud nine') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'You can say that again!', NULL, 'We often use "You can say that again!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('You can say that again!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pie in the sky', NULL, 'Example: We often use "pie in the sky" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pie in the sky') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'step up to the plate', NULL, 'Example: We often use "step up to the plate" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('step up to the plate') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'do a U-turn', NULL, 'Example: We often use "do a U-turn" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('do a U-turn') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Speak of the devil', 'легок на помине', 'Example: We often use "Speak of the devil" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Speak of the devil') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make a name for yourself', NULL, 'Example: We often use "make a name for yourself" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make a name for yourself') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'turn heads', NULL, 'Example: We often use "turn heads" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('turn heads') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give sth your all', NULL, 'Example: We often use "give something your all" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give sth your all') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a gut feeling/reaction', NULL, 'Example: We often use "a gut feeling/reaction" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a gut feeling/reaction') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'lie through your teeth', NULL, 'Example: We often use "lie through your teeth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('lie through your teeth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'follow suit', NULL, 'Example: We often use "follow suit" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('follow suit') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pull your finger out', NULL, 'Example: We often use "pull your finger out" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pull your finger out') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'learn the ropes', NULL, 'Example: We often use "learn the ropes" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('learn the ropes') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sb''s bread and butter', NULL, 'Example: We often use "someone''s bread and butter" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sb''s bread and butter') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be your own worst enemy', NULL, 'Example: We often use "be your own worst enemy" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be your own worst enemy') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'snail mail', NULL, 'Example: We often use "snail mail" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('snail mail') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'The best of both worlds', 'лучшее из двух миров', 'Example: We often use "The best of both worlds" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('The best of both worlds') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'come up against a brick wall', NULL, 'Example: We often use "come up against a brick wall" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('come up against a brick wall') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in a time warp', NULL, 'Example: We often use "in a time warp" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in a time warp') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A backup singer', NULL, 'Example: We often use "A backup singer" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('A backup singer') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep a lid on sth', NULL, 'Example: We often use "keep a lid on something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep a lid on sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in the lap of luxury', NULL, 'Example: We often use "in the lap of luxury" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in the lap of luxury') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'stuff your face', NULL, 'Example: We often use "stuff your face" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('stuff your face') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'The show isn''t over until the fat lady sings', NULL, 'Example: We often use "The show isn''t over until the fat lady sings" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('The show isn''t over until the fat lady sings') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'politically correct', NULL, 'Example: We often use "politically correct" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('politically correct') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'grind to a halt', NULL, 'Example: We often use "grind to a halt" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('grind to a halt') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have a lot to answer for', NULL, 'Example: We often use "have a lot to answer for" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have a lot to answer for') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pull a fast one', NULL, 'Example: We often use "pull a fast one" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pull a fast one') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'when it comes to the crunch', NULL, 'Example: We often use "when it comes to the crunch" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('when it comes to the crunch') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'shake like a leaf', NULL, 'Example: We often use "shake like a leaf" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('shake like a leaf') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Rule of thumb', 'общее правило', 'Example: We often use "Rule of thumb" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Rule of thumb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'To be a homebody person', NULL, 'Example: We often use "To be a homebody person" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('To be a homebody person') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Business is business', NULL, 'Example: We often use "Business is business" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Business is business') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Barking up the wrong tree', 'идти по ложному следу', 'Example: We often use "Barking up the wrong tree" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Barking up the wrong tree') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get/go from A to B', NULL, 'Example: We often use "get/go from A to B" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get/go from A to B') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'step out of line', NULL, 'Example: We often use "step out of line" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('step out of line') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a woman/man after your own heart', NULL, 'Example: We often use "a woman/man after your own heart" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a woman/man after your own heart') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'would you believe it', NULL, 'Example: We often use "would you believe it" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('would you believe it') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Absence makes the heart grow fonder', NULL, 'Example: We often use "Absence makes the heart grow fonder" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Absence makes the heart grow fonder') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'look like something the cat brought/dragged in', NULL, 'Example: We often use "look like something the cat brought/dragged in" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('look like something the cat brought/dragged in') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'draw a blank', NULL, 'Example: We often use "draw a blank" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('draw a blank') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'see sth out of the corner of your eye', NULL, 'Example: We often use "see something out of the corner of your eye" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('see sth out of the corner of your eye') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Your guess is as good as mine', 'я знаю не больше твоего', 'Example: We often use "Your guess is as good as mine" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Your guess is as good as mine') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Turn a hair', NULL, 'Example: We often use "Turn a hair" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Turn a hair') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'open sb''s eyes to sth', NULL, 'Example: We often use "open someone''s eyes to something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('open sb''s eyes to sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'heart-to-heart', NULL, 'Example: We often use "heart-to-heart" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('heart-to-heart') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be glad/happy/pleased/not sorry to see the back of sth', NULL, 'Example: We often use "be glad/happy/pleased/not sorry to see the back of something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be glad/happy/pleased/not sorry to see the back of sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'feel/be at home', NULL, 'Example: We often use "feel/be at home" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('feel/be at home') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a red herring', NULL, 'Example: We often use "a red herring" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a red herring') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'No such luck!', NULL, 'We often use "No such luck!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('No such luck!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'worth your salt', NULL, 'Example: We often use "worth your salt" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('worth your salt') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'there''s no accounting for taste', NULL, 'Example: We often use "there''s no accounting for taste" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('there''s no accounting for taste') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep your hand in', NULL, 'Example: We often use "keep your hand in" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep your hand in') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'step into sb''s shoes', NULL, 'Example: We often use "step into someone''s shoes" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('step into sb''s shoes') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Read between the lines', 'читать между строк', 'Example: We often use "Read between the lines" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Read between the lines') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'off the record', NULL, 'Example: We often use "off the record" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('off the record') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be caught napping', NULL, 'Example: We often use "be caught napping" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be caught napping') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A little bird told me', NULL, 'Example: We often use "A little bird told me" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('A little bird told me') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Burn the midnight oil', 'работать допоздна', 'Example: We often use "Burn the midnight oil" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Burn the midnight oil') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Back to square one', 'начать сначала', 'Example: We often use "Back to square one" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Back to square one') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'people who live in glass houses', NULL, 'Example: We often use "people who live in glass houses" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('people who live in glass houses') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pour your heart out', NULL, 'Example: We often use "pour your heart out" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pour your heart out') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be plain sailing', NULL, 'Example: We often use "be plain sailing" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be plain sailing') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'take sth to heart', NULL, 'Example: We often use "take something to heart" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('take sth to heart') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'blue blood', NULL, 'Example: We often use "blue blood" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('blue blood') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be over the moon', NULL, 'Example: We often use "be over the moon" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be over the moon') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'let get sb off the hook', NULL, 'Example: We often use "let get someone off the hook" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('let get sb off the hook') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the ins and outs', NULL, 'Example: We often use "the ins and outs" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the ins and outs') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give sb free rein', NULL, 'Example: We often use "give someone free rein" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give sb free rein') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a slip of the tongue', NULL, 'Example: We often use "a slip of the tongue" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a slip of the tongue') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a stumbling block', NULL, 'Example: We often use "a stumbling block" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a stumbling block') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'To give someone a piece of my mind', NULL, 'Example: We often use "To give someone a piece of my mind" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('To give someone a piece of my mind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put/stick your oar in', NULL, 'Example: We often use "put/stick your oar in" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put/stick your oar in') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make all the difference', NULL, 'Example: We often use "make all the difference" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make all the difference') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be in luck', NULL, 'Example: We often use "be in luck" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be in luck') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Have the Midas touch', NULL, 'Example: We often use "Have the Midas touch" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Have the Midas touch') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Don''t put all your eggs in one basket', 'не клади все яйца в одну корзину', 'Example: We often use "Don''t put all your eggs in one basket" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Don''t put all your eggs in one basket') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Keep an eye on', 'присматривать', 'Example: We often use "Keep an eye on" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Keep an eye on') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'rain cats and dogs', NULL, 'Example: We often use "rain cats and dogs" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('rain cats and dogs') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'white lie', NULL, 'Example: We often use "white lie" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('white lie') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'once and for all', NULL, 'Example: We often use "once and for all" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('once and for all') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'to your heart''s content', NULL, 'Example: We often use "to your heart''s content" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('to your heart''s content') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'on the off-chance', NULL, 'Example: We often use "on the off-chance" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('on the off-chance') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'lay down the law', NULL, 'Example: We often use "lay down the law" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('lay down the law') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'set in stone', NULL, 'Example: We often use "set in stone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('set in stone') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'draw a line under sth', NULL, 'Example: We often use "draw a line under something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('draw a line under sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'foot the bill', NULL, 'Example: We often use "foot the bill" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('foot the bill') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in the black', NULL, 'Example: We often use "in the black" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in the black') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'take the law into your own hands', NULL, 'Example: We often use "take the law into your own hands" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('take the law into your own hands') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have a shoulder to cry on', NULL, 'Example: We often use "have a shoulder to cry on" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have a shoulder to cry on') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pass the buck', NULL, 'Example: We often use "pass the buck" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pass the buck') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a sign of the times', NULL, 'Example: We often use "a sign of the times" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a sign of the times') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be as easy as taking candy from a baby', NULL, 'Example: We often use "be as easy as taking candy from a baby" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be as easy as taking candy from a baby') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be larger than life', NULL, 'Example: We often use "be larger than life" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be larger than life') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'to cut a long story short', NULL, 'Example: We often use "to cut a long story short" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('to cut a long story short') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a train of thought', NULL, 'Example: We often use "a train of thought" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a train of thought') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Comfortable as an old shoe', NULL, 'Example: We often use "Comfortable as an old shoe" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Comfortable as an old shoe') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put sth on the map', NULL, 'Example: We often use "put something on the map" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put sth on the map') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get out of a rut', NULL, 'Example: We often use "get out of a rut" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get out of a rut') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be as dry as a bone', NULL, 'Example: We often use "be as dry as a bone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be as dry as a bone') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put/set the record straight', NULL, 'Example: We often use "put/set the record straight" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put/set the record straight') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Give a blank check', NULL, 'Example: We often use "Give a blank check" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Give a blank check') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give it a whirl/shot', NULL, 'Example: We often use "give it a whirl/shot" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give it a whirl/shot') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'like greased lightning', NULL, 'Example: We often use "like greased lightning" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('like greased lightning') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'To be a silver surfer', NULL, 'Example: We often use "To be a silver surfer" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('To be a silver surfer') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'from the horse''s mouth', NULL, 'Example: We often use "from the horse''s mouth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('from the horse''s mouth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a high-flyer', NULL, 'Example: We often use "a high-flyer" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a high-flyer') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'rub sb up the wrong way', NULL, 'Example: We often use "rub someone up the wrong way" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('rub sb up the wrong way') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be thrilled to bits', NULL, 'Example: We often use "be thrilled to bits" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be thrilled to bits') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a long face', NULL, 'Example: We often use "a long face" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a long face') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'like gold dust', NULL, 'Example: We often use "like gold dust" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('like gold dust') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'stand/stick out a mile', NULL, 'Example: We often use "stand/stick out a mile" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('stand/stick out a mile') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go places', NULL, 'Example: We often use "go places" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go places') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be a matter of opinion', NULL, 'Example: We often use "be a matter of opinion" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be a matter of opinion') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'all shapes and sizes', NULL, 'Example: We often use "all shapes and sizes" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('all shapes and sizes') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'The ball is in your court', 'ход за тобой', 'Example: We often use "The ball is in your court" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('The ball is in your court') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'lose your marbles', NULL, 'Example: We often use "lose your marbles" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('lose your marbles') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'fall on stony ground', NULL, 'Example: We often use "fall on stony ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('fall on stony ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be no joke', NULL, 'Example: We often use "be no joke" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be no joke') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sour grapes', NULL, 'Example: We often use "sour grapes" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sour grapes') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make sb''s mouth water', NULL, 'Example: We often use "make someone''s mouth water" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make sb''s mouth water') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'as plain as the nose on your face', NULL, 'Example: We often use "as plain as the nose on your face" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('as plain as the nose on your face') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'drop sb a line', NULL, 'Example: We often use "drop someone a line" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('drop sb a line') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be on the brink of sth', NULL, 'Example: We often use "be on the brink of something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be on the brink of sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'as heavy as lead', NULL, 'Example: We often use "as heavy as lead" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('as heavy as lead') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'fade/pale into insignificance', NULL, 'Example: We often use "fade/pale into insignificance" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('fade/pale into insignificance') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'work against the clock', NULL, 'Example: We often use "work against the clock" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('work against the clock') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'jazz something up', NULL, 'Example: We often use "jazz something up" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('jazz something up') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'bury the hatchet', NULL, 'Example: We often use "bury the hatchet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('bury the hatchet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be out of action', NULL, 'Example: We often use "be out of action" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be out of action') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Keep your hair on!', NULL, 'We often use "Keep your hair on!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Keep your hair on!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'at each other''s throat', NULL, 'Example: We often use "at each other''s throat" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('at each other''s throat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Wrap your head around', 'понять', 'Example: We often use "Wrap your head around" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Wrap your head around') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'on paper', NULL, 'Example: We often use "on paper" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('on paper') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'left, right and centre', NULL, 'Example: We often use "left, right and centre" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('left, right and centre') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'spin a yarn', NULL, 'Example: We often use "spin a yarn" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('spin a yarn') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'line of work', NULL, 'Example: We often use "line of work" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('line of work') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'It''s no good crying over spilt milk', NULL, 'Example: We often use "It''s no good crying over spilt milk" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('It''s no good crying over spilt milk') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get in on the act', NULL, 'Example: We often use "get in on the act" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get in on the act') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have a soft spot for sb', NULL, 'Example: We often use "have a soft spot for someone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have a soft spot for sb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go spare', NULL, 'Example: We often use "go spare" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go spare') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go/run/work like clockwork', NULL, 'Example: We often use "go/run/work like clockwork" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go/run/work like clockwork') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'down to earth', NULL, 'Example: We often use "down to earth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('down to earth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go Dutch', NULL, 'Example: We often use "go Dutch" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go Dutch') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be/hang in the balance', NULL, 'Example: We often use "be/hang in the balance" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be/hang in the balance') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in your mind''s eye', NULL, 'Example: We often use "in your mind''s eye" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in your mind''s eye') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'run/cast your eye over', NULL, 'Example: We often use "run/cast your eye over" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('run/cast your eye over') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A piece of cake', 'проще простого', 'Example: We often use "A piece of cake" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('A piece of cake') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not have the faintest idea', NULL, 'Example: We often use "not have the faintest idea" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not have the faintest idea') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'blue-collar', NULL, 'Example: We often use "blue-collar" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('blue-collar') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give ground', NULL, 'Example: We often use "give ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Don''t make me laugh!', NULL, 'We often use "Don''t make me laugh!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Don''t make me laugh!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'down-and-out', NULL, 'Example: We often use "down-and-out" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('down-and-out') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep someone at arm''s length', NULL, 'Example: We often use "keep someone at arm''s length" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep someone at arm''s length') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be (right) up your alley/street', NULL, 'Example: We often use "be (right) up your alley/street" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be (right) up your alley/street') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the more the merrier', NULL, 'Example: We often use "the more the merrier" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the more the merrier') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'hold fire', NULL, 'Example: We often use "hold fire" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('hold fire') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', '(not) be worth your while', NULL, 'Example: We often use "(not) be worth your while" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('(not) be worth your while') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'new blood', NULL, 'Example: We often use "new blood" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('new blood') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'chip in', NULL, 'Example: We often use "chip in" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('chip in') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'ground-breaking', NULL, 'Example: We often use "ground-breaking" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('ground-breaking') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep sb/sth at bay', NULL, 'Example: We often use "keep someone/something at bay" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep sb/sth at bay') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Pull someone''s leg', 'разыгрывать', 'Example: We often use "Pull someone''s leg" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Pull someone''s leg') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'steer clear of', NULL, 'Example: We often use "steer clear of" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('steer clear of') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get away with murder', NULL, 'Example: We often use "get away with murder" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get away with murder') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be wide of the mark', NULL, 'Example: We often use "be wide of the mark" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be wide of the mark') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have your cake and eat it', NULL, 'Example: We often use "have your cake and eat it" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have your cake and eat it') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'cut a long story short', NULL, 'Example: We often use "cut a long story short" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('cut a long story short') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get a kick out of', NULL, 'Example: We often use "get a kick out of" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get a kick out of') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep your shirt on', NULL, 'Example: We often use "keep your shirt on" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep your shirt on') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'change your tune', NULL, 'Example: We often use "change your tune" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('change your tune') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'fit as a fiddle', NULL, 'Example: We often use "fit as a fiddle" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('fit as a fiddle') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sb''s paths cross', NULL, 'Example: We often use "someone''s paths cross" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sb''s paths cross') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'The last straw', 'последняя капля', 'Example: We often use "The last straw" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('The last straw') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Go cold turkey', 'резко прекратить', 'Example: We often use "Go cold turkey" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Go cold turkey') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'gut feeling', NULL, 'Example: We often use "gut feeling" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('gut feeling') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not be the end of the world', NULL, 'Example: We often use "not be the end of the world" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not be the end of the world') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Bite off more than you can chew', 'взять на себя слишком много', 'Example: We often use "Bite off more than you can chew" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Bite off more than you can chew') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'bring sth to a head', NULL, 'Example: We often use "bring something to a head" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('bring sth to a head') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'out of the frying pan into the fire', NULL, 'Example: We often use "out of the frying pan into the fire" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('out of the frying pan into the fire') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'far-fetched', NULL, 'Example: We often use "far-fetched" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('far-fetched') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pick up the pieces', NULL, 'Example: We often use "pick up the pieces" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pick up the pieces') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A mile a minute', NULL, 'Example: We often use "A mile a minute" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('A mile a minute') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'tight spot', NULL, 'Example: We often use "tight spot" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('tight spot') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be down in the dumps', NULL, 'Example: We often use "be down in the dumps" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be down in the dumps') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'cast aspersions on', NULL, 'Example: We often use "cast aspersions on" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('cast aspersions on') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be caught in the crossfire', NULL, 'Example: We often use "be caught in the crossfire" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be caught in the crossfire') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sleep on it', NULL, 'Example: We often use "sleep on it" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sleep on it') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'suit sb down to the ground', NULL, 'Example: We often use "suit someone down to the ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('suit sb down to the ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put/set sb''s mind at rest', NULL, 'Example: We often use "put/set someone''s mind at rest" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put/set sb''s mind at rest') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'you haven''t lived!', NULL, 'We often use "you haven''t lived!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('you haven''t lived!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'at a snail''s pace', NULL, 'Example: We often use "at a snail''s pace" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('at a snail''s pace') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Face the music', 'отвечать за последствия', 'Example: We often use "Face the music" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Face the music') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'throw/put a spanner in the works', NULL, 'Example: We often use "throw/put a spanner in the works" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('throw/put a spanner in the works') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be beside the point', NULL, 'Example: We often use "be beside the point" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be beside the point') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'knock sth on the head', NULL, 'Example: We often use "knock something on the head" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('knock sth on the head') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'lingua franca', NULL, 'Example: We often use "lingua franca" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('lingua franca') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'feel under the weather', NULL, 'Example: We often use "feel under the weather" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('feel under the weather') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Beat around the bush', 'ходить вокруг да около', 'Example: We often use "Beat around the bush" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Beat around the bush') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep/bear in mind', NULL, 'Example: We often use "keep/bear in mind" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep/bear in mind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep a low profile', NULL, 'Example: We often use "keep a low profile" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep a low profile') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a chip on your shoulder', NULL, 'Example: We often use "a chip on your shoulder" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a chip on your shoulder') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have/get/take the bit between your teeth', NULL, 'Example: We often use "have/get/take the bit between your teeth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have/get/take the bit between your teeth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be as good as gold', NULL, 'Example: We often use "Be as good as gold" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be as good as gold') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'until you are blue in the face', NULL, 'Example: We often use "until you are blue in the face" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('until you are blue in the face') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'common ground', NULL, 'Example: We often use "common ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('common ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'turn over a new leaf', NULL, 'Example: We often use "turn over a new leaf" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('turn over a new leaf') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'to make a long story short', NULL, 'Example: We often use "to make a long story short" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('to make a long story short') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Bring home the bacon', NULL, 'Example: We often use "Bring home the bacon" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Bring home the bacon') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'take your life into your hands', NULL, 'Example: We often use "take your life into your hands" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('take your life into your hands') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'come (back) down to earth with a bump/bang/jolt', NULL, 'Example: We often use "come (back) down to earth with a bump/bang/jolt" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('come (back) down to earth with a bump/bang/jolt') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'it''s the last straw', NULL, 'Example: We often use "it''s the last straw" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('it''s the last straw') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'bite the dust', NULL, 'Example: We often use "bite the dust" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('bite the dust') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'drive someone up the wall', NULL, 'Example: We often use "drive someone up the wall" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('drive someone up the wall') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'cry over spilt milk', NULL, 'Example: We often use "cry over spilt milk" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('cry over spilt milk') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A social butterfly', NULL, 'Example: We often use "A social butterfly" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('A social butterfly') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not bat an eyelid', NULL, 'Example: We often use "not bat an eyelid" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not bat an eyelid') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pull/tear your hair out', NULL, 'Example: We often use "pull/tear your hair out" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pull/tear your hair out') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the word spread', NULL, 'Example: We often use "the word spread" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the word spread') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'wear your heart on your sleeve', NULL, 'Example: We often use "wear your heart on your sleeve" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('wear your heart on your sleeve') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'toe the line', NULL, 'Example: We often use "toe the line" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('toe the line') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in no time at all', NULL, 'Example: We often use "in no time at all" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in no time at all') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'take a long, hard look at sth', NULL, 'Example: We often use "take a long, hard look at something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('take a long, hard look at sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'if need be', NULL, 'Example: We often use "if need be" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('if need be') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put a dampener/damper on', NULL, 'Example: We often use "put a dampener/damper on" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put a dampener/damper on') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'matter-of-fact', NULL, 'Example: We often use "matter-of-fact" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('matter-of-fact') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go one better', NULL, 'Example: We often use "go one better" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go one better') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be a someone''s good book', NULL, 'Example: We often use "Be a someone''s good book" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be a someone''s good book') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Actions speak louder than words', 'поступки важнее слов', 'Example: We often use "Actions speak louder than words" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Actions speak louder than words') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'stand your ground', NULL, 'Example: We often use "stand your ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('stand your ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make yourself at home', NULL, 'Example: We often use "make yourself at home" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make yourself at home') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Work your fingers to the bone', NULL, 'Example: We often use "Work your fingers to the bone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Work your fingers to the bone') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make do', NULL, 'Example: We often use "make do" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make do') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be in the same boat', NULL, 'Example: We often use "Be in the same boat" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be in the same boat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'rushed off your feet', NULL, 'Example: We often use "rushed off your feet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('rushed off your feet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'No way!', NULL, 'We often use "No way!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('No way!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'save your breath', NULL, 'Example: We often use "save your breath" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('save your breath') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'clear the air', NULL, 'Example: We often use "clear the air" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('clear the air') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in cold blood', NULL, 'Example: We often use "in cold blood" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in cold blood') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be in seventh heaven', NULL, 'Example: We often use "be in seventh heaven" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be in seventh heaven') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'break new ground', NULL, 'Example: We often use "break new ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('break new ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'bring sth home to sb', NULL, 'Example: We often use "bring something home to someone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('bring sth home to sb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'It takes two to tango', 'в конфликте виноваты двое', 'Example: We often use "It takes two to tango" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('It takes two to tango') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'as free as a bird', NULL, 'Example: We often use "as free as a bird" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('as free as a bird') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'on the face of it', NULL, 'Example: We often use "on the face of it" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('on the face of it') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'well-off', NULL, 'Example: We often use "well-off" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('well-off') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'one good turn deserves another', NULL, 'Example: We often use "one good turn deserves another" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('one good turn deserves another') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'You could''ve fooled me!', NULL, 'We often use "You could''ve fooled me!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('You could''ve fooled me!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'eat your words', NULL, 'Example: We often use "eat your words" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('eat your words') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'How time flies!', NULL, 'We often use "How time flies!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('How time flies!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Easy does it', 'тише едешь - дальше будешь', 'Example: We often use "Easy does it" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Easy does it') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'drive/send sb round the bend/twist', NULL, 'Example: We often use "drive/send someone round the bend/twist" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('drive/send sb round the bend/twist') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'strike while the iron is hot', NULL, 'Example: We often use "strike while the iron is hot" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('strike while the iron is hot') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'can''t make head nor tail of', NULL, 'Example: We often use "can''t make head nor tail of" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('can''t make head nor tail of') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'it''s water under the bridge', NULL, 'Example: We often use "it''s water under the bridge" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('it''s water under the bridge') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give anything', NULL, 'Example: We often use "give anything" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give anything') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be duty bound to do sth', NULL, 'Example: We often use "be duty bound to do something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be duty bound to do sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'for what it''s worth', NULL, 'Example: We often use "for what it''s worth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('for what it''s worth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in within living memory', NULL, 'Example: We often use "in within living memory" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in within living memory') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get in on the ground floor', NULL, 'Example: We often use "get in on the ground floor" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get in on the ground floor') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be an avid sports fan', NULL, 'Example: We often use "Be an avid sports fan" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be an avid sports fan') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'work like a charm', NULL, 'Example: We often use "work like a charm" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('work like a charm') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'run like clockwork', NULL, 'Example: We often use "run like clockwork" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('run like clockwork') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep/hold sb at arm''s length', NULL, 'Example: We often use "keep/hold someone at arm''s length" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep/hold sb at arm''s length') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have a lot of time for sb', NULL, 'Example: We often use "have a lot of time for someone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have a lot of time for sb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be in the doldrums', NULL, 'Example: We often use "be in the doldrums" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be in the doldrums') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not have the ghost of a chance', NULL, 'Example: We often use "not have the ghost of a chance" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not have the ghost of a chance') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'hold your horses', NULL, 'Example: We often use "hold your horses" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('hold your horses') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'heavy-going', NULL, 'Example: We often use "heavy-going" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('heavy-going') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be up in arms', NULL, 'Example: We often use "be up in arms" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be up in arms') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'It''s no use crying over spill milk', NULL, 'Example: We often use "It''s no use crying over spill milk" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('It''s no use crying over spill milk') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in the bag', NULL, 'Example: We often use "in the bag" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in the bag') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give sth the green light', NULL, 'Example: We often use "give something the green light" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give sth the green light') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Kill two birds with one stone', 'убить двух зайцев', 'Example: We often use "Kill two birds with one stone" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Kill two birds with one stone') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Bend over backwards', 'из кожи вон лезть', 'Example: We often use "Bend over backwards" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Bend over backwards') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a slime ball', NULL, 'Example: We often use "a slime ball" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a slime ball') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Water under the bridge', 'быльём поросло', 'Example: We often use "Water under the bridge" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Water under the bridge') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'It''s no good / There''s no point crying over spilt milk', NULL, 'Example: We often use "It''s no good / There''s no point crying over spilt milk" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('It''s no good / There''s no point crying over spilt milk') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'jump/get/leap on the bandwagon', NULL, 'Example: We often use "jump/get/leap on the bandwagon" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('jump/get/leap on the bandwagon') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'easier said than done', NULL, 'Example: We often use "easier said than done" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('easier said than done') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be as plain as the nose on your face', NULL, 'Example: We often use "be as plain as the nose on your face" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be as plain as the nose on your face') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'set/put the record straight', NULL, 'Example: We often use "set/put the record straight" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('set/put the record straight') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not go amiss', NULL, 'Example: We often use "not go amiss" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not go amiss') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the curtain has fallen (on)', NULL, 'Example: We often use "the curtain has fallen (on)" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the curtain has fallen (on)') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pay an arm and a leg', NULL, 'Example: We often use "pay an arm and a leg" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pay an arm and a leg') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'at/on the receiving end', NULL, 'Example: We often use "at/on the receiving end" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('at/on the receiving end') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'for good measure', NULL, 'Example: We often use "for good measure" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('for good measure') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'safe and sound', NULL, 'Example: We often use "safe and sound" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('safe and sound') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give you pause for thought', NULL, 'Example: We often use "give you pause for thought" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give you pause for thought') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Keep your fingers crossed', 'держать кулаки', 'Example: We often use "Keep your fingers crossed" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Keep your fingers crossed') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be too close for comfort', NULL, 'Example: We often use "be too close for comfort" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be too close for comfort') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'wear lots of different hats', NULL, 'Example: We often use "wear lots of different hats" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('wear lots of different hats') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pay through the nose', NULL, 'Example: We often use "pay through the nose" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pay through the nose') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the pot calling the kettle black', NULL, 'Example: We often use "the pot calling the kettle black" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the pot calling the kettle black') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have a mind of its own', NULL, 'Example: We often use "have a mind of its own" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have a mind of its own') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'follow/take a course of action', NULL, 'Example: We often use "follow/take a course of action" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('follow/take a course of action') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a level playing field', NULL, 'Example: We often use "a level playing field" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a level playing field') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'look before you leap', NULL, 'Example: We often use "look before you leap" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('look before you leap') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be as ugly as sin', NULL, 'Example: We often use "be as ugly as sin" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be as ugly as sin') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be a know-it-all', NULL, 'Example: We often use "Be a know-it-all" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be a know-it-all') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'skin of your teeth', NULL, 'Example: We often use "skin of your teeth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('skin of your teeth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'commit sth to memory', NULL, 'Example: We often use "commit something to memory" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('commit sth to memory') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep an open mind', NULL, 'Example: We often use "keep an open mind" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep an open mind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'frighten/scare the (living) daylights out of', NULL, 'Example: We often use "frighten/scare the (living) daylights out of" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('frighten/scare the (living) daylights out of') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Up in the air', 'неопределённо', 'Example: We often use "Up in the air" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Up in the air') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go without saying', NULL, 'Example: We often use "go without saying" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go without saying') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be thick/thin on the ground', NULL, 'Example: We often use "be thick/thin on the ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be thick/thin on the ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'size up', NULL, 'Example: We often use "size up" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('size up') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'At the drop of a hat', 'без промедления', 'Example: We often use "At the drop of a hat" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('At the drop of a hat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'as blind as a bat', NULL, 'Example: We often use "as blind as a bat" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('as blind as a bat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'career ladder', NULL, 'Example: We often use "career ladder" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('career ladder') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'eyes like a hawk', NULL, 'Example: We often use "eyes like a hawk" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('eyes like a hawk') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'come to a head', NULL, 'Example: We often use "come to a head" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('come to a head') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give sb the cold shoulder', NULL, 'Example: We often use "give someone the cold shoulder" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give sb the cold shoulder') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in the same breath', NULL, 'Example: We often use "in the same breath" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in the same breath') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'could do sth with one hand tied behind your back', NULL, 'Example: We often use "could do something with one hand tied behind your back" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('could do sth with one hand tied behind your back') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'poker face', NULL, 'Example: We often use "poker face" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('poker face') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Have it on the tip of my tongue', NULL, 'Example: We often use "Have it on the tip of my tongue" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Have it on the tip of my tongue') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Big deal!', NULL, 'We often use "Big deal!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Big deal!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a rip-off', NULL, 'Example: We often use "a rip-off" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a rip-off') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'along on the same lines', NULL, 'Example: We often use "along on the same lines" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('along on the same lines') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give sb a free hand', NULL, 'Example: We often use "give someone a free hand" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give sb a free hand') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make/pull a face', NULL, 'Example: We often use "make/pull a face" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make/pull a face') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a small fortune', NULL, 'Example: We often use "a small fortune" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a small fortune') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'think on your feet', NULL, 'Example: We often use "think on your feet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('think on your feet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep in touch with sb', NULL, 'Example: We often use "keep in touch with someone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep in touch with sb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'at a (considerable) price', NULL, 'Example: We often use "at a (considerable) price" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('at a (considerable) price') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'fever pitch', NULL, 'Example: We often use "fever pitch" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('fever pitch') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Through thick and thin', 'несмотря ни на что', 'Example: We often use "Through thick and thin" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Through thick and thin') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'bring sth to light', NULL, 'Example: We often use "bring something to light" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('bring sth to light') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pay lip service to', NULL, 'Example: We often use "pay lip service to" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pay lip service to') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be on the run', NULL, 'Example: We often use "be on the run" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be on the run') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put/stick the knife in', NULL, 'Example: We often use "put/stick the knife in" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put/stick the knife in') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'teach sb a lesson', NULL, 'Example: We often use "teach someone a lesson" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('teach sb a lesson') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Cut to the chase', 'перейти к сути', 'Example: We often use "Cut to the chase" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Cut to the chase') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go through the motions', NULL, 'Example: We often use "go through the motions" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go through the motions') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'lose your temper', NULL, 'Example: We often use "lose your temper" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('lose your temper') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'you can''t have your cake and eat it', NULL, 'Example: We often use "you can''t have your cake and eat it" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('you can''t have your cake and eat it') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get/go beyond a joke', NULL, 'Example: We often use "get/go beyond a joke" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get/go beyond a joke') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep a straight face', NULL, 'Example: We often use "keep a straight face" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep a straight face') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'add fuel to the fire/flames', NULL, 'Example: We often use "add fuel to the fire/flames" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('add fuel to the fire/flames') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Barking up the wrong three', NULL, 'Example: We often use "Barking up the wrong three" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Barking up the wrong three') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'as if there was/were no tomorrow', NULL, 'Example: We often use "as if there was/were no tomorrow" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('as if there was/were no tomorrow') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make an exhibition of yourself', NULL, 'Example: We often use "make an exhibition of yourself" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make an exhibition of yourself') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'breathe down sb''s neck', NULL, 'Example: We often use "breathe down someone''s neck" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('breathe down sb''s neck') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'split hairs', NULL, 'Example: We often use "split hairs" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('split hairs') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Shaking like a leaf', NULL, 'Example: We often use "Shaking like a leaf" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Shaking like a leaf') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be dying for/to', NULL, 'Example: We often use "be dying for/to" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be dying for/to') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep your head', NULL, 'Example: We often use "keep your head" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep your head') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go hand in hand', NULL, 'Example: We often use "go hand in hand" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go hand in hand') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make waves', NULL, 'Example: We often use "make waves" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make waves') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'While the cat''s away, the mice will play', NULL, 'Example: We often use "While the cat''s away, the mice will play" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('While the cat''s away, the mice will play') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'behind your back', NULL, 'Example: We often use "behind your back" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('behind your back') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go/work like a dream', NULL, 'Example: We often use "go/work like a dream" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go/work like a dream') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'dead-end job', NULL, 'Example: We often use "dead-end job" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('dead-end job') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Think outside the box', 'мыслить нестандартно', 'Example: We often use "Think outside the box" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Think outside the box') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a thin/fine line', NULL, 'Example: We often use "a thin/fine line" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a thin/fine line') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be on the verge of', NULL, 'Example: We often use "be on the verge of" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be on the verge of') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a slice/piece of the action', NULL, 'Example: We often use "a slice/piece of the action" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a slice/piece of the action') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a likely story', NULL, 'Example: We often use "a likely story" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a likely story') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', '(not) ring true', NULL, 'Example: We often use "(not) ring true" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('(not) ring true') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Stick to your guns', 'стоять на своём', 'Example: We often use "Stick to your guns" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Stick to your guns') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'tighten your belt', NULL, 'Example: We often use "tighten your belt" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('tighten your belt') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'first hand', NULL, 'Example: We often use "first hand" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('first hand') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Break your back', NULL, 'Example: We often use "Break your back" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Break your back') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a fine/thin line', NULL, 'Example: We often use "a fine/thin line" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a fine/thin line') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'play with fire', NULL, 'Example: We often use "play with fire" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('play with fire') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'play ball', NULL, 'Example: We often use "play ball" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('play ball') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go from bad to worse', NULL, 'Example: We often use "go from bad to worse" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go from bad to worse') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'jog sb''s memory', NULL, 'Example: We often use "jog someone''s memory" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('jog sb''s memory') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Many hands make light work', NULL, 'Example: We often use "Many hands make light work" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Many hands make light work') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'dig yourself into a hole', NULL, 'Example: We often use "dig yourself into a hole" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('dig yourself into a hole') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'then and there', NULL, 'Example: We often use "then and there" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('then and there') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Set the ball rolling', NULL, 'Example: We often use "Set the ball rolling" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Set the ball rolling') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get it off your chest', NULL, 'Example: We often use "get it off your chest" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get it off your chest') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Go back to the basics', NULL, 'Example: We often use "Go back to the basics" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Go back to the basics') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Blood is thicker than water', NULL, 'Example: We often use "Blood is thicker than water" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Blood is thicker than water') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'let your hair down', NULL, 'Example: We often use "let your hair down" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('let your hair down') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in small doses', NULL, 'Example: We often use "in small doses" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in small doses') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the bare bones', NULL, 'Example: We often use "the bare bones" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the bare bones') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'There''s nothing to it!', NULL, 'We often use "There''s nothing to it!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('There''s nothing to it!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'at cross-purposes', NULL, 'Example: We often use "at cross-purposes" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('at cross-purposes') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a grey area', NULL, 'Example: We often use "a grey area" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a grey area') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be asking for trouble/it', NULL, 'Example: We often use "be asking for trouble/it" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be asking for trouble/it') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'twist sb''s arm', NULL, 'Example: We often use "twist someone''s arm" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('twist sb''s arm') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'snake in the grass', NULL, 'Example: We often use "snake in the grass" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('snake in the grass') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'call a spade a spade', NULL, 'Example: We often use "call a spade a spade" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('call a spade a spade') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'look like something the cat dragged/brought in', NULL, 'Example: We often use "look like something the cat dragged/brought in" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('look like something the cat dragged/brought in') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get on sb''s nerves', NULL, 'Example: We often use "get on someone''s nerves" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get on sb''s nerves') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the early bird catches the worm', NULL, 'Example: We often use "the early bird catches the worm" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the early bird catches the worm') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'leave well alone', NULL, 'Example: We often use "leave well alone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('leave well alone') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get your own way', NULL, 'Example: We often use "get your own way" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get your own way') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be as safe as houses', NULL, 'Example: We often use "be as safe as houses" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be as safe as houses') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'touch and go', NULL, 'Example: We often use "touch and go" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('touch and go') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have/get your fingers burned/burnt', NULL, 'Example: We often use "have/get your fingers burned/burnt" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have/get your fingers burned/burnt') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'bore the pants off someone', NULL, 'Example: We often use "bore the pants off someone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('bore the pants off someone') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pull out all the stops', NULL, 'Example: We often use "pull out all the stops" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pull out all the stops') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'To be a layabout', NULL, 'Example: We often use "To be a layabout" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('To be a layabout') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'it beats me', NULL, 'Example: We often use "it beats me" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('it beats me') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Play it by ear', 'действовать по ситуации', 'Example: We often use "Play it by ear" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Play it by ear') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'your best bet', NULL, 'Example: We often use "your best bet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('your best bet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'road rage', NULL, 'Example: We often use "road rage" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('road rage') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Cry wolf', 'бить ложную тревогу', 'Example: We often use "Cry wolf" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Cry wolf') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be under sb''s thumb', NULL, 'Example: We often use "be under someone''s thumb" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be under sb''s thumb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'cast/run your eye over', NULL, 'Example: We often use "cast/run your eye over" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('cast/run your eye over') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'bear fruit', NULL, 'Example: We often use "bear fruit" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('bear fruit') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get/be/stay in touch with sb', NULL, 'Example: We often use "get/be/stay in touch with someone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get/be/stay in touch with sb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go against the grain', NULL, 'Example: We often use "go against the grain" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go against the grain') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'clutch at straws', NULL, 'Example: We often use "clutch at straws" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('clutch at straws') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give sb an earful', NULL, 'Example: We often use "give someone an earful" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give sb an earful') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Have something up your sleeve', NULL, 'Example: We often use "Have something up your sleeve" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Have something up your sleeve') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'take a stroll trip down memory lane', NULL, 'Example: We often use "take a stroll trip down memory lane" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('take a stroll trip down memory lane') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the bottom line', NULL, 'Example: We often use "the bottom line" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the bottom line') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'live be on the breadline', NULL, 'Example: We often use "live be on the breadline" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('live be on the breadline') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'work/go/run like clockwork', NULL, 'Example: We often use "work/go/run like clockwork" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('work/go/run like clockwork') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get blood out of a stone', NULL, 'Example: We often use "get blood out of a stone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get blood out of a stone') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'hit/be rock bottom', NULL, 'Example: We often use "hit/be rock bottom" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('hit/be rock bottom') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the icing on the cake', NULL, 'Example: We often use "the icing on the cake" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the icing on the cake') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'hit the roof/ceiling', NULL, 'Example: We often use "hit the roof/ceiling" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('hit the roof/ceiling') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'if the worst comes to the worst', NULL, 'Example: We often use "if the worst comes to the worst" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('if the worst comes to the worst') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in the doghouse', NULL, 'Example: We often use "in the doghouse" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in the doghouse') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the shape of things to come', NULL, 'Example: We often use "the shape of things to come" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the shape of things to come') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'it goes without saying', NULL, 'Example: We often use "it goes without saying" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('it goes without saying') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Break the bank', NULL, 'Example: We often use "Break the bank" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Break the bank') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be like a red rag to a bull', NULL, 'Example: We often use "be like a red rag to a bull" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be like a red rag to a bull') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A space cadet', NULL, 'Example: We often use "A space cadet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('A space cadet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sb''s stamping/stomping ground', NULL, 'Example: We often use "someone''s stamping/stomping ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sb''s stamping/stomping ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'let off steam', NULL, 'Example: We often use "let off steam" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('let off steam') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'It''s not rocket science', NULL, 'Example: We often use "It''s not rocket science" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('It''s not rocket science') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go from strength to strength', NULL, 'Example: We often use "go from strength to strength" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go from strength to strength') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be banging/hitting your head against a brick wall', NULL, 'Example: We often use "be banging/hitting your head against a brick wall" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be banging/hitting your head against a brick wall') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be a figment of your imagination', NULL, 'Example: We often use "be a figment of your imagination" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be a figment of your imagination') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a vicious circle', NULL, 'Example: We often use "a vicious circle" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a vicious circle') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sb/sth is a victim of their/its own success', NULL, 'Example: We often use "someone/something is a victim of their/its own success" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sb/sth is a victim of their/its own success') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put sb in the picture', NULL, 'Example: We often use "put someone in the picture" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put sb in the picture') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in a nutshell', NULL, 'Example: We often use "in a nutshell" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in a nutshell') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'No pain, no gain', 'без труда не вытащишь и рыбку из пруда', 'Example: We often use "No pain, no gain" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('No pain, no gain') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'to coin a phrase', NULL, 'Example: We often use "to coin a phrase" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('to coin a phrase') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have your heart set on sth', NULL, 'Example: We often use "have your heart set on something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have your heart set on sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'off-the-cuff', NULL, 'Example: We often use "off-the-cuff" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('off-the-cuff') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Make a long story short', 'короче говоря', 'Example: We often use "Make a long story short" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Make a long story short') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep your head down', NULL, 'Example: We often use "keep your head down" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep your head down') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'throw/shed light on', NULL, 'Example: We often use "throw/shed light on" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('throw/shed light on') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'rough and ready', NULL, 'Example: We often use "rough and ready" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('rough and ready') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be out of your element', NULL, 'Example: We often use "be out of your element" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be out of your element') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be on sb''s back', NULL, 'Example: We often use "be on someone''s back" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be on sb''s back') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be a doctor phenomenon', NULL, 'Example: We often use "Be a doctor phenomenon" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be a doctor phenomenon') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'by/in leaps and bounds', NULL, 'Example: We often use "by/in leaps and bounds" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('by/in leaps and bounds') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'See eye to eye', 'сходиться во мнении', 'Example: We often use "See eye to eye" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('See eye to eye') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'if the cap fits', NULL, 'Example: We often use "if the cap fits" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('if the cap fits') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be in pocket', NULL, 'Example: We often use "be in pocket" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be in pocket') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'use your loaf', NULL, 'Example: We often use "use your loaf" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('use your loaf') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put/get sb''s back up', NULL, 'Example: We often use "put/get someone''s back up" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put/get sb''s back up') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'cross your fingers', NULL, 'Example: We often use "cross your fingers" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('cross your fingers') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be green with envy', NULL, 'Example: We often use "be green with envy" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be green with envy') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give it a shot/whirl', NULL, 'Example: We often use "give it a shot/whirl" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give it a shot/whirl') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Get a life!', NULL, 'We often use "Get a life!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Get a life!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Just my luck!', NULL, 'We often use "Just my luck!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Just my luck!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'it cost me a pretty penny', NULL, 'Example: We often use "it cost me a pretty penny" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('it cost me a pretty penny') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in the red', NULL, 'Example: We often use "in the red" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in the red') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'ruffle sb''s feathers', NULL, 'Example: We often use "ruffle someone''s feathers" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('ruffle sb''s feathers') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have eyes like a hawk', NULL, 'Example: We often use "have eyes like a hawk" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have eyes like a hawk') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sb''s heart is in the right place', NULL, 'Example: We often use "someone''s heart is in the right place" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sb''s heart is in the right place') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'take your hat off to someone', NULL, 'Example: We often use "take your hat off to someone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('take your hat off to someone') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'cool, calm and collected', NULL, 'Example: We often use "cool, calm and collected" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('cool, calm and collected') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Look a gift horse in the mouth', NULL, 'Example: We often use "Look a gift horse in the mouth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Look a gift horse in the mouth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'lose your head', NULL, 'Example: We often use "lose your head" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('lose your head') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'for want of a better word', NULL, 'Example: We often use "for want of a better word" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('for want of a better word') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get the message', NULL, 'Example: We often use "get the message" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get the message') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have a bash', NULL, 'Example: We often use "have a bash" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have a bash') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be after sb''s blood', NULL, 'Example: We often use "be after someone''s blood" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be after sb''s blood') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'fall on deaf ears', NULL, 'Example: We often use "fall on deaf ears" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('fall on deaf ears') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'an eye-opener', NULL, 'Example: We often use "an eye-opener" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('an eye-opener') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Throw in the towel', 'сдаться', 'Example: We often use "Throw in the towel" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Throw in the towel') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'lose heart', NULL, 'Example: We often use "lose heart" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('lose heart') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'My lips are sealed', NULL, 'Example: We often use "My lips are sealed" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('My lips are sealed') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be light years ahead', NULL, 'Example: We often use "Be light years ahead" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be light years ahead') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be in the dark', NULL, 'Example: We often use "be in the dark" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be in the dark') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'would give you the shirt off their back', NULL, 'Example: We often use "would give you the shirt off their back" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('would give you the shirt off their back') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep sb on their toes', NULL, 'Example: We often use "keep someone on their toes" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep sb on their toes') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Have a chip on your shoulder', 'быть обиженным', 'Example: We often use "Have a chip on your shoulder" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Have a chip on your shoulder') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'few and far between', NULL, 'Example: We often use "few and far between" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('few and far between') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be like a fish out of water', NULL, 'Example: We often use "be like a fish out of water" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be like a fish out of water') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be a blessing in disguise', NULL, 'Example: We often use "be a blessing in disguise" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be a blessing in disguise') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'steal someone''s thunder', NULL, 'Example: We often use "steal someone''s thunder" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('steal someone''s thunder') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make the best of a bad job', NULL, 'Example: We often use "make the best of a bad job" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make the best of a bad job') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Miss the point', 'не понять сути', 'Example: We often use "Miss the point" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Miss the point') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'How long is a piece of string?', NULL, 'We often use "How long is a piece of string?" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('How long is a piece of string?') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a piece/slice of the action', NULL, 'Example: We often use "a piece/slice of the action" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a piece/slice of the action') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Jump on the bandwagon', 'примкнуть к большинству', 'Example: We often use "Jump on the bandwagon" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Jump on the bandwagon') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'hit the big time', NULL, 'Example: We often use "hit the big time" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('hit the big time') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'The tip of the iceberg', 'верхушка айсберга', 'Example: We often use "The tip of the iceberg" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('The tip of the iceberg') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have the edge over', NULL, 'Example: We often use "have the edge over" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have the edge over') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not know the meaning of the word', NULL, 'Example: We often use "not know the meaning of the word" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not know the meaning of the word') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'send/drive sb round the bend/twist', NULL, 'Example: We often use "send/drive someone round the bend/twist" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('send/drive sb round the bend/twist') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'let yourself go', NULL, 'Example: We often use "let yourself go" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('let yourself go') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'find out how the land lies', NULL, 'Example: We often use "find out how the land lies" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('find out how the land lies') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'catch sb''s eye', NULL, 'Example: We often use "catch someone''s eye" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('catch sb''s eye') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Twist someone''s arm', 'уговорить', 'Example: We often use "Twist someone''s arm" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Twist someone''s arm') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'too many cooks', NULL, 'Example: We often use "too many cooks" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('too many cooks') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'lose sight of', NULL, 'Example: We often use "lose sight of" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('lose sight of') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be second to none', NULL, 'Example: We often use "be second to none" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be second to none') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'at the crack of dawn', NULL, 'Example: We often use "at the crack of dawn" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('at the crack of dawn') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'bend/lean over backwards', NULL, 'Example: We often use "bend/lean over backwards" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('bend/lean over backwards') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'middle-of-the-road', NULL, 'Example: We often use "middle-of-the-road" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('middle-of-the-road') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get down to brass tacks', NULL, 'Example: We often use "get down to brass tacks" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get down to brass tacks') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be/get/stay in touch with sb', NULL, 'Example: We often use "be/get/stay in touch with someone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be/get/stay in touch with sb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'drive sb to distraction', NULL, 'Example: We often use "drive someone to distraction" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('drive sb to distraction') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be on the ball', NULL, 'Example: We often use "be on the ball" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be on the ball') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Take the plunge', 'решиться', 'Example: We often use "Take the plunge" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Take the plunge') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Put yourself in someone''s shoes', 'поставить себя на место другого', 'Example: We often use "Put yourself in someone''s shoes" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Put yourself in someone''s shoes') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get/put sb''s back up', NULL, 'Example: We often use "get/put someone''s back up" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get/put sb''s back up') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have egg on your face', NULL, 'Example: We often use "have egg on your face" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have egg on your face') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'loom large', NULL, 'Example: We often use "loom large" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('loom large') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have sb over a barrel', NULL, 'Example: We often use "have someone over a barrel" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have sb over a barrel') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'cost an arm and a leg', NULL, 'Example: We often use "cost an arm and a leg" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('cost an arm and a leg') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'bend the rules', NULL, 'Example: We often use "bend the rules" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('bend the rules') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go all out', NULL, 'Example: We often use "go all out" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go all out') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'come (back) down to earth with a bang/bump/jolt', NULL, 'Example: We often use "come (back) down to earth with a bang/bump/jolt" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('come (back) down to earth with a bang/bump/jolt') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in the long medium short term', NULL, 'Example: We often use "in the long medium short term" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in the long medium short term') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'poke/stick your nose into', NULL, 'Example: We often use "poke/stick your nose into" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('poke/stick your nose into') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a back-seat driver', NULL, 'Example: We often use "a back-seat driver" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a back-seat driver') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go up in smoke', NULL, 'Example: We often use "go up in smoke" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go up in smoke') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get the picture', NULL, 'Example: We often use "get the picture" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get the picture') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be up in the air', NULL, 'Example: We often use "be up in the air" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be up in the air') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'toffee-nosed', NULL, 'Example: We often use "toffee-nosed" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('toffee-nosed') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be lost for words', NULL, 'Example: We often use "be lost for words" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be lost for words') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be under the weather', NULL, 'Example: We often use "Be under the weather" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be under the weather') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'play by ear', NULL, 'Example: We often use "play by ear" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('play by ear') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'as strong as an ox', NULL, 'Example: We often use "as strong as an ox" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('as strong as an ox') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get/have itchy feet', NULL, 'Example: We often use "get/have itchy feet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get/have itchy feet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'live (from) hand to mouth', NULL, 'Example: We often use "live (from) hand to mouth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('live (from) hand to mouth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a money-spinner', NULL, 'Example: We often use "a money-spinner" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a money-spinner') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'there''s no peace/rest for the wicked', NULL, 'Example: We often use "there''s no peace/rest for the wicked" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('there''s no peace/rest for the wicked') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'at the back of your mind', NULL, 'Example: We often use "at the back of your mind" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('at the back of your mind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'your mind goes blank', NULL, 'Example: We often use "your mind goes blank" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('your mind goes blank') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'break sb''s heart', NULL, 'Example: We often use "break someone''s heart" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('break sb''s heart') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get/start off on the wrong foot', NULL, 'Example: We often use "get/start off on the wrong foot" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get/start off on the wrong foot') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep it under your hat', NULL, 'Example: We often use "keep it under your hat" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep it under your hat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be a piece of cake', NULL, 'Example: We often use "be a piece of cake" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be a piece of cake') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'poke fun at', NULL, 'Example: We often use "poke fun at" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('poke fun at') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'chase rainbows', NULL, 'Example: We often use "chase rainbows" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('chase rainbows') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'talk through your hat', NULL, 'Example: We often use "talk through your hat" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('talk through your hat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make the most of', NULL, 'Example: We often use "make the most of" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make the most of') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'fast and furious', NULL, 'Example: We often use "fast and furious" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('fast and furious') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Out of sight, out of mind', NULL, 'Example: We often use "Out of sight, out of mind" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Out of sight, out of mind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'all over the place', NULL, 'Example: We often use "all over the place" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('all over the place') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'start the ball rolling', NULL, 'Example: We often use "start the ball rolling" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('start the ball rolling') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have something in the bag', NULL, 'Example: We often use "have something in the bag" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have something in the bag') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Cut corners', 'делать спустя рукава', 'Example: We often use "Cut corners" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Cut corners') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'think big', NULL, 'Example: We often use "think big" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('think big') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'climb to the top of the career ladder', NULL, 'Example: We often use "climb to the top of the career ladder" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('climb to the top of the career ladder') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'leave your mark', NULL, 'Example: We often use "leave your mark" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('leave your mark') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', '(not) ring any bells / a bell (with me)', NULL, 'Example: We often use "(not) ring any bells / a bell (with me)" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('(not) ring any bells / a bell (with me)') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pop the question', NULL, 'Example: We often use "pop the question" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pop the question') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'touch wood', NULL, 'Example: We often use "touch wood" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('touch wood') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pull sb''s leg', NULL, 'Example: We often use "pull someone''s leg" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pull sb''s leg') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Rock the boat', 'раскачивать лодку', 'Example: We often use "Rock the boat" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Rock the boat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'an acid test', NULL, 'Example: We often use "an acid test" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('an acid test') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go off the deep end', NULL, 'Example: We often use "go off the deep end" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go off the deep end') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Better late than never', 'лучше поздно, чем никогда', 'Example: We often use "Better late than never" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Better late than never') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be snowed under', NULL, 'Example: We often use "be snowed under" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be snowed under') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go back to square one', NULL, 'Example: We often use "go back to square one" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go back to square one') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'take a back seat', NULL, 'Example: We often use "take a back seat" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('take a back seat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'as dry as a bone', NULL, 'Example: We often use "as dry as a bone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('as dry as a bone') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'at a push', NULL, 'Example: We often use "at a push" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('at a push') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be off the beaten track', NULL, 'Example: We often use "be off the beaten track" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be off the beaten track') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'mouth-watering', NULL, 'Example: We often use "mouth-watering" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('mouth-watering') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'follow in sb''s footsteps', NULL, 'Example: We often use "follow in someone''s footsteps" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('follow in sb''s footsteps') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'catch someone''s eye', NULL, 'Example: We often use "catch someone''s eye" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('catch someone''s eye') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'bear/keep in mind', NULL, 'Example: We often use "bear/keep in mind" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('bear/keep in mind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be on the go', NULL, 'Example: We often use "be on the go" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be on the go') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'fine-tune', NULL, 'Example: We often use "fine-tune" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('fine-tune') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'turn a deaf ear', NULL, 'Example: We often use "turn a deaf ear" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('turn a deaf ear') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put out feelers', NULL, 'Example: We often use "put out feelers" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put out feelers') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'play second fiddle', NULL, 'Example: We often use "play second fiddle" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('play second fiddle') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put your finger on sth', NULL, 'Example: We often use "put your finger on something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put your finger on sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be in the lap of the gods', NULL, 'Example: We often use "be in the lap of the gods" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be in the lap of the gods') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'turn a blind eye', NULL, 'Example: We often use "turn a blind eye" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('turn a blind eye') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'wash your hands of sb/sth', NULL, 'Example: We often use "wash your hands of someone/something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('wash your hands of sb/sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'drive/send sb round the twist/bend', NULL, 'Example: We often use "drive/send someone round the twist/bend" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('drive/send sb round the twist/bend') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'An apple a day keeps the doctor away', NULL, 'Example: We often use "An apple a day keeps the doctor away" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('An apple a day keeps the doctor away') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'let sleeping dogs lie', NULL, 'Example: We often use "let sleeping dogs lie" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('let sleeping dogs lie') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'throw the baby out with the bathwater', NULL, 'Example: We often use "throw the baby out with the bathwater" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('throw the baby out with the bathwater') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'never mind', NULL, 'Example: We often use "never mind" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('never mind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'come clean', NULL, 'Example: We often use "come clean" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('come clean') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'caught in the middle', NULL, 'Example: We often use "caught in the middle" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('caught in the middle') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get a move on', NULL, 'Example: We often use "get a move on" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get a move on') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'You scratch my back and I''ll scratch yours', NULL, 'Example: We often use "You scratch my back and I''ll scratch yours" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('You scratch my back and I''ll scratch yours') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'shed some light on', NULL, 'Example: We often use "shed some light on" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('shed some light on') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a man/woman after your own heart', NULL, 'Example: We often use "a man/woman after your own heart" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a man/woman after your own heart') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'learn your lesson', NULL, 'Example: We often use "learn your lesson" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('learn your lesson') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have/keep both/your feet on the ground', NULL, 'Example: We often use "have/keep both/your feet on the ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have/keep both/your feet on the ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a foregone conclusion', NULL, 'Example: We often use "a foregone conclusion" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a foregone conclusion') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'between the devil and the deep blue sea', NULL, 'Example: We often use "between the devil and the deep blue sea" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('between the devil and the deep blue sea') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'push the boat out', NULL, 'Example: We often use "push the boat out" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('push the boat out') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Boot up your computer', NULL, 'Example: We often use "Boot up your computer" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Boot up your computer') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'side with', NULL, 'Example: We often use "side with" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('side with') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get wind of sth', NULL, 'Example: We often use "get wind of something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get wind of sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Bite the bullet', 'стиснуть зубы', 'Example: We often use "Bite the bullet" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Bite the bullet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'as easy as taking candy from a baby', NULL, 'Example: We often use "as easy as taking candy from a baby" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('as easy as taking candy from a baby') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'cut the ground from under sb''s feet', NULL, 'Example: We often use "cut the ground from under someone''s feet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('cut the ground from under sb''s feet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make a beeline for', NULL, 'Example: We often use "make a beeline for" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make a beeline for') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'blow hot and cold', NULL, 'Example: We often use "blow hot and cold" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('blow hot and cold') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the luck of the draw', NULL, 'Example: We often use "the luck of the draw" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the luck of the draw') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'look daggers at', NULL, 'Example: We often use "look daggers at" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('look daggers at') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be at sb''s beck and call', NULL, 'Example: We often use "be at someone''s beck and call" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be at sb''s beck and call') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have a good head on your shoulders', NULL, 'Example: We often use "have a good head on your shoulders" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have a good head on your shoulders') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'when the chips are down', NULL, 'Example: We often use "when the chips are down" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('when the chips are down') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Jump out of my skin', NULL, 'Example: We often use "Jump out of my skin" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Jump out of my skin') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'run out of steam', NULL, 'Example: We often use "run out of steam" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('run out of steam') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep track', NULL, 'Example: We often use "keep track" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep track') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'more than meets the eye', NULL, 'Example: We often use "more than meets the eye" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('more than meets the eye') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'never/not do anything/things by halves', NULL, 'Example: We often use "never/not do anything/things by halves" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('never/not do anything/things by halves') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a figment of your imagination', NULL, 'Example: We often use "a figment of your imagination" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a figment of your imagination') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'knock on wood', NULL, 'Example: We often use "knock on wood" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('knock on wood') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'bring the house down', NULL, 'Example: We often use "bring the house down" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('bring the house down') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get out of bed on the wrong side', NULL, 'Example: We often use "get out of bed on the wrong side" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get out of bed on the wrong side') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'bring a lump to your throat', NULL, 'Example: We often use "bring a lump to your throat" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('bring a lump to your throat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get right up sb''s nose', NULL, 'Example: We often use "get right up someone''s nose" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get right up sb''s nose') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be (like) water off a duck''s back', NULL, 'Example: We often use "be (like) water off a duck''s back" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be (like) water off a duck''s back') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Give someone the benefit of the doubt', 'поверить на слово', 'Example: We often use "Give someone the benefit of the doubt" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Give someone the benefit of the doubt') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'it''s a small world', NULL, 'Example: We often use "it''s a small world" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('it''s a small world') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'close but no cigar', NULL, 'Example: We often use "close but no cigar" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('close but no cigar') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'on the ball', NULL, 'Example: We often use "on the ball" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('on the ball') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'speak your mind', NULL, 'Example: We often use "speak your mind" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('speak your mind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'six of one, half a dozen of the other', NULL, 'Example: We often use "six of one, half a dozen of the other" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('six of one, half a dozen of the other') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be out of line', NULL, 'Example: We often use "be out of line" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be out of line') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'set your heart on sth', NULL, 'Example: We often use "set your heart on something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('set your heart on sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'The apple of someone''s eyes', NULL, 'Example: We often use "The apple of someone''s eyes" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('The apple of someone''s eyes') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'blood and guts', NULL, 'Example: We often use "blood and guts" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('blood and guts') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a matter of opinion', NULL, 'Example: We often use "a matter of opinion" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a matter of opinion') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in the heat of the moment', NULL, 'Example: We often use "in the heat of the moment" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in the heat of the moment') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be a load weight off your mind', NULL, 'Example: We often use "be a load weight off your mind" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be a load weight off your mind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'on a knife-edge', NULL, 'Example: We often use "on a knife-edge" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('on a knife-edge') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'take under your wing', NULL, 'Example: We often use "take under your wing" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('take under your wing') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'hold/stand your ground', NULL, 'Example: We often use "hold/stand your ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('hold/stand your ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Come out of the left field', NULL, 'Example: We often use "Come out of the left field" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Come out of the left field') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go to any/great lengths', NULL, 'Example: We often use "go to any/great lengths" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go to any/great lengths') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give sb a hand', NULL, 'Example: We often use "give someone a hand" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give sb a hand') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get a word in edgeways', NULL, 'Example: We often use "get a word in edgeways" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get a word in edgeways') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be up to scratch', NULL, 'Example: We often use "be up to scratch" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be up to scratch') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'It''s That''s the story of my life!', NULL, 'We often use "It''s That''s the story of my life!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('It''s That''s the story of my life!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have green fingers', NULL, 'Example: We often use "have green fingers" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have green fingers') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'In the nick of time', 'в последний момент', 'Example: We often use "In the nick of time" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('In the nick of time') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'On the same page', 'понимать одинаково', 'Example: We often use "On the same page" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('On the same page') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Burn bridges', 'сжечь мосты', 'Example: We often use "Burn bridges" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Burn bridges') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'by word of mouth', NULL, 'Example: We often use "by word of mouth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('by word of mouth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be in the pipeline', NULL, 'Example: We often use "be in the pipeline" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be in the pipeline') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Spill the beans', 'раскрыть секрет', 'Example: We often use "Spill the beans" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Spill the beans') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'set/put sb''s mind at rest', NULL, 'Example: We often use "set/put someone''s mind at rest" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('set/put sb''s mind at rest') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'laugh all the way to the bank', NULL, 'Example: We often use "laugh all the way to the bank" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('laugh all the way to the bank') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be out on a limb', NULL, 'Example: We often use "be out on a limb" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be out on a limb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'On thin ice', 'в опасной ситуации', 'Example: We often use "On thin ice" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('On thin ice') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a chink in your armour', NULL, 'Example: We often use "a chink in your armour" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a chink in your armour') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not mince your words', NULL, 'Example: We often use "not mince your words" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not mince your words') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'off the back of a lorry', NULL, 'Example: We often use "off the back of a lorry" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('off the back of a lorry') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be a pain in the neck', NULL, 'Example: We often use "be a pain in the neck" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be a pain in the neck') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'as busy as a bee', NULL, 'Example: We often use "as busy as a bee" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('as busy as a bee') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the tide turns', NULL, 'Example: We often use "the tide turns" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the tide turns') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a change of heart', NULL, 'Example: We often use "a change of heart" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a change of heart') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a hidden agenda', NULL, 'Example: We often use "a hidden agenda" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a hidden agenda') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a bird in the hand', NULL, 'Example: We often use "a bird in the hand" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a bird in the hand') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep yourself to yourself', NULL, 'Example: We often use "keep yourself to yourself" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep yourself to yourself') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be at each other''s throat', NULL, 'Example: We often use "be at each other''s throat" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be at each other''s throat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a dab hand', NULL, 'Example: We often use "a dab hand" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a dab hand') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a rule of thumb', NULL, 'Example: We often use "a rule of thumb" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a rule of thumb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a shoulder to cry on', NULL, 'Example: We often use "a shoulder to cry on" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a shoulder to cry on') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'live on another planet', NULL, 'Example: We often use "live on another planet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('live on another planet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'learn know sth off by heart', NULL, 'Example: We often use "learn know something off by heart" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('learn know sth off by heart') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'light at the end of the tunnel', NULL, 'Example: We often use "light at the end of the tunnel" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('light at the end of the tunnel') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Put a sock in it', 'замолчи', 'Example: We often use "Put a sock in it" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Put a sock in it') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'small talk', NULL, 'Example: We often use "small talk" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('small talk') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'take sth at face value', NULL, 'Example: We often use "take something at face value" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('take sth at face value') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'an unknown quantity', NULL, 'Example: We often use "an unknown quantity" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('an unknown quantity') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be in your element', NULL, 'Example: We often use "be in your element" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be in your element') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'for the time being', NULL, 'Example: We often use "for the time being" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('for the time being') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Go the extra mile', 'сделать больше ожидаемого', 'Example: We often use "Go the extra mile" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Go the extra mile') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pay through the nose for sth', NULL, 'Example: We often use "pay through the nose for something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pay through the nose for sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get (hold of) the wrong end of the stick', NULL, 'Example: We often use "get (hold of) the wrong end of the stick" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get (hold of) the wrong end of the stick') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep/have both/your feet on the ground', NULL, 'Example: We often use "keep/have both/your feet on the ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep/have both/your feet on the ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'at a crossroads', NULL, 'Example: We often use "at a crossroads" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('at a crossroads') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be as fresh as a daisy', NULL, 'Example: We often use "Be as fresh as a daisy" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be as fresh as a daisy') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'green belt', NULL, 'Example: We often use "green belt" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('green belt') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'to hand', NULL, 'Example: We often use "to hand" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('to hand') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'under false pretences', NULL, 'Example: We often use "under false pretences" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('under false pretences') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'as bold as brass', NULL, 'Example: We often use "as bold as brass" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('as bold as brass') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get to grips with', NULL, 'Example: We often use "get to grips with" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get to grips with') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Hit the sack', 'пойти спать', 'Example: We often use "Hit the sack" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Hit the sack') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'land fall on your feet', NULL, 'Example: We often use "land fall on your feet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('land fall on your feet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put the cart before the horse', NULL, 'Example: We often use "put the cart before the horse" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put the cart before the horse') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'fed up (to the back teeth)', NULL, 'Example: We often use "fed up (to the back teeth)" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('fed up (to the back teeth)') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a misery guts', NULL, 'Example: We often use "a misery guts" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a misery guts') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'chase your tail', NULL, 'Example: We often use "chase your tail" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('chase your tail') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'set alarm bells ringing', NULL, 'Example: We often use "set alarm bells ringing" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('set alarm bells ringing') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'drag your feet/heels', NULL, 'Example: We often use "drag your feet/heels" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('drag your feet/heels') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sail close to the wind', NULL, 'Example: We often use "sail close to the wind" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sail close to the wind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'prepare the ground', NULL, 'Example: We often use "prepare the ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('prepare the ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be in the spotlight', NULL, 'Example: We often use "be in the spotlight" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be in the spotlight') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'couldn''t believe your eyes', NULL, 'Example: We often use "couldn''t believe your eyes" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('couldn''t believe your eyes') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'bare your heart/soul', NULL, 'Example: We often use "bare your heart/soul" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('bare your heart/soul') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be in sb''s good books', NULL, 'Example: We often use "be in someone''s good books" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be in sb''s good books') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be a weight/load off your mind', NULL, 'Example: We often use "be a weight/load off your mind" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be a weight/load off your mind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sell like hot cakes', NULL, 'Example: We often use "sell like hot cakes" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sell like hot cakes') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a lone wolf', NULL, 'Example: We often use "a lone wolf" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a lone wolf') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'from time immemorial', NULL, 'Example: We often use "from time immemorial" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('from time immemorial') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Don''t cry over spilled milk', 'что сделано, то сделано', 'Example: We often use "Don''t cry over spilled milk" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Don''t cry over spilled milk') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a long haul', NULL, 'Example: We often use "a long haul" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a long haul') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be a far cry from sth', NULL, 'Example: We often use "be a far cry from something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be a far cry from sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'couldn''t believe your ears', NULL, 'Example: We often use "couldn''t believe your ears" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('couldn''t believe your ears') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'skate on thin ice', NULL, 'Example: We often use "skate on thin ice" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('skate on thin ice') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'add insult to injury', NULL, 'Example: We often use "add insult to injury" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('add insult to injury') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Walk on eggshells', 'ходить по тонкому льду', 'Example: We often use "Walk on eggshells" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Walk on eggshells') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in the same boat', NULL, 'Example: We often use "in the same boat" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in the same boat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a far cry from sth', NULL, 'Example: We often use "a far cry from something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a far cry from sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pour cold water on sth', NULL, 'Example: We often use "pour cold water on something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pour cold water on sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'from scratch', NULL, 'Example: We often use "from scratch" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('from scratch') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have sb on the brain', NULL, 'Example: We often use "have someone on the brain" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have sb on the brain') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'grit your teeth', NULL, 'Example: We often use "grit your teeth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('grit your teeth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'run/go/work like clockwork', NULL, 'Example: We often use "run/go/work like clockwork" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('run/go/work like clockwork') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'on the fence', NULL, 'Example: We often use "on the fence" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('on the fence') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get your head (a)round', NULL, 'Example: We often use "get your head (a)round" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get your head (a)round') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A pain in the neck', NULL, 'Example: We often use "A pain in the neck" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('A pain in the neck') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get a (real) kick out of sth', NULL, 'Example: We often use "get a (real) kick out of something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get a (real) kick out of sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'along on the right lines', NULL, 'Example: We often use "along on the right lines" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('along on the right lines') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'on the tip of your tongue', NULL, 'Example: We often use "on the tip of your tongue" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('on the tip of your tongue') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'wild goose chase', NULL, 'Example: We often use "wild goose chase" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('wild goose chase') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be miles away', NULL, 'Example: We often use "be miles away" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be miles away') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Make up your mind', 'принять решение', 'Example: We often use "Make up your mind" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Make up your mind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'play your cards right', NULL, 'Example: We often use "play your cards right" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('play your cards right') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'you name it', NULL, 'Example: We often use "you name it" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('you name it') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'set the stage for', NULL, 'Example: We often use "set the stage for" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('set the stage for') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'at/in the back of beyond', NULL, 'Example: We often use "at/in the back of beyond" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('at/in the back of beyond') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have it out with sb', NULL, 'Example: We often use "have it out with someone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have it out with sb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put two and two together', NULL, 'Example: We often use "put two and two together" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put two and two together') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give as good as you get', NULL, 'Example: We often use "give as good as you get" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give as good as you get') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Leave no stone unturned', 'перевернуть каждый камень', 'Example: We often use "Leave no stone unturned" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Leave no stone unturned') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'second best', NULL, 'Example: We often use "second best" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('second best') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go back a long way', NULL, 'Example: We often use "go back a long way" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go back a long way') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not take no for an answer', NULL, 'Example: We often use "not take no for an answer" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not take no for an answer') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go downhill', NULL, 'Example: We often use "go downhill" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go downhill') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'change hands', NULL, 'Example: We often use "change hands" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('change hands') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'hit the ceiling/roof', NULL, 'Example: We often use "hit the ceiling/roof" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('hit the ceiling/roof') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be a sign of the times', NULL, 'Example: We often use "be a sign of the times" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be a sign of the times') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have/keep one eye on', NULL, 'Example: We often use "have/keep one eye on" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have/keep one eye on') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a list as long as your arm', NULL, 'Example: We often use "a list as long as your arm" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a list as long as your arm') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'at the end of the day', NULL, 'Example: We often use "at the end of the day" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('at the end of the day') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'one thing leads to another', NULL, 'Example: We often use "one thing leads to another" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('one thing leads to another') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have a go at', NULL, 'Example: We often use "have a go at" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have a go at') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be the teacher''s pet', NULL, 'Example: We often use "Be the teacher''s pet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be the teacher''s pet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the travel bug', NULL, 'Example: We often use "the travel bug" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the travel bug') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep sb in the picture', NULL, 'Example: We often use "keep someone in the picture" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep sb in the picture') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'push your luck', NULL, 'Example: We often use "push your luck" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('push your luck') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'cross your mind', NULL, 'Example: We often use "cross your mind" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('cross your mind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'open your heart', NULL, 'Example: We often use "open your heart" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('open your heart') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'fall into place', NULL, 'Example: We often use "fall into place" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('fall into place') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the best/greatest thing since sliced bread', NULL, 'Example: We often use "the best/greatest thing since sliced bread" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the best/greatest thing since sliced bread') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'could do sth with one arm/hand tied', NULL, 'Example: We often use "could do something with one arm/hand tied" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('could do sth with one arm/hand tied') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be the salt of the earth', NULL, 'Example: We often use "be the salt of the earth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be the salt of the earth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'throw a curveball', NULL, 'Example: We often use "throw a curveball" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('throw a curveball') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pull the plug', NULL, 'Example: We often use "pull the plug" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pull the plug') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'stick out like a sore thumb', NULL, 'Example: We often use "stick out like a sore thumb" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('stick out like a sore thumb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the odd one out', NULL, 'Example: We often use "the odd one out" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the odd one out') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'To learn by the ropes', NULL, 'Example: We often use "To learn by the ropes" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('To learn by the ropes') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a dark horse', NULL, 'Example: We often use "a dark horse" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a dark horse') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'teach an old dog new tricks', NULL, 'Example: We often use "teach an old dog new tricks" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('teach an old dog new tricks') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get the ball rolling', NULL, 'Example: We often use "get the ball rolling" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get the ball rolling') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'word of mouth', NULL, 'Example: We often use "word of mouth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('word of mouth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be hitting/banging your head against a brick wall', NULL, 'Example: We often use "be hitting/banging your head against a brick wall" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be hitting/banging your head against a brick wall') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a dead loss', NULL, 'Example: We often use "a dead loss" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a dead loss') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go round in circles', NULL, 'Example: We often use "go round in circles" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go round in circles') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get into gear', NULL, 'Example: We often use "get into gear" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get into gear') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be an open book', NULL, 'Example: We often use "Be an open book" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be an open book') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a quivering/nervous wreck', NULL, 'Example: We often use "a quivering/nervous wreck" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a quivering/nervous wreck') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put/throw a spanner in the works', NULL, 'Example: We often use "put/throw a spanner in the works" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put/throw a spanner in the works') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be a cog in the wheel', NULL, 'Example: We often use "Be a cog in the wheel" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be a cog in the wheel') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not look a gift horse in the mouth', NULL, 'Example: We often use "not look a gift horse in the mouth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not look a gift horse in the mouth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'All ears', 'внимательно слушать', 'Example: We often use "All ears" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('All ears') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in the teeth of sth', NULL, 'Example: We often use "in the teeth of something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in the teeth of sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'raise (a few) eyebrows', NULL, 'Example: We often use "raise (a few) eyebrows" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('raise (a few) eyebrows') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have cold feet', NULL, 'Example: We often use "have cold feet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have cold feet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep up appearances', NULL, 'Example: We often use "keep up appearances" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep up appearances') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'try your hand at sth', NULL, 'Example: We often use "try your hand at something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('try your hand at sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'come down on one side or the other', NULL, 'Example: We often use "come down on one side or the other" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('come down on one side or the other') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a tough/hard act to follow', NULL, 'Example: We often use "a tough/hard act to follow" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a tough/hard act to follow') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go back to the drawing board', NULL, 'Example: We often use "go back to the drawing board" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go back to the drawing board') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'like there''s no tomorrow', NULL, 'Example: We often use "like there''s no tomorrow" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('like there''s no tomorrow') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a balancing act', NULL, 'Example: We often use "a balancing act" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a balancing act') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a narrow escape', NULL, 'Example: We often use "a narrow escape" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a narrow escape') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'ram sth down sb''s throat', NULL, 'Example: We often use "ram something down someone''s throat" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('ram sth down sb''s throat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in the blink of an eye', NULL, 'Example: We often use "in the blink of an eye" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in the blink of an eye') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'just what the doctor ordered', NULL, 'Example: We often use "just what the doctor ordered" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('just what the doctor ordered') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Get cold feet', 'струсить', 'Example: We often use "Get cold feet" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Get cold feet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a question mark (hanging) over', NULL, 'Example: We often use "a question mark (hanging) over" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a question mark (hanging) over') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'face to face', NULL, 'Example: We often use "face to face" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('face to face') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be on the cards', NULL, 'Example: We often use "be on the cards" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be on the cards') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'whet your appetite', NULL, 'Example: We often use "whet your appetite" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('whet your appetite') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Rain on someone''s parade', 'испортить праздник', 'Example: We often use "Rain on someone''s parade" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Rain on someone''s parade') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'cross that bridge when you come to it', NULL, 'Example: We often use "cross that bridge when you come to it" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('cross that bridge when you come to it') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put all your eggs in one basket', NULL, 'Example: We often use "put all your eggs in one basket" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put all your eggs in one basket') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get your act together', NULL, 'Example: We often use "get your act together" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get your act together') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be all talk (and no action)', NULL, 'Example: We often use "be all talk (and no action)" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be all talk (and no action)') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be on top of the world', NULL, 'Example: We often use "be on top of the world" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be on top of the world') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a fly on the wall', NULL, 'Example: We often use "a fly on the wall" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a fly on the wall') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'along the lines of sth', NULL, 'Example: We often use "along the lines of something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('along the lines of sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not set the world on fire', NULL, 'Example: We often use "not set the world on fire" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not set the world on fire') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Under your nose', 'прямо под носом', 'Example: We often use "Under your nose" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Under your nose') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'against your better judgement', NULL, 'Example: We often use "against your better judgement" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('against your better judgement') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'find your feet', NULL, 'Example: We often use "find your feet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('find your feet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have big shoes to fill', NULL, 'Example: We often use "have big shoes to fill" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have big shoes to fill') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make a go of', NULL, 'Example: We often use "make a go of" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make a go of') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get your lines/wires crossed', NULL, 'Example: We often use "get your lines/wires crossed" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get your lines/wires crossed') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'without a backward glance', NULL, 'Example: We often use "without a backward glance" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('without a backward glance') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Ring a bell', 'звучит знакомо', 'Example: We often use "Ring a bell" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Ring a bell') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sign on the dotted line', NULL, 'Example: We often use "sign on the dotted line" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sign on the dotted line') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'As cool as a cucumber', NULL, 'Example: We often use "As cool as a cucumber" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('As cool as a cucumber') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go to the polls', NULL, 'Example: We often use "go to the polls" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go to the polls') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go to town', NULL, 'Example: We often use "go to town" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go to town') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have a sweet tooth', NULL, 'Example: We often use "have a sweet tooth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have a sweet tooth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'up in arms', NULL, 'Example: We often use "up in arms" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('up in arms') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'scream your head off', NULL, 'Example: We often use "scream your head off" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('scream your head off') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a breath of fresh air', NULL, 'Example: We often use "a breath of fresh air" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a breath of fresh air') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'as cunning/sly as a fox', NULL, 'Example: We often use "as cunning/sly as a fox" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('as cunning/sly as a fox') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be out of sorts', NULL, 'Example: We often use "be out of sorts" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be out of sorts') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'take a leaf out of sb''s book', NULL, 'Example: We often use "take a leaf out of someone''s book" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('take a leaf out of sb''s book') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'clean as a whistle', NULL, 'Example: We often use "clean as a whistle" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('clean as a whistle') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be that as it may', NULL, 'Example: We often use "be that as it may" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be that as it may') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put sth down to experience', NULL, 'Example: We often use "put something down to experience" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put sth down to experience') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'drive sb up the wall', NULL, 'Example: We often use "drive someone up the wall" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('drive sb up the wall') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'as far as the eye can see', NULL, 'Example: We often use "as far as the eye can see" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('as far as the eye can see') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'hang by a thread', NULL, 'Example: We often use "hang by a thread" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('hang by a thread') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have bigger fish to fry', NULL, 'Example: We often use "have bigger fish to fry" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have bigger fish to fry') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make or break', NULL, 'Example: We often use "make or break" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make or break') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give sth up as a bad job', NULL, 'Example: We often use "give something up as a bad job" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give sth up as a bad job') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Don''t put all your eggs in one A basket', NULL, 'Example: We often use "Don''t put all your eggs in one A basket" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Don''t put all your eggs in one A basket') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A blessing in disguise', 'скрытое благо', 'Example: We often use "A blessing in disguise" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('A blessing in disguise') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'see sth coming (a mile off)', NULL, 'Example: We often use "see something coming (a mile off)" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('see sth coming (a mile off)') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have a bone to pick with sb', NULL, 'Example: We often use "have a bone to pick with someone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have a bone to pick with sb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sb''s bark is worse than their bite', NULL, 'Example: We often use "someone''s bark is worse than their bite" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sb''s bark is worse than their bite') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'would not be seen dead', NULL, 'Example: We often use "would not be seen dead" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('would not be seen dead') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'fall/land on your feet', NULL, 'Example: We often use "fall/land on your feet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('fall/land on your feet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'well-to-do', NULL, 'Example: We often use "well-to-do" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('well-to-do') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not have the foggiest (idea)', NULL, 'Example: We often use "not have the foggiest (idea)" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not have the foggiest (idea)') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be as flat as a pancake', NULL, 'Example: We often use "be as flat as a pancake" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be as flat as a pancake') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the elephant in the room', NULL, 'Example: We often use "the elephant in the room" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the elephant in the room') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'no prizes for guessing sth', NULL, 'Example: We often use "no prizes for guessing something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('no prizes for guessing sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make a big thing of', NULL, 'Example: We often use "make a big thing of" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make a big thing of') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'clean up your act', NULL, 'Example: We often use "clean up your act" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('clean up your act') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have a heart of gold', NULL, 'Example: We often use "have a heart of gold" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have a heart of gold') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the cards are stacked against you', NULL, 'Example: We often use "the cards are stacked against you" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the cards are stacked against you') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get/jump/leap on the bandwagon', NULL, 'Example: We often use "get/jump/leap on the bandwagon" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get/jump/leap on the bandwagon') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get off to a flying start', NULL, 'Example: We often use "get off to a flying start" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get off to a flying start') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give sb the benefit of the doubt', NULL, 'Example: We often use "give someone the benefit of the doubt" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give sb the benefit of the doubt') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the show must go on', NULL, 'Example: We often use "the show must go on" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the show must go on') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'shake a leg', NULL, 'Example: We often use "shake a leg" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('shake a leg') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get off scot-free', NULL, 'Example: We often use "get off scot-free" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get off scot-free') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'throw the baby out with the', NULL, 'Example: We often use "throw the baby out with the" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('throw the baby out with the') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'cut things fine', NULL, 'Example: We often use "cut things fine" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('cut things fine') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'I wouldn''t touch sb/sth with a barge pole', NULL, 'Example: We often use "I wouldn''t touch someone/something with a barge pole" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('I wouldn''t touch sb/sth with a barge pole') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give sb food for thought', NULL, 'Example: We often use "give someone food for thought" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give sb food for thought') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Being in the spotlight', NULL, 'Example: We often use "Being in the spotlight" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Being in the spotlight') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'laugh your head off', NULL, 'Example: We often use "laugh your head off" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('laugh your head off') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the facts of life', NULL, 'Example: We often use "the facts of life" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the facts of life') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'shout your head off', NULL, 'Example: We often use "shout your head off" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('shout your head off') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Such is life!', NULL, 'We often use "Such is life!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Such is life!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'work like magic', NULL, 'Example: We often use "work like magic" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('work like magic') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the lesser of two evils', NULL, 'Example: We often use "the lesser of two evils" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the lesser of two evils') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be (right) up your street/alley', NULL, 'Example: We often use "be (right) up your street/alley" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be (right) up your street/alley') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pick up the bill/tab', NULL, 'Example: We often use "pick up the bill/tab" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pick up the bill/tab') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'birds of a feather', NULL, 'Example: We often use "birds of a feather" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('birds of a feather') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be no laughing matter', NULL, 'Example: We often use "be no laughing matter" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be no laughing matter') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'wouldn''t dream of', NULL, 'Example: We often use "wouldn''t dream of" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('wouldn''t dream of') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'come rain or shine', NULL, 'Example: We often use "come rain or shine" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('come rain or shine') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have/throw a fit', NULL, 'Example: We often use "have/throw a fit" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have/throw a fit') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give sb a piece of your mind', NULL, 'Example: We often use "give someone a piece of your mind" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give sb a piece of your mind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'fly off the handle', NULL, 'Example: We often use "fly off the handle" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('fly off the handle') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not (enough) room to swing a cat', NULL, 'Example: We often use "not (enough) room to swing a cat" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not (enough) room to swing a cat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be headhunted', NULL, 'Example: We often use "be headhunted" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be headhunted') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have your work cut out', NULL, 'Example: We often use "have your work cut out" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have your work cut out') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in the middle of nowhere', NULL, 'Example: We often use "in the middle of nowhere" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in the middle of nowhere') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'You should be so lucky!', NULL, 'We often use "You should be so lucky!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('You should be so lucky!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'I can take it or leave it', NULL, 'Example: We often use "I can take it or leave it" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('I can take it or leave it') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Pull yourself together', 'собраться', 'Example: We often use "Pull yourself together" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Pull yourself together') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be asking for it/trouble', NULL, 'Example: We often use "be asking for it/trouble" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be asking for it/trouble') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'There''s no accounting for taste(s)!', NULL, 'We often use "There''s no accounting for taste(s)!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('There''s no accounting for taste(s)!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a necessary evil', NULL, 'Example: We often use "a necessary evil" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a necessary evil') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'carry the can', NULL, 'Example: We often use "carry the can" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('carry the can') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the grass is always greener', NULL, 'Example: We often use "the grass is always greener" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the grass is always greener') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'do your own thing', NULL, 'Example: We often use "do your own thing" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('do your own thing') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'drive sb round the bend/twist', NULL, 'Example: We often use "drive someone round the bend/twist" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('drive sb round the bend/twist') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'rack your brains', NULL, 'Example: We often use "rack your brains" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('rack your brains') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be on the back burner', NULL, 'Example: We often use "be on the back burner" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be on the back burner') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'hang/be in the balance', NULL, 'Example: We often use "hang/be in the balance" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('hang/be in the balance') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go out of your way to do sth', NULL, 'Example: We often use "go out of your way to do something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go out of your way to do sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be as busy as a bee', NULL, 'Example: We often use "be as busy as a bee" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be as busy as a bee') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put a brave face on sth', NULL, 'Example: We often use "put a brave face on something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put a brave face on sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be under your feet', NULL, 'Example: We often use "be under your feet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be under your feet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Sail through', NULL, 'Example: We often use "Sail through" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Sail through') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be over the top', NULL, 'Example: We often use "be over the top" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be over the top') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pull strings', NULL, 'Example: We often use "pull strings" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pull strings') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'as light as a feather', NULL, 'Example: We often use "as light as a feather" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('as light as a feather') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Have your nose in the book', NULL, 'Example: We often use "Have your nose in the book" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Have your nose in the book') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'like two peas in a pod', NULL, 'Example: We often use "like two peas in a pod" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('like two peas in a pod') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sb''s heart sinks', NULL, 'Example: We often use "someone''s heart sinks" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sb''s heart sinks') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be only a matter of time', NULL, 'Example: We often use "be only a matter of time" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be only a matter of time') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Hit the nail on the head', 'попасть в точку', 'Example: We often use "Hit the nail on the head" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Hit the nail on the head') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a can of worms', NULL, 'Example: We often use "a can of worms" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a can of worms') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not have a clue', NULL, 'Example: We often use "not have a clue" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not have a clue') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'know sth inside out', NULL, 'Example: We often use "know something inside out" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('know sth inside out') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be in full swing', NULL, 'Example: We often use "be in full swing" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be in full swing') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get to the bottom of', NULL, 'Example: We often use "get to the bottom of" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get to the bottom of') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'dig your heels in', NULL, 'Example: We often use "dig your heels in" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('dig your heels in') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep an eye out for sb/sth', NULL, 'Example: We often use "keep an eye out for someone/something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep an eye out for sb/sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be/hit rock bottom', NULL, 'Example: We often use "be/hit rock bottom" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be/hit rock bottom') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a pack of lies', NULL, 'Example: We often use "a pack of lies" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a pack of lies') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be in line for sth', NULL, 'Example: We often use "be in line for something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be in line for sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'By the skin of your teeth', 'едва-едва', 'Example: We often use "By the skin of your teeth" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('By the skin of your teeth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'drop someone a line', NULL, 'Example: We often use "drop someone a line" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('drop someone a line') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'out-and-out', NULL, 'Example: We often use "out-and-out" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('out-and-out') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a black hole', NULL, 'Example: We often use "a black hole" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a black hole') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get/have your fingers burned/burnt', NULL, 'Example: We often use "get/have your fingers burned/burnt" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get/have your fingers burned/burnt') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'act the fool', NULL, 'Example: We often use "act the fool" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('act the fool') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'six of one and half a dozen of the other', NULL, 'Example: We often use "six of one and half a dozen of the other" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('six of one and half a dozen of the other') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Get out of hand', 'выйти из-под контроля', 'Example: We often use "Get out of hand" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Get out of hand') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'on the spur of the moment', NULL, 'Example: We often use "on the spur of the moment" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('on the spur of the moment') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have all the makings of', NULL, 'Example: We often use "have all the makings of" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have all the makings of') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put sth on hold', NULL, 'Example: We often use "put something on hold" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put sth on hold') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have had it up to here', NULL, 'Example: We often use "have had it up to here" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have had it up to here') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'jump for joy', NULL, 'Example: We often use "jump for joy" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('jump for joy') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be as blind as a bat', NULL, 'Example: We often use "be as blind as a bat" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be as blind as a bat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be for the best', NULL, 'Example: We often use "be for the best" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be for the best') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make light of', NULL, 'Example: We often use "make light of" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make light of') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'do the trick', NULL, 'Example: We often use "do the trick" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('do the trick') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in keeping with sth', NULL, 'Example: We often use "in keeping with something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in keeping with sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put someone on the spot', NULL, 'Example: We often use "put someone on the spot" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put someone on the spot') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'all work and no play', NULL, 'Example: We often use "all work and no play" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('all work and no play') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'smooth sailing', NULL, 'Example: We often use "smooth sailing" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('smooth sailing') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not have a leg to stand on', NULL, 'Example: We often use "not have a leg to stand on" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not have a leg to stand on') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'do your nut', NULL, 'Example: We often use "do your nut" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('do your nut') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put your heart and soul into sth', NULL, 'Example: We often use "put your heart and soul into something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put your heart and soul into sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'call sb''s bluff', NULL, 'Example: We often use "call someone''s bluff" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('call sb''s bluff') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in the short/medium/long term', NULL, 'Example: We often use "in the short/medium/long term" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in the short/medium/long term') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get (sth) off the ground', NULL, 'Example: We often use "get (something) off the ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get (sth) off the ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'hard/hot on the heels of sth', NULL, 'Example: We often use "hard/hot on the heels of something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('hard/hot on the heels of sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'every dog has its day', NULL, 'Example: We often use "every dog has its day" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('every dog has its day') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be left holding the baby', NULL, 'Example: We often use "be left holding the baby" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be left holding the baby') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'chance your arm', NULL, 'Example: We often use "chance your arm" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('chance your arm') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Don''t count your chickens before they hatch', NULL, 'Example: We often use "Don''t count your chickens before they hatch" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Don''t count your chickens before they hatch') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go to ground', NULL, 'Example: We often use "go to ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go to ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'on the one hand', NULL, 'Example: We often use "on the one hand" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('on the one hand') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'with your eyes open', NULL, 'Example: We often use "with your eyes open" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('with your eyes open') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'too many cooks spoil the broth', NULL, 'Example: We often use "too many cooks spoil the broth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('too many cooks spoil the broth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'I (can) feel it in my bones', NULL, 'Example: We often use "I (can) feel it in my bones" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('I (can) feel it in my bones') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be the spitting image of', NULL, 'Example: We often use "be the spitting image of" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be the spitting image of') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'from bad to worse', NULL, 'Example: We often use "from bad to worse" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('from bad to worse') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'two-faced', NULL, 'Example: We often use "two-faced" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('two-faced') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'show sb the ropes', NULL, 'Example: We often use "show someone the ropes" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('show sb the ropes') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go under your own steam', NULL, 'Example: We often use "go under your own steam" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go under your own steam') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Judge a book by its cover', NULL, 'Example: We often use "Judge a book by its cover" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Judge a book by its cover') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Get over it', 'пережить это', 'Example: We often use "Get over it" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Get over it') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in black and white', NULL, 'Example: We often use "in black and white" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in black and white') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'shift your ground', NULL, 'Example: We often use "shift your ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('shift your ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Do everything by the book', NULL, 'Example: We often use "Do everything by the book" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Do everything by the book') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'hold the key to sth', NULL, 'Example: We often use "hold the key to something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('hold the key to sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have sth on the brain', NULL, 'Example: We often use "have something on the brain" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have sth on the brain') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be around the bush', NULL, 'Example: We often use "Be around the bush" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be around the bush') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'on the other hand', NULL, 'Example: We often use "on the other hand" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('on the other hand') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'one way or another', NULL, 'Example: We often use "one way or another" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('one way or another') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be second nature', NULL, 'Example: We often use "be second nature" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be second nature') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make up for lost time', NULL, 'Example: We often use "make up for lost time" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make up for lost time') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be quick-tempered', NULL, 'Example: We often use "Be quick-tempered" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be quick-tempered') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not lift a finger', NULL, 'Example: We often use "not lift a finger" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not lift a finger') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'from/since the year dot', NULL, 'Example: We often use "from/since the year dot" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('from/since the year dot') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sign of the times', NULL, 'Example: We often use "sign of the times" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sign of the times') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'run to ground', NULL, 'Example: We often use "run to ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('run to ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'slog/sweat/work your guts out', NULL, 'Example: We often use "slog/sweat/work your guts out" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('slog/sweat/work your guts out') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'throw sb in the deep end', NULL, 'Example: We often use "throw someone in the deep end" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('throw sb in the deep end') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'could do sth with one hand/arm tied behind your back', NULL, 'Example: We often use "could do something with one hand/arm tied behind your back" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('could do sth with one hand/arm tied behind your back') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be/live on the breadline', NULL, 'Example: We often use "be/live on the breadline" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be/live on the breadline') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Spread like wildfire', NULL, 'Example: We often use "Spread like wildfire" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Spread like wildfire') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the fine/small print', NULL, 'Example: We often use "the fine/small print" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the fine/small print') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be walking/floating on air', NULL, 'Example: We often use "be walking/floating on air" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be walking/floating on air') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'behind the scenes', NULL, 'Example: We often use "behind the scenes" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('behind the scenes') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'against (all) (the) odds', NULL, 'Example: We often use "against (all) (the) odds" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('against (all) (the) odds') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be out for blood', NULL, 'Example: We often use "be out for blood" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be out for blood') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'green with envy', NULL, 'Example: We often use "green with envy" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('green with envy') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Once in a blue moon', 'крайне редко', 'Example: We often use "Once in a blue moon" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Once in a blue moon') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not turn a hair', NULL, 'Example: We often use "not turn a hair" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not turn a hair') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be not on', NULL, 'Example: We often use "be not on" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be not on') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have it in for sb', NULL, 'Example: We often use "have it in for someone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have it in for sb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'blow a fuse', NULL, 'Example: We often use "blow a fuse" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('blow a fuse') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'tie yourself (up) in knots', NULL, 'Example: We often use "tie yourself (up) in knots" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('tie yourself (up) in knots') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'bite sb''s head off', NULL, 'Example: We often use "bite someone''s head off" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('bite sb''s head off') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'off your own bat', NULL, 'Example: We often use "off your own bat" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('off your own bat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Out of the blue', 'как гром среди ясного неба', 'Example: We often use "Out of the blue" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Out of the blue') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'think nothing of', NULL, 'Example: We often use "think nothing of" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('think nothing of') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'spend money like water', NULL, 'Example: We often use "spend money like water" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('spend money like water') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Reinvent the wheel', NULL, 'Example: We often use "Reinvent the wheel" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Reinvent the wheel') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'strike a chord', NULL, 'Example: We often use "strike a chord" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('strike a chord') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'as slippery as an eel', NULL, 'Example: We often use "as slippery as an eel" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('as slippery as an eel') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'blow a fuse/gasket', NULL, 'Example: We often use "blow a fuse/gasket" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('blow a fuse/gasket') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep your head above water', NULL, 'Example: We often use "keep your head above water" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep your head above water') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Let the cat out of the bag', 'проболтаться', 'Example: We often use "Let the cat out of the bag" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Let the cat out of the bag') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'run round like a headless chicken', NULL, 'Example: We often use "run round like a headless chicken" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('run round like a headless chicken') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Get your wires crossed', NULL, 'Example: We often use "Get your wires crossed" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Get your wires crossed') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'twist the knife', NULL, 'Example: We often use "twist the knife" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('twist the knife') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'gain ground', NULL, 'Example: We often use "gain ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('gain ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'off and on', NULL, 'Example: We often use "off and on" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('off and on') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'come full circle', NULL, 'Example: We often use "come full circle" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('come full circle') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'In the long run', 'в долгосрочной перспективе', 'Example: We often use "In the long run" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('In the long run') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be a tough/hard act to follow', NULL, 'Example: We often use "be a tough/hard act to follow" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be a tough/hard act to follow') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put your money where your mouth is', NULL, 'Example: We often use "put your money where your mouth is" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put your money where your mouth is') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make a killing', NULL, 'Example: We often use "make a killing" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make a killing') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sing your heart out', NULL, 'Example: We often use "sing your heart out" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sing your heart out') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'to be on the safe side', NULL, 'Example: We often use "to be on the safe side" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('to be on the safe side') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'if/when it comes to the crunch', NULL, 'Example: We often use "if/when it comes to the crunch" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('if/when it comes to the crunch') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be at loggerheads', NULL, 'Example: We often use "be at loggerheads" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be at loggerheads') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'tie up loose ends', NULL, 'Example: We often use "tie up loose ends" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('tie up loose ends') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'All of a sudden', 'внезапно', 'Example: We often use "All of a sudden" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('All of a sudden') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Take a rain check', 'отложить', 'Example: We often use "Take a rain check" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Take a rain check') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'take care of the pence/pennies', NULL, 'Example: We often use "take care of the pence/pennies" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('take care of the pence/pennies') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'long-winded', NULL, 'Example: We often use "long-winded" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('long-winded') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'on your way up', NULL, 'Example: We often use "on your way up" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('on your way up') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Take my hat off to you', NULL, 'Example: We often use "Take my hat off to you" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Take my hat off to you') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'see/spot sth a mile off', NULL, 'Example: We often use "see/spot something a mile off" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('see/spot sth a mile off') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have a memory like a sieve', NULL, 'Example: We often use "have a memory like a sieve" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have a memory like a sieve') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make it up to someone', NULL, 'Example: We often use "make it up to someone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make it up to someone') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep sb in the dark', NULL, 'Example: We often use "keep someone in the dark" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep sb in the dark') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have butterflies in your stomach', NULL, 'Example: We often use "have butterflies in your stomach" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have butterflies in your stomach') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'flavour of the month', NULL, 'Example: We often use "flavour of the month" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('flavour of the month') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make a clean breast of it', NULL, 'Example: We often use "make a clean breast of it" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make a clean breast of it') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'try a different tack', NULL, 'Example: We often use "try a different tack" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('try a different tack') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put/set the cat among the pigeons', NULL, 'Example: We often use "put/set the cat among the pigeons" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put/set the cat among the pigeons') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'spread yourself too thin', NULL, 'Example: We often use "spread yourself too thin" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('spread yourself too thin') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be floating/walking on air', NULL, 'Example: We often use "be floating/walking on air" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be floating/walking on air') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not be all it''s cracked up to be', NULL, 'Example: We often use "not be all it''s cracked up to be" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not be all it''s cracked up to be') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'up-and-coming', NULL, 'Example: We often use "up-and-coming" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('up-and-coming') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'back-pedal', NULL, 'Example: We often use "back-pedal" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('back-pedal') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'play devil''s advocate', NULL, 'Example: We often use "play devil''s advocate" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('play devil''s advocate') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'can''t keep your eyes off', NULL, 'Example: We often use "can''t keep your eyes off" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('can''t keep your eyes off') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Call it a day', 'закончить на сегодня', 'Example: We often use "Call it a day" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Call it a day') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'draw the line (at sth)', NULL, 'Example: We often use "draw the line (at something)" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('draw the line (at sth)') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sleep like a log', NULL, 'Example: We often use "sleep like a log" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sleep like a log') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'on the big/expensive, etc. side', NULL, 'Example: We often use "on the big/expensive, etc. side" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('on the big/expensive, etc. side') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a drop in the ocean', NULL, 'Example: We often use "a drop in the ocean" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a drop in the ocean') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go with the flow', NULL, 'Example: We often use "go with the flow" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go with the flow') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'child''s play', NULL, 'Example: We often use "child''s play" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('child''s play') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a nervous/quivering wreck', NULL, 'Example: We often use "a nervous/quivering wreck" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a nervous/quivering wreck') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get on like a house on fire', NULL, 'Example: We often use "get on like a house on fire" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get on like a house on fire') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have an axe to grind', NULL, 'Example: We often use "have an axe to grind" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have an axe to grind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'see red', NULL, 'Example: We often use "see red" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('see red') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make no bones about', NULL, 'Example: We often use "make no bones about" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make no bones about') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not have a minute to call your own', NULL, 'Example: We often use "not have a minute to call your own" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not have a minute to call your own') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be in another planet', NULL, 'Example: We often use "Be in another planet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be in another planet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put on an act', NULL, 'Example: We often use "put on an act" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put on an act') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be as strong as an ox', NULL, 'Example: We often use "be as strong as an ox" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be as strong as an ox') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Devil''s advocate', 'адвокат дьявола', 'Example: We often use "Devil''s advocate" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Devil''s advocate') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'The sky is the limit', NULL, 'Example: We often use "The sky is the limit" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('The sky is the limit') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'This is the life!', NULL, 'We often use "This is the life!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('This is the life!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be a tall order', NULL, 'Example: We often use "be a tall order" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be a tall order') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'down in the dumps', NULL, 'Example: We often use "down in the dumps" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('down in the dumps') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be/feel at home', NULL, 'Example: We often use "be/feel at home" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be/feel at home') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put/lay your cards on the table', NULL, 'Example: We often use "put/lay your cards on the table" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put/lay your cards on the table') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'tie the knot', NULL, 'Example: We often use "tie the knot" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('tie the knot') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be past/pass your sell-by date', NULL, 'Example: We often use "be past/pass your sell-by date" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be past/pass your sell-by date') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go to the dogs', NULL, 'Example: We often use "go to the dogs" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go to the dogs') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have seen better days', NULL, 'Example: We often use "have seen better days" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have seen better days') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'if push comes to shove', NULL, 'Example: We often use "if push comes to shove" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('if push comes to shove') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have a word in sb''s ear', NULL, 'Example: We often use "have a word in someone''s ear" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have a word in sb''s ear') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'rub someone the wrong way', NULL, 'Example: We often use "rub someone the wrong way" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('rub someone the wrong way') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep/have an open mind', NULL, 'Example: We often use "keep/have an open mind" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep/have an open mind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Everything is coming up roses', NULL, 'Example: We often use "Everything is coming up roses" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Everything is coming up roses') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Make ends meet', 'сводить концы с концами', 'Example: We often use "Make ends meet" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Make ends meet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'cold-blooded', NULL, 'Example: We often use "cold-blooded" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('cold-blooded') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the answer to sb''s prayers', NULL, 'Example: We often use "the answer to someone''s prayers" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the answer to sb''s prayers') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'hear sth on/through the grapevine', NULL, 'Example: We often use "hear something on/through the grapevine" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('hear sth on/through the grapevine') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'at the top of the (career) ladder', NULL, 'Example: We often use "at the top of the (career) ladder" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('at the top of the (career) ladder') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Nothing ventured, nothing gained', NULL, 'Example: We often use "Nothing ventured, nothing gained" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Nothing ventured, nothing gained') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Do the donkey work', NULL, 'Example: We often use "Do the donkey work" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Do the donkey work') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'blow sth out of (all) proportion', NULL, 'Example: We often use "blow something out of (all) proportion" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('blow sth out of (all) proportion') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'As easy as ABC', NULL, 'Example: We often use "As easy as ABC" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('As easy as ABC') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'neither here nor there', NULL, 'Example: We often use "neither here nor there" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('neither here nor there') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A wolf in sheep''s'' clothing', NULL, 'Example: We often use "A wolf in sheep''s'' clothing" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('A wolf in sheep''s'' clothing') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'by/through the back door', NULL, 'Example: We often use "by/through the back door" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('by/through the back door') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'smell a rat', NULL, 'Example: We often use "smell a rat" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('smell a rat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'live and learn', NULL, 'Example: We often use "live and learn" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('live and learn') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'drag your feet', NULL, 'Example: We often use "drag your feet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('drag your feet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Pull your socks up', NULL, 'Example: We often use "Pull your socks up" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Pull your socks up') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Feel like a fish out of the water', NULL, 'Example: We often use "Feel like a fish out of the water" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Feel like a fish out of the water') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go in one ear and out the other', NULL, 'Example: We often use "go in one ear and out the other" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go in one ear and out the other') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be made for', NULL, 'Example: We often use "be made for" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be made for') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Take the bull by the horns', NULL, 'Example: We often use "Take the bull by the horns" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Take the bull by the horns') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put the brakes on', NULL, 'Example: We often use "put the brakes on" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put the brakes on') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be man enough to do sth', NULL, 'Example: We often use "be man enough to do something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be man enough to do sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'burn the candle at both ends', NULL, 'Example: We often use "burn the candle at both ends" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('burn the candle at both ends') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be glad/happy/pleased/not sorry to see bathwater', NULL, 'Example: We often use "be glad/happy/pleased/not sorry to see bathwater" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be glad/happy/pleased/not sorry to see bathwater') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give someone the cold shoulder', NULL, 'Example: We often use "give someone the cold shoulder" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give someone the cold shoulder') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be stuck in a rut', NULL, 'Example: We often use "be stuck in a rut" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be stuck in a rut') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a fact of life', NULL, 'Example: We often use "a fact of life" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a fact of life') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a pillar of society', NULL, 'Example: We often use "a pillar of society" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a pillar of society') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'leave sb to their own devices', NULL, 'Example: We often use "leave someone to their own devices" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('leave sb to their own devices') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'do sth for kicks', NULL, 'Example: We often use "do something for kicks" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('do sth for kicks') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Add fuel to the fire', 'подлить масла в огонь', 'Example: We often use "Add fuel to the fire" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Add fuel to the fire') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put your foot in it', NULL, 'Example: We often use "put your foot in it" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put your foot in it') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a bone of contention', NULL, 'Example: We often use "a bone of contention" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a bone of contention') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Long time no see', NULL, 'Example: We often use "Long time no see" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Long time no see') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'run-of-the-mill', NULL, 'Example: We often use "run-of-the-mill" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('run-of-the-mill') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', '(not) ring a bell/ any bells (with me)', NULL, 'Example: We often use "(not) ring a bell/ any bells (with me)" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('(not) ring a bell/ any bells (with me)') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'flesh and blood', NULL, 'Example: We often use "flesh and blood" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('flesh and blood') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'leave a sour taste in the mouth', NULL, 'Example: We often use "leave a sour taste in the mouth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('leave a sour taste in the mouth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'hot/hard on the heels of sth', NULL, 'Example: We often use "hot/hard on the heels of something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('hot/hard on the heels of sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a dog''s breakfast', NULL, 'Example: We often use "a dog''s breakfast" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a dog''s breakfast') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be in deep water', NULL, 'Example: We often use "be in deep water" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be in deep water') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'in a word', NULL, 'Example: We often use "in a word" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('in a word') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'In hot water', 'в неприятностях', 'Example: We often use "In hot water" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('In hot water') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the lion''s share', NULL, 'Example: We often use "the lion''s share" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the lion''s share') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A stuffed shirt', NULL, 'Example: We often use "A stuffed shirt" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('A stuffed shirt') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be a hard/tough act to follow', NULL, 'Example: We often use "be a hard/tough act to follow" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be a hard/tough act to follow') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'wait and see', NULL, 'Example: We often use "wait and see" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('wait and see') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'stand sb in good stead', NULL, 'Example: We often use "stand someone in good stead" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('stand sb in good stead') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Find my feet', NULL, 'Example: We often use "Find my feet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Find my feet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'come/spring to mind', NULL, 'Example: We often use "come/spring to mind" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('come/spring to mind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be out of touch with', NULL, 'Example: We often use "be out of touch with" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be out of touch with') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'leave sb in the lurch', NULL, 'Example: We often use "leave someone in the lurch" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('leave sb in the lurch') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'bite your tongue', NULL, 'Example: We often use "bite your tongue" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('bite your tongue') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'turn your nose up', NULL, 'Example: We often use "turn your nose up" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('turn your nose up') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'when/while sb''s back is turned', NULL, 'Example: We often use "when/while someone''s back is turned" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('when/while sb''s back is turned') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the law of the jungle', NULL, 'Example: We often use "the law of the jungle" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the law of the jungle') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'before your time', NULL, 'Example: We often use "before your time" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('before your time') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'It''s a long story', NULL, 'Example: We often use "It''s a long story" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('It''s a long story') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'call the shots', NULL, 'Example: We often use "call the shots" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('call the shots') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'come to light', NULL, 'Example: We often use "come to light" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('come to light') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pluck a number out of the air', NULL, 'Example: We often use "pluck a number out of the air" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pluck a number out of the air') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be in dire straits', NULL, 'Example: We often use "be in dire straits" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be in dire straits') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have/keep an open mind', NULL, 'Example: We often use "have/keep an open mind" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have/keep an open mind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be in two minds about', NULL, 'Example: We often use "Be in two minds about" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be in two minds about') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'catch sb in the act', NULL, 'Example: We often use "catch someone in the act" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('catch sb in the act') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Get itchy feet', NULL, 'Example: We often use "Get itchy feet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Get itchy feet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'blow your own trumpet', NULL, 'Example: We often use "blow your own trumpet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('blow your own trumpet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'jump the gun', NULL, 'Example: We often use "jump the gun" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('jump the gun') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'know/learn sth off by heart', NULL, 'Example: We often use "know/learn something off by heart" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('know/learn sth off by heart') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get/be given the sack', NULL, 'Example: We often use "get/be given the sack" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get/be given the sack') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'off the top of your head', NULL, 'Example: We often use "off the top of your head" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('off the top of your head') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'never/not do things/anything by halves', NULL, 'Example: We often use "never/not do things/anything by halves" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('never/not do things/anything by halves') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be brought/called to account', NULL, 'Example: We often use "be brought/called to account" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be brought/called to account') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'burn your boats/bridges', NULL, 'Example: We often use "burn your boats/bridges" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('burn your boats/bridges') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be in hot water', NULL, 'Example: We often use "be in hot water" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be in hot water') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be on the threshold of sth', NULL, 'Example: We often use "be on the threshold of something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be on the threshold of sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'change tack', NULL, 'Example: We often use "change tack" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('change tack') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'come hell or high water', NULL, 'Example: We often use "come hell or high water" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('come hell or high water') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'avoid sth like the plague', NULL, 'Example: We often use "avoid something like the plague" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('avoid sth like the plague') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'take pot luck', NULL, 'Example: We often use "take pot luck" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('take pot luck') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'on the blink', NULL, 'Example: We often use "on the blink" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('on the blink') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get the hang of', NULL, 'Example: We often use "get the hang of" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get the hang of') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the pros and cons', NULL, 'Example: We often use "the pros and cons" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the pros and cons') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be out of your depth', NULL, 'Example: We often use "be out of your depth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be out of your depth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pick someone''s brains', NULL, 'Example: We often use "pick someone''s brains" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pick someone''s brains') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'look right straight through sb', NULL, 'Example: We often use "look right straight through someone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('look right straight through sb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'stand on your own two feet', NULL, 'Example: We often use "stand on your own two feet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('stand on your own two feet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'When pigs fly', 'когда рак на горе свистнет', 'Example: We often use "When pigs fly" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('When pigs fly') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Back to the salt mines', NULL, 'Example: We often use "Back to the salt mines" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Back to the salt mines') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a dead end', NULL, 'Example: We often use "a dead end" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a dead end') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Keep your chin up', NULL, 'Example: We often use "Keep your chin up" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Keep your chin up') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be in the red', NULL, 'Example: We often use "Be in the red" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be in the red') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Break the ice', 'растопить лёд (начать общение)', 'Example: We often use "Break the ice" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Break the ice') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'tick over', NULL, 'Example: We often use "tick over" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('tick over') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a rough diamond', NULL, 'Example: We often use "a rough diamond" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a rough diamond') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'wolf in sheep''s clothing', NULL, 'Example: We often use "wolf in sheep''s clothing" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('wolf in sheep''s clothing') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Over the moon', 'безумно счастлив', 'Example: We often use "Over the moon" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Over the moon') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'at your fingertips', NULL, 'Example: We often use "at your fingertips" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('at your fingertips') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Move the goalpost', NULL, 'Example: We often use "Move the goalpost" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Move the goalpost') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'to the bitter end', NULL, 'Example: We often use "to the bitter end" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('to the bitter end') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'come home to you', NULL, 'Example: We often use "come home to you" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('come home to you') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'anybody who is anybody', NULL, 'Example: We often use "anybody who is anybody" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('anybody who is anybody') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'turn your hand to sth', NULL, 'Example: We often use "turn your hand to something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('turn your hand to sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pour oil on troubled waters', NULL, 'Example: We often use "pour oil on troubled waters" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pour oil on troubled waters') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sb''s heart is in their mouth', NULL, 'Example: We often use "someone''s heart is in their mouth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sb''s heart is in their mouth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'lose a small fortune', NULL, 'Example: We often use "lose a small fortune" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('lose a small fortune') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be on the same wavelength', NULL, 'Example: We often use "be on the same wavelength" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be on the same wavelength') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get your foot in the door', NULL, 'Example: We often use "get your foot in the door" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get your foot in the door') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give sb a buzz', NULL, 'Example: We often use "give someone a buzz" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give sb a buzz') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sound like a broken record', NULL, 'Example: We often use "sound like a broken record" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sound like a broken record') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'miss the boat', NULL, 'Example: We often use "miss the boat" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('miss the boat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'know your stuff', NULL, 'Example: We often use "know your stuff" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('know your stuff') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'shoot the breeze', NULL, 'Example: We often use "shoot the breeze" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('shoot the breeze') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put paid to', NULL, 'Example: We often use "put paid to" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put paid to') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a brain drain', NULL, 'Example: We often use "a brain drain" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a brain drain') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'up to scratch', NULL, 'Example: We often use "up to scratch" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('up to scratch') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'dig deep into your pockets', NULL, 'Example: We often use "dig deep into your pockets" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('dig deep into your pockets') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'lead sb astray', NULL, 'Example: We often use "lead someone astray" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('lead sb astray') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'hold/keep sb at arm''s length', NULL, 'Example: We often use "hold/keep someone at arm''s length" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('hold/keep sb at arm''s length') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'so far so good', NULL, 'Example: We often use "so far so good" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('so far so good') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Talk shop', NULL, 'Example: We often use "Talk shop" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Talk shop') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get the sack', NULL, 'Example: We often use "get the sack" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get the sack') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be a (history) buff', NULL, 'Example: We often use "Be a (history) buff" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be a (history) buff') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be touch-and-go', NULL, 'Example: We often use "be touch-and-go" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be touch-and-go') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'red tape', NULL, 'Example: We often use "red tape" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('red tape') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'catch sb red-handed', NULL, 'Example: We often use "catch someone red-handed" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('catch sb red-handed') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Have a whole of a time', NULL, 'Example: We often use "Have a whole of a time" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Have a whole of a time') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'by hook or by crook', NULL, 'Example: We often use "by hook or by crook" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('by hook or by crook') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'fall/come off the back of a lorry', NULL, 'Example: We often use "fall/come off the back of a lorry" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('fall/come off the back of a lorry') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go a long way', NULL, 'Example: We often use "go a long way" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go a long way') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be all sweetness and light', NULL, 'Example: We often use "be all sweetness and light" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be all sweetness and light') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'On cloud nine', 'на седьмом небе', 'Example: We often use "On cloud nine" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('On cloud nine') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go off on a tangent', NULL, 'Example: We often use "go off on a tangent" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go off on a tangent') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'music to your ears', NULL, 'Example: We often use "music to your ears" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('music to your ears') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A dime a dozen', 'пруд пруди', 'Example: We often use "A dime a dozen" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('A dime a dozen') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'slip your mind', NULL, 'Example: We often use "slip your mind" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('slip your mind') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the devil''s advocate', NULL, 'Example: We often use "the devil''s advocate" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the devil''s advocate') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the be-all-and-end-all', NULL, 'Example: We often use "the be-all-and-end-all" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the be-all-and-end-all') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make a small fortune', NULL, 'Example: We often use "make a small fortune" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make a small fortune') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a gut reaction/feeling', NULL, 'Example: We often use "a gut reaction/feeling" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a gut reaction/feeling') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'upper-crust', NULL, 'Example: We often use "upper-crust" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('upper-crust') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'nine times out of ten', NULL, 'Example: We often use "nine times out of ten" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('nine times out of ten') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be up to your ears/eyes (in work)', NULL, 'Example: We often use "be up to your ears/eyes (in work)" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be up to your ears/eyes (in work)') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'at the top of sb''s/the agenda', NULL, 'Example: We often use "at the top of someone''s/the agenda" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('at the top of sb''s/the agenda') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'move heaven and earth', NULL, 'Example: We often use "move heaven and earth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('move heaven and earth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be on your best behaviour', NULL, 'Example: We often use "be on your best behaviour" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be on your best behaviour') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'lend someone a hand', NULL, 'Example: We often use "lend someone a hand" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('lend someone a hand') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'jump in the deep end', NULL, 'Example: We often use "jump in the deep end" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('jump in the deep end') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'All in the same boat', 'в одной лодке', 'Example: We often use "All in the same boat" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('All in the same boat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'your life is in sb''s hands', NULL, 'Example: We often use "your life is in someone''s hands" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('your life is in sb''s hands') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'come/fall off the back of a lorry', NULL, 'Example: We often use "come/fall off the back of a lorry" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('come/fall off the back of a lorry') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put ideas into sb''s head', NULL, 'Example: We often use "put ideas into someone''s head" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put ideas into sb''s head') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be at your wits'' end', NULL, 'Example: We often use "be at your wits'' end" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be at your wits'' end') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'come (back) down to earth with a jolt/bang/bump', NULL, 'Example: We often use "come (back) down to earth with a jolt/bang/bump" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('come (back) down to earth with a jolt/bang/bump') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'stick/stand out like a sore thumb', NULL, 'Example: We often use "stick/stand out like a sore thumb" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('stick/stand out like a sore thumb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'take a shine to sb', NULL, 'Example: We often use "take a shine to someone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('take a shine to sb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'straight from the horse''s mouth', NULL, 'Example: We often use "straight from the horse''s mouth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('straight from the horse''s mouth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'if all else fails', NULL, 'Example: We often use "if all else fails" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('if all else fails') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Every cloud has a silver lining', 'нет худа без добра', 'Example: We often use "Every cloud has a silver lining" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Every cloud has a silver lining') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'win hands down', NULL, 'Example: We often use "win hands down" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('win hands down') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'cost (sb) an arm and a leg', NULL, 'Example: We often use "cost (someone) an arm and a leg" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('cost (sb) an arm and a leg') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'skeletons in the closet', NULL, 'Example: We often use "skeletons in the closet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('skeletons in the closet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'break the news', NULL, 'Example: We often use "break the news" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('break the news') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make a real pig of yourself', NULL, 'Example: We often use "make a real pig of yourself" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make a real pig of yourself') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a guinea pig', NULL, 'Example: We often use "a guinea pig" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a guinea pig') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'as good as gold', NULL, 'Example: We often use "as good as gold" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('as good as gold') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'To play the game', NULL, 'Example: We often use "To play the game" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('To play the game') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make it up to sb', NULL, 'Example: We often use "make it up to someone" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make it up to sb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'well-heeled', NULL, 'Example: We often use "well-heeled" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('well-heeled') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'fight a losing battle', NULL, 'Example: We often use "fight a losing battle" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('fight a losing battle') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'like a bat out of hell', NULL, 'Example: We often use "like a bat out of hell" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('like a bat out of hell') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'airs and graces', NULL, 'Example: We often use "airs and graces" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('airs and graces') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Up your sleeve', 'в рукаве (скрытый козырь)', 'Example: We often use "Up your sleeve" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Up your sleeve') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'To have my heart in my mouth', NULL, 'Example: We often use "To have my heart in my mouth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('To have my heart in my mouth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'hit the hay', NULL, 'Example: We often use "hit the hay" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('hit the hay') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'off the hook', NULL, 'Example: We often use "off the hook" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('off the hook') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'know sth like the back of your hand', NULL, 'Example: We often use "know something like the back of your hand" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('know sth like the back of your hand') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'send/put the cat among the pigeons', NULL, 'Example: We often use "send/put the cat among the pigeons" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('send/put the cat among the pigeons') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give up the ghost', NULL, 'Example: We often use "give up the ghost" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give up the ghost') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have second thoughts', NULL, 'Example: We often use "have second thoughts" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have second thoughts') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'That''s life!', NULL, 'We often use "That''s life!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('That''s life!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'need sth like you need a hole in the head', NULL, 'Example: We often use "need something like you need a hole in the head" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('need sth like you need a hole in the head') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'wave a magic wand', NULL, 'Example: We often use "wave a magic wand" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('wave a magic wand') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'it''s early days (yet)', NULL, 'Example: We often use "it''s early days (yet)" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('it''s early days (yet)') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'tell someone off', NULL, 'Example: We often use "tell someone off" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('tell someone off') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'wear the trousers', NULL, 'Example: We often use "wear the trousers" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('wear the trousers') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'come a long way', NULL, 'Example: We often use "come a long way" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('come a long way') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'work/go like a dream', NULL, 'Example: We often use "work/go like a dream" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('work/go like a dream') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'leave a lot to be desired', NULL, 'Example: We often use "leave a lot to be desired" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('leave a lot to be desired') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be in a bad way', NULL, 'Example: We often use "be in a bad way" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be in a bad way') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be at each other''s throats', NULL, 'Example: We often use "be at each other''s throats" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be at each other''s throats') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have a shot at', NULL, 'Example: We often use "have a shot at" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have a shot at') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'know which way the wind blows', NULL, 'Example: We often use "know which way the wind blows" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('know which way the wind blows') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not budge/give an inch', NULL, 'Example: We often use "not budge/give an inch" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not budge/give an inch') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go to the ends of the earth', NULL, 'Example: We often use "go to the ends of the earth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go to the ends of the earth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'lean bend over backwards', NULL, 'Example: We often use "lean bend over backwards" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('lean bend over backwards') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make it big', NULL, 'Example: We often use "make it big" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make it big') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Roll up your sleeves', NULL, 'Example: We often use "Roll up your sleeves" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Roll up your sleeves') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make your day', NULL, 'Example: We often use "make your day" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make your day') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have/get itchy feet', NULL, 'Example: We often use "have/get itchy feet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have/get itchy feet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have a familiar ring (to it)', NULL, 'Example: We often use "have a familiar ring (to it)" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have a familiar ring (to it)') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pull your weight', NULL, 'Example: We often use "pull your weight" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pull your weight') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a doddle', NULL, 'Example: We often use "a doddle" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a doddle') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Hit the road', NULL, 'Example: We often use "Hit the road" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Hit the road') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'never live sth down', NULL, 'Example: We often use "never live something down" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('never live sth down') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sb''s heart misses/skips a beat', NULL, 'Example: We often use "someone''s heart misses/skips a beat" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sb''s heart misses/skips a beat') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a laughing stock', NULL, 'Example: We often use "a laughing stock" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a laughing stock') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'on dangerous ground', NULL, 'Example: We often use "on dangerous ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('on dangerous ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'There''s no smoke without fire', NULL, 'We often use "There''s no smoke without fire" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('There''s no smoke without fire') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be out of this world', NULL, 'Example: We often use "be out of this world" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be out of this world') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'grin and bear it', NULL, 'Example: We often use "grin and bear it" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('grin and bear it') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'work/slog/sweat your guts out', NULL, 'Example: We often use "work/slog/sweat your guts out" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('work/slog/sweat your guts out') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'square peg in a round hole', NULL, 'Example: We often use "square peg in a round hole" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('square peg in a round hole') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'at the bottom of the (career) ladder', NULL, 'Example: We often use "at the bottom of the (career) ladder" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('at the bottom of the (career) ladder') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Thanks a million!', NULL, 'We often use "Thanks a million!" in informal English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Thanks a million!') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Be back on your feet', NULL, 'Example: We often use "Be back on your feet" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Be back on your feet') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'loud and clear', NULL, 'Example: We often use "loud and clear" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('loud and clear') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make a beeline for sb/sth', NULL, 'Example: We often use "make a beeline for someone/something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make a beeline for sb/sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get/let sb off the hook', NULL, 'Example: We often use "get/let someone off the hook" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get/let sb off the hook') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'have your hands full', NULL, 'Example: We often use "have your hands full" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('have your hands full') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be like a bear with a sore head', NULL, 'Example: We often use "be like a bear with a sore head" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be like a bear with a sore head') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'go out on a limb', NULL, 'Example: We often use "go out on a limb" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('go out on a limb') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the (whole) shebang', NULL, 'Example: We often use "the (whole) shebang" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the (whole) shebang') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'wish the ground would swallow you up', NULL, 'Example: We often use "wish the ground would swallow you up" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('wish the ground would swallow you up') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'stand the test of time', NULL, 'Example: We often use "stand the test of time" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('stand the test of time') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'not be on speaking terms', NULL, 'Example: We often use "not be on speaking terms" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('not be on speaking terms') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be back in action', NULL, 'Example: We often use "be back in action" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be back in action') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get your wires/lines crossed', NULL, 'Example: We often use "get your wires/lines crossed" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get your wires/lines crossed') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Hit the books', NULL, 'Example: We often use "Hit the books" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Hit the books') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'an uphill fight/battle/struggle', NULL, 'Example: We often use "an uphill fight/battle/struggle" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('an uphill fight/battle/struggle') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a cold fish', NULL, 'Example: We often use "a cold fish" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a cold fish') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Time flies', 'время летит', 'Example: We often use "Time flies" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Time flies') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Sell like hotcakes', NULL, 'Example: We often use "Sell like hotcakes" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Sell like hotcakes') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'can''t for the life of me', NULL, 'Example: We often use "can''t for the life of me" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('can''t for the life of me') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'once in a lifetime', NULL, 'Example: We often use "once in a lifetime" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('once in a lifetime') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give sth the thumbs down/up', NULL, 'Example: We often use "give something the thumbs down/up" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give sth the thumbs down/up') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give sb a rough/hard/tough time', NULL, 'Example: We often use "give someone a rough/hard/tough time" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give sb a rough/hard/tough time') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'scare/frighten the (living) daylights out of', NULL, 'Example: We often use "scare/frighten the (living) daylights out of" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('scare/frighten the (living) daylights out of') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be as easy as pie', NULL, 'Example: We often use "be as easy as pie" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be as easy as pie') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'wet behind the ears', NULL, 'Example: We often use "wet behind the ears" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('wet behind the ears') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Pass with flying colors', NULL, 'Example: We often use "Pass with flying colors" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Pass with flying colors') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'put your foot down', NULL, 'Example: We often use "put your foot down" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('put your foot down') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'could do sth with one arm/hand tied behind your back', NULL, 'Example: We often use "could do something with one arm/hand tied behind your back" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('could do sth with one arm/hand tied behind your back') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'stir up a hornet''s nest', NULL, 'Example: We often use "stir up a hornet''s nest" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('stir up a hornet''s nest') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be child''s play', NULL, 'Example: We often use "be child''s play" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be child''s play') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Shoot yourself in the foot', 'навредить себе', 'Example: We often use "Shoot yourself in the foot" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Shoot yourself in the foot') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'lay/put your cards on the table', NULL, 'Example: We often use "lay/put your cards on the table" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('lay/put your cards on the table') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'on the spot', NULL, 'Example: We often use "on the spot" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('on the spot') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'foaming at the mouth', NULL, 'Example: We often use "foaming at the mouth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('foaming at the mouth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'give sb a hard/rough/tough time', NULL, 'Example: We often use "give someone a hard/rough/tough time" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('give sb a hard/rough/tough time') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'act your age', NULL, 'Example: We often use "act your age" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('act your age') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'wouldn''t hurt a fly', NULL, 'Example: We often use "wouldn''t hurt a fly" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('wouldn''t hurt a fly') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'To pull my leg', NULL, 'Example: We often use "To pull my leg" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('To pull my leg') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'word for word', NULL, 'Example: We often use "word for word" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('word for word') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a hard/tough act to follow', NULL, 'Example: We often use "a hard/tough act to follow" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a hard/tough act to follow') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'pick sb''s brains', NULL, 'Example: We often use "pick someone''s brains" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('pick sb''s brains') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the back of sth', NULL, 'Example: We often use "the back of something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the back of sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'there and then', NULL, 'Example: We often use "there and then" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('there and then') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be in the firing line', NULL, 'Example: We often use "be in the firing line" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be in the firing line') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'know where you stand', NULL, 'Example: We often use "know where you stand" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('know where you stand') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'an uphill battle/fight/struggle', NULL, 'Example: We often use "an uphill battle/fight/struggle" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('an uphill battle/fight/struggle') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Break a leg', 'ни пуха ни пера', 'Example: We often use "Break a leg" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Break a leg') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the other side of the coin', NULL, 'Example: We often use "the other side of the coin" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the other side of the coin') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be on the right track', NULL, 'Example: We often use "be on the right track" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be on the right track') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'the middle ground', NULL, 'Example: We often use "the middle ground" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('the middle ground') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'see how / which way the wind is blowing', NULL, 'Example: We often use "see how / which way the wind is blowing" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('see how / which way the wind is blowing') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'keep/have one eye on', NULL, 'Example: We often use "keep/have one eye on" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('keep/have one eye on') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'white-collar', NULL, 'Example: We often use "white-collar" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('white-collar') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'from time to time', NULL, 'Example: We often use "from time to time" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('from time to time') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'get/have/take the bit between your teeth', NULL, 'Example: We often use "get/have/take the bit between your teeth" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('get/have/take the bit between your teeth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'become a law unto yourself', NULL, 'Example: We often use "become a law unto yourself" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('become a law unto yourself') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Take it with a grain of salt', 'относиться скептически', 'Example: We often use "Take it with a grain of salt" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Take it with a grain of salt') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'on and off', NULL, 'Example: We often use "on and off" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('on and off') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'make a mountain out of a molehill', NULL, 'Example: We often use "make a mountain out of a molehill" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('make a mountain out of a molehill') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a spin doctor', NULL, 'Example: We often use "a spin doctor" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a spin doctor') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'sb''s blood is up', NULL, 'Example: We often use "someone''s blood is up" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('sb''s blood is up') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be on about', NULL, 'Example: We often use "be on about" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be on about') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Under the weather', 'плохо себя чувствовать', 'Example: We often use "Under the weather" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Under the weather') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'You can''t judge a book by its cover', 'внешность обманчива', 'Example: We often use "You can''t judge a book by its cover" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('You can''t judge a book by its cover') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'know the ropes', NULL, 'Example: We often use "know the ropes" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('know the ropes') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be on the wrong track', NULL, 'Example: We often use "be on the wrong track" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be on the wrong track') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'A party animal', NULL, 'Example: We often use "A party animal" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('A party animal') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'to the letter', NULL, 'Example: We often use "to the letter" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('to the letter') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'a hive of activity', NULL, 'Example: We often use "a hive of activity" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('a hive of activity') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'stab sb in the back', NULL, 'Example: We often use "stab someone in the back" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('stab sb in the back') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'think better of sth', NULL, 'Example: We often use "think better of something" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('think better of sth') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'clear the decks', NULL, 'Example: We often use "clear the decks" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('clear the decks') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'steer a middle course', NULL, 'Example: We often use "steer a middle course" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('steer a middle course') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'Sit on the fence', 'не принимать сторону', 'Example: We often use "Sit on the fence" in everyday English.', NULL, NULL, 'B1', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('Sit on the fence') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'be all at sea', NULL, 'Example: We often use "be all at sea" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('be all at sea') AND np.kind='idiom'
);

INSERT INTO public.news_posts (kind, title, excerpt, body, source, url, level, image_url, phonetic, is_hot, tags)
SELECT 'idiom', 'bare your soul/heart', NULL, 'Example: We often use "bare your soul/heart" in everyday English.', NULL, NULL, 'B2', NULL, NULL, false, '{}'::text[]
WHERE NOT EXISTS (
  SELECT 1 FROM public.news_posts np WHERE lower(np.title)=lower('bare your soul/heart') AND np.kind='idiom'
);

