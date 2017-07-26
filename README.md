# DockDuck - troubleshot Docker inside-out

![](duck.png)

This is ![Docker](http://docker.com) small and simple troubleshooting container.
Run it inside Docker network and troubleshoot... things. Good luck!

## :bulb: Usage

Run container inside the Docker network, and map current folder to the home:

	docker run -it --net wedeploy -v `pwd`:/root oblac/dockduck

Happy hacking!

## ❤ Based on

Of course, others have similar thoughts

+ [NetShot](https://github.com/nicolaka/netshoot) - yeah, this is the base. I just need more. They don't. That's all.
+ [NetShot fork](https://github.com/cirocosta/netshoot) - Something like this. Just need little more, and something less :)

Open-source FTW! I guess.
