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
docker run --rm -it -v "$(pwd)":/home/app -w /home/app awspec rake spec
```


## 補足）Gemfile.lock を作る

```
docker run --rm -it -v "$(pwd)":/home/app -w /home/app ruby:2.7 bundle install
```


## 補足）awspec の初期化


```
docker run --rm -it -v "$(pwd)":/home/app -w /home/app awspec awspec init
```


## 補足）AWSリソースからテストを作成する

```
docker run --rm -it -v "$(pwd)":/home/app -w /home/app awspec awspec generate cloudwatch_event --secrets_path ./spec/secrets.yml 
```


## 補足）参考サイト

- https://github.com/k1LoW/awspec
