# [cathugger/mkp224o](https://github.com/cathugger/mkp224o) Docker container

Docker Container for https://github.com/cathugger/mkp224o

mkp224o - vanity address generator for ed25519 onion services

This tool generates vanity ed25519 (hidden service version 3, formely known as proposal 224) onion addresses.

---

I have mainly made this image because the ones on DockerHub copied sketchy files at buildtime and were not reproducible.

---

## Usage

```
docker run -it mitaka8/mkp224o:latest mkp224o [PREFIX...]
```
