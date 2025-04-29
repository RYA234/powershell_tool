
# 概要
業務でpowershellを使うことが多いので、作りました。
後で再利用するために、githubでソース管理します。


#  開発環境

ソフトウェア名|バージョン|説明
------------|--------------|-------
Windows|10|OS
Powershell|5.1.19041| スクリプト言語およびキャラクターユーザーインターフェイス
VSCode|1.99.3|IDE
powershell |2025.0.0| VsCodeエクステンション　Microsoft製



# フォルダ構成

```plantuml

@startuml
left to right direction

folder Service{
file InfoGet.ps1

}

actor User

folder Controller{

folder application_1{
 file app_text as "readme.md"
 file app_ps1 as "app_1.ps1"
}

}

folder Log{
}

User --> Controller : Call by powershell
Controller --> Service : Use
Service --> Log: Use

@enduml

```

フォルダ名|説明
--------------|-------
Service|ビジネスロジックを書くクラス
Controller|インターフェイス部分(CLI)
Log|ログ関係のクラス


# シーケンス図



#  参考資料