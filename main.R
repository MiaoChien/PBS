library(httr)
library(rvest)
library(jsonlite)
library(magrittr)
library(data.table)



url='http://data.moi.gov.tw/MoiOD/System/DownloadFile.aspx?DATA=1E91AC2B-48B3-47A3-83B4-EB4A8AD930B9'

res = GET(url)

res_df = 
  content(res, as = "text", encoding = "UTF-8") %>% 
  fromJSON() 
df = res_df$result %>% data.table


