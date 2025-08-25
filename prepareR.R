#パッケージのインストール
install.packages("pacman")
library(pacman)

#DTAファイル読み込みのためのパッケージhaven
pacman::p_load(haven, tidyverse)
library(haven)
library(tidyverse)
library(conflicted)

#データを読み込み、CSVファイルとして保存する
data_raw <-read_dta("artist_reputation_main.dta")
write.csv(data_raw,"artist_reputation_main.csv",row.names = FALSE)

#データの確認
data_raw
class(data_raw)

#データの保存
saveRDS(data_raw, file = "artist_reputation_main.rds")