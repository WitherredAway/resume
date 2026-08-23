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

Self-taught software developer with 6+ years of programming experience, currently building
#link("https://github.com/poketwo/poketwo")[Pokétwo], an open-source Discord game serving 5.5M+
players. Comfortable across asynchronous Python services, MongoDB and Redis at scale, Docker
deployments and Linux tooling. B.Tech. Computer Science student shipping production open-source
software.

= Experience

#entry(
  title: "Pokétwo",
  tags: "Software Developer, Administrator",
  date: [August 2023 -- Present],
  source: url("https://github.com/poketwo/poketwo", "github.com/poketwo/poketwo"),
)
- Ship features and fixes for a text-based game with *5.5M+ registered users* across *1.4M+ Discord
  servers*, peaking at *50,000+ concurrent players*.
- Authored *400+ commits* across *150+ pull requests* — *15 major and 35 minor features*, plus *10
  critical and 40 routine defect fixes* — nearly all reviewed and merged.
- Cut database load on high-traffic commands by adding _Redis_ caching and tightening _MongoDB_
  queries and indexes.
- Scope features, triage incidents and roll out gameplay changes with the development,
  administration and event teams.

= Projects

#entry(
  title: "Yeet.",
  tags: "Python · discord.py · Docker · Pandas · NumPy · Pillow",
  date: [May 2021 -- Present],
  source: url("https://github.com/witherredaway/yeet", "github.com/witherredaway/yeet"),
)
- Built and maintain a multi-purpose Discord bot used by *3,200+ users* in *100+ servers*, with
  *1,000+ commits*, *10 major features* and *20 critical bug fixes* to date.
- Designed a chat-native pixel art editor on top of 2D matrices and an object-oriented rendering
  pipeline, letting users draw and share art without leaving Discord.
- Containerized the bot with _Docker_ so CPU-heavy image and matrix operations behave identically in
  development and production.

#entry(
  title: "gists.py",
  tags: "Python · aiohttp · GitHub API",
  date: [March 2022 -- Present],
  source: url("https://github.com/witherredaway/gists.py", "github.com/witherredaway/gists.py"),
)
- Wrote an asynchronous API wrapper for the GitHub Gists API using _aiohttp_.
- Published the library to #link("https://pypi.org/project/gists.py/")[PyPI] with documentation, so
  it installs with a single `pip install`.

#entry(
  title: "Arduino Projects",
  tags: "C++ · Arduino · ESP8266",
  date: [July 2024 -- Present],
  source: url("https://github.com/WitherredAway/arduino-projects", "github.com/WitherredAway/arduino-projects"),
)
- Prototyped embedded projects including a live temperature and humidity monitor, an ESP8266 Wi-Fi
  server for browser-based device control, and an LED array lighting system.

#entry(
  title: "GDG Web Development",
  tags: "HTML · CSS · JavaScript",
  date: [November 2024 -- Present],
  source: url("https://witherredaway.github.io/gdg-web-dev/purem-oda", "witherredaway.github.io/gdg-web-dev/purem-oda"),
)
- Recreated a production landing page as a fully responsive layout, extending it with neumorphic and
  glassmorphic styling.

= Technical Skills

- *Python* #note[async services · Discord and REST APIs · Pandas · NumPy · Pillow · Matplotlib] \
  #note[Pokétwo · Pokétwo Image Server, an image manipulation API · gists.py · Yeet.]
- *C, C++, Arduino* #note[data structures and algorithms · hardware prototyping]
- *Web* #note[HTML · CSS · JavaScript — personal site, text parsing tools, GDG projects]
- *Databases* #note[MongoDB · Redis · PostgreSQL · MySQL · SQL]
- *Infrastructure* #note[Docker · Linux · Git · GitHub Actions · Bash scripting]

= Leadership

- Administrator of the Pokétwo community: lead a team of *20 moderators* serving *250,000+ members*,
  setting policy and handling escalations.
- Mentor contributors on the Pokétwo developer team through code review and design discussion.

= Education & Certifications

#row([*Techno India University, West Bengal*], [*Expected Graduation*: August 2028])
#subrow([B.Tech., Computer Science and Engineering], note[currently enrolled])

#row([*Aditya Academy Senior Secondary, Kadambagachi*], [*Graduation*: April 2024])
#subrow([Class 12 Science (PCM + Computer Science), AISSCE — 75% · Class 10, AISSE — 83%], [])

#row([*IELTS* #h(0.3em) #note[Listening 9.0 · Reading 8.5 · Writing 7.0 · Speaking 7.0]], [*Overall Band Score*: 8.0 (April 2024)])
