# gcp config

- gcp 新增 config
  - gcloud init
- 切換到相對應的 project
  - gcloud config configurations activate PROJECT
- gcp application login
  - 目前是用自己的帳號，之後可以改用 service account
  - gcloud auth application-default login
- 確定帳號執行的帳號有 owner 權限

## 參考

https://registry.terraform.io/namespaces/terraform-google-modules
https://www.terraform-best-practices.com/v/zh/naming

## first api

- Compute Engine API
- Kubernetes Engine API

## 常用指令

- terragrunt init

  - terragrunt 初始化 terraform 的工作目錄，此行為跟 terraform init 命類類似但還包含一些額外功能，terragrunt init 命令會下載並安裝 module(ex: git repo or terraform repo)，假如 terragrunt.hcl 有設定 remote storage，那麼此命令會自動創建並配置這些遠程狀態(ex: s3, google cloud storage, azure blob)

- terragrunt plan

  - plan 用於生成和顯示 terraform 執行計畫，這個計畫顯示 terraform 將要執行哪些操作來達到配置文件所描述的期望狀態(哪些資源被創建，更新，銷毀)，這個命令不會修改任何資源

- terragrunt

  - apply 跟 terraform apply 一樣照 plan 產生的計畫去修改線上環境

- 移除 remote state

  - terragrunt state rm "REMOTE_OBJECT"

- 針對特定的目錄去執行

  - cd /path/to/directory/with/terragrunt.hcl
  - terragrunt apply

- 如果只想應用該目錄的配置，而不跑子目錄

  - terragrunt apply --terragrunt-non-interactive --terragrunt-working-dir /path/to/directory/with/terragrunt.hcl
