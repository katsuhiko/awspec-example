# awspec

## install

secrets.yml に AWS Creadentials 情報をセットする。

```
cp spec/secrets.example.yml spec/secrets.yml
```

Docker Image を作成する。

```
docker build -t awspec .
```

Spec を実行する。

```
docker run --rm -it -v "$(pwd):/home/app" -w /home/app awspec rake spec
```
