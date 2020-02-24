# Mkdocs
MkDocs is a fast, simple and downright gorgeous static site generator that's geared towards building project documentation

```bash
.
├── docker-entrypoint.sh
├── Dockerfile
├── Mkdocs_config
│   ├── docs
│   │   └── index.md
│   ├── index.html
│   ├── mkdocs.yml
│   └── site
│       ├── 404.html
│       ├── css
│       │   ├── base.css
│       │   ├── bootstrap.min.css
│       │   └── font-awesome.min.css
│       ├── fonts
│       │   ├── fontawesome-webfont.eot
│       │   ├── fontawesome-webfont.svg
│       │   ├── fontawesome-webfont.ttf
│       │   ├── fontawesome-webfont.woff
│       │   ├── fontawesome-webfont.woff2
│       │   ├── glyphicons-halflings-regular.eot
│       │   ├── glyphicons-halflings-regular.svg
│       │   ├── glyphicons-halflings-regular.ttf
│       │   ├── glyphicons-halflings-regular.woff
│       │   └── glyphicons-halflings-regular.woff2
│       ├── img
│       │   ├── favicon.ico
│       │   └── grid.png
│       ├── index.html
│       ├── js
│       │   ├── base.js
│       │   ├── bootstrap.min.js
│       │   └── jquery-1.10.2.min.js
│       ├── search
│       │   ├── lunr.js
│       │   ├── main.js
│       │   ├── search_index.json
│       │   └── worker.js
│       ├── sitemap.xml
│       └── sitemap.xml.gz
├── README.md
├── requirements.txt
└── setup.py
```

# Build Docker Image
----------------------
 sudo docker build . -t jitu/mkdocs
# Producing the website
----------------------
sudo docker run --rm -it -v ${PWD}/Mkdocs_config:/Mkdocs_config jitu/mkdocs produce

# Running the website
----------------------
 sudo docker run --rm -it -v ${PWD}/Mkdocs_config:/Mkdocs_config jitu/mkdocs serve


