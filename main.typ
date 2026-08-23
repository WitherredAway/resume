#import "template.typ": *
#show: resume.with(author: "Souvic Das")

#head(
  name: "Souvic Das",
  contacts: (
    [+91 8927058045],
    link("mailto:sdssouvic@gmail.com")[sdssouvic\@gmail.com],
    link("https://linkedin.com/in/souvicdas")[#fab("\u{f08c}") souvicdas],
    link("https://github.com/witherredaway")[#fab("\u{f09b}") witherredaway],
  ),
)

= Summary

Software developer building production systems at Discord scale. Core developer of
#link("https://github.com/poketwo/poketwo")[Pokétwo], an open-source Pokémon game played in
*#manual.poketwo.servers servers*, owning its anticheat stack and the image-generation service behind
its visual commands. *#manual.experience_years years* of programming across asynchronous Python,
machine learning, Kotlin/Android and embedded C++. B.Tech. Computer Science student, 2028.

= Experience

#entry(
  title: "Pokétwo",
  tags: "Software Developer, Administrator",
  date: [August 2023 -- Present],
  source: url("https://github.com/poketwo/poketwo", "github.com/poketwo/poketwo"),
)
- Design and ship gameplay features end to end — command flows, interaction design and the generated
  artwork behind them — for a game in *#manual.poketwo.servers servers* with
  *#manual.poketwo.trainers trainers* and *#manual.poketwo.daily_active daily active players*.
- Built the anticheat system from scratch: a gradient-boosted model over character n-gram language
  models, scoring *#manual.anticheat.accounts accounts* at *#manual.anticheat.auc AUC* — bot detection
  up from *#manual.anticheat.detection_before to #manual.anticheat.detection_after*, false accusations
  of real players down *#manual.anticheat.false_accusation_drop* to
  *#manual.anticheat.false_accusation_rate*.
- Lead contributor to the image service rendering battles, breeding, seasonal events and
  user-customizable sprites, replacing static assets with a composable _Pillow_ pipeline.
- Authored *#approx(gh.poketwo.commits, 500) commits* and *#approx(gh.poketwo.pull_requests, 10) pull
  requests* (*#group(gh.poketwo.merged_pull_requests) merged*) across #gh.poketwo.repositories production
  repositories: bot, image service, anticheat, data pipeline, deployment manifests.
- Cut database load on high-traffic commands with _Redis_ caching and rewritten _MongoDB_ queries and
  indexes; ship through _Docker_ and _Kubernetes_.

= Projects

#entry(
  title: "Notification Mirror · Camera Remote",
  tags: "Kotlin · Jetpack Compose · Wear OS",
  date: [February 2026 -- Present],
  source: url("https://github.com/WitherredAway/NotificationMirror", "github.com/WitherredAway/NotificationMirror"),
)
- Shipped two Wear OS apps — notification mirroring with reply and action support, and a remote
  driving any phone camera app over the accessibility API — to *#gh.wearos.stars stars* and
  *#approx(gh.wearos.downloads, 100) downloads*.

#entry(
  title: "Yeet.",
  tags: "Python · discord.py · Docker · Pillow · NumPy",
  date: [May 2021 -- Present],
  source: url("https://github.com/witherredaway/yeet", "github.com/witherredaway/yeet"),
)
- Sole author of a multi-purpose Discord bot across *#approx(gh.yeet.commits, 10) commits*, centred on
  a chat-native pixel art editor built on 2D matrices and an object-oriented rendering pipeline.

#entry(
  title: "gists.py",
  tags: "Python · aiohttp · GitHub API",
  date: [March 2022 -- Present],
  source: url("https://github.com/witherredaway/gists.py", "github.com/witherredaway/gists.py"),
)
- Asynchronous wrapper for the GitHub Gists API, published to #link("https://pypi.org/project/gists.py/")[PyPI] with documentation.

= Technical Skills

- *Python* #note[async services · Discord and REST APIs · Pandas · NumPy · Pillow · Matplotlib]
- *Machine Learning* #note[gradient boosting · feature engineering · held-out evaluation · PyTorch · scikit-learn · SciPy]
- *Kotlin, Android* #note[Jetpack Compose · Wear OS · Java (learning)]
- *C, C++, Arduino* #note[data structures and algorithms, linear and non-linear · ESP8266 prototyping]
- *Web* #note[HTML · CSS · JavaScript · Svelte — personal site, GDG projects, guitar tab player]
- *Data & Infrastructure* #note[MongoDB · Redis · PostgreSQL · MySQL · Docker · Kubernetes · Linux · Git · GitHub Actions · Bash · agentic AI workflows]

= Leadership

- Administrator of the Pokétwo community: lead *#manual.community.moderators moderators* serving
  *#manual.community.members members*, set policy and handle escalations; mentor developer-team
  contributors through code and design review.

= Education & Certifications

#row([*Techno India University, West Bengal*], [*Expected Graduation*: August 2028])
#subrow([B.Tech., Computer Science and Engineering], note[currently enrolled])

#row([*Aditya Academy Senior Secondary, Kadambagachi*], [*Graduation*: April 2024])
#subrow([Class 12 Science (PCM + Computer Science), AISSCE — 75% · Class 10, AISSE — 83%], [])

#row([*IELTS* #h(0.3em) #note[Listening 9.0 · Reading 8.5 · Writing 7.0 · Speaking 7.0]], [*Overall Band Score*: 8.0 (April 2024)])
