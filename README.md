# ctf_xinetd

> A docker repository for deploying ctf problem

## configuration

Put files to floder `bin`. They'll be copied to /home/ctf. **Update the flag** at the same time.

Edit `ctf.xinetd`. replace `./helloworld` to your command.

You can also edit `Dockerfile, ctf.xinetd, start.sh` to custom your environment.

## build

```
docker build -t "helloworld" .
```

DO NOT use *bin* as challenge's name

## run

```
docker run -d -p "0.0.0.0:pubport:9999" -h "helloworld" --name="helloworld" helloworld
```
