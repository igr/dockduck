# DockDuck - troubleshot Docker inside-out
[![Docker Pulls](https://img.shields.io/docker/pulls/oblac/dockduck.svg)]()

![](duck.png)

**DockDuck** is the swiss-army knife toolbox [Docker](http://docker.com) container.
Run it inside Docker network and _troubleshoot_... things. Good luck!

## :bulb: Usage

Run container inside the Docker network, and map current folder to the home:

	docker run -it --net wedeploy -v `pwd`:/root oblac/dockduck

Just shell into container:

	docker run -it oblac/dockduck

Happy hacking!

## :package: What's insde?

See [Dockerfile](Dockerfile) for complete list of installed packages and tools.

## :thumbsup: Contribute!

If there is something else to add, let me know!

## ❤ Based on

Of course, other people have similar idea:

+ [NetShot](https://github.com/nicolaka/netshoot) - yeah, this is the base. I just need more. They don't. That's fine.
+ [NetShot fork](https://github.com/cirocosta/netshoot) - Something like this. Just need little more and something less :)

Open-source FTW! I guess.