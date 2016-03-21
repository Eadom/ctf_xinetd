# ctf_xinetd

> A docker repository for deploying ctf problem

## configuration

Put files to floder `bin`. They'll be copied to /home/ctf. **Update the flag** at the same time.

Edit `ctf.xinetd`. replace `server = /home/ctf/helloworld` to your command.

## build

```
docker build -t "helloworld" .
```

## run

```
docker run -d -p "0.0.0.0:pubport:9999" -h "helloworld" --name="helloworld" helloworld
```