// Resume template originally created by Oliver Ni
// Adapted and modified by Souvic Das

#import "template.typ": *
#show: project

#let title_items = (
  "+91 8927058045",
  link("mailto:sdssouvic@gmail.com"),
  link("https://github.com/witherredaway")[#fab("github") witherredaway],
)

// Title row.
#align(center)[
  #block(text(weight: 700, size: 1.5em)[Souvic Das])
  #title_items.join([#h(0.5em)•#h(0.5em)])
  #linebreak()
  B.Tech CSE Core
]


= Summary

Passionate and fast learner with 6+ years of programming and software development experience. Strong foundation in computer science principles, data structures and algorithms, backend development, Linux systems, and scalable application design.


= Experience

#entry[
  == Pokétwo
  _Software Developer, Administrator_
][
  August 2023 -- Present
][
  - Contributed to development of large-scale Discord chatbot game serving 5.5M+ users across 1.4M+ communities.
  - Pushed 400+ commits and opened 150+ pull requests, almost all merged successfully.
  - Used Python (discord.py), MongoDB, and Redis to support 50,000+ concurrent players.
  - Implemented 15+ major features and 35+ enhancements.
  - Fixed 10+ critical and 40+ minor issues.
  - Collaborated closely with development and moderation teams to improve performance and gameplay.
]


= Projects

#entry[
  == Yeet.
  _Python · Discord API · Docker · Pandas · NumPy_
][
  May 2021 -- Present
][
  - Built multi-purpose Discord bot used by 3,200+ users across 100+ communities.
  - Pushed 1,000+ commits to GitHub repository.
  - Containerized with Docker for scalable deployment.
  - Designed pixel-art generator using 2D matrices and OOP concepts.
  - Built calculator engine utilizing advanced DSA and OOP principles.
]

#entry[
  == gists.py
  _Python · GitHub API · aiohttp_
][
  March 2022 -- Present
][
  - Developed asynchronous GitHub Gists API wrapper.
  - Published to PyPI for public installation and use.
]

#entry[
  == Arduino Projects
  _C++ · Arduino · ESP8266 · ESP32_
][
  July 2024 -- Present
][
  - Built hardware prototypes including temperature & humidity monitor.
  - Developed Wi-Fi web control system using ESP8266.
  - Designed LED lighting array systems.
]

#entry[
  == GDG Web Development
  _HTML · CSS · JavaScript_
][
  November 2024 -- Present
][
  - Replicated fully responsive web pages.
  - Applied modern UI trends like neumorphism and glassmorphism.
]


= Technical Skills

*Programming Languages:*  
Python · C++ · C · JavaScript · Bash

*Database Management:*  
MongoDB · SQL · Redis · PostgreSQL · MySQL

*Infrastructure and Tools:*  
Docker · Linux · Git · GitHub Actions · Markdown

*Web Development:*  
HTML · CSS · JavaScript

*Libraries & Technologies:*  
NumPy · Pandas · Matplotlib · Pillow

*Hardware:*  
Arduino Uno · Nano · ESP32 · ESP8266 · DHT11


= Soft Skills

*Team Leadership & Management*

- Administrator & moderator managing community of 250,000+ members.
- Collaborated with 20+ moderators and developers to ensure smooth operations.


= Education

#entry[
  == Techno India University, West Bengal
][
  Expected Graduation: August 2028
][
  B.Tech in Computer Science and Engineering
]

#entry[
  == Aditya Academy Senior Secondary
][
  Graduation: April 2024
][
  Class 12 (Science - PCMCs) – 75% \
  Class 10 – 83%
]
