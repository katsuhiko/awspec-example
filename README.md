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

テストを実行する。

```
docker run --rm -it -v "$(pwd):/home/app" -w /home/app awspec rake spec
```


## 補足）AWSリソースからテストを作成する

```
docker run --rm -it -v "$(pwd):/home/app" -w /home/app awspec awspec generate cloudwatch_event --secrets_path ./spec/secrets.yml 
```


## 補足）参考サイト

- https://github.com/k1LoW/awspec


