#install.packages("pdftools")

library('pdftools')
library('stringr')

setwd('C:/Users/vitoc/downloads')

BOLSA <- data.frame(pdftools::pdf_text('BF.pdf'))

colnames(BOLSA) <- c('A')

SEP_LINHAS <- function(linha) {
  # Substituir múltiplos espaços por um único
  str_squish(linha)
  strsplit(linha, "(\\d+\\.?\\d*)")

}

BASE_C <- do.call(rbind, lapply(BOLSA, SEP_LINHAS))

BASE_OK <- data.frame()

for(x in 1:ncol(BASE_C)){
  
  if(x == 1){
    
    LINHA <- data.frame(BASE_C[,x]) %>% 
      dplyr::filter(str_detect(A, "\\p{L}")) %>% 
      dplyr::mutate(NOME = str_trim(A))
    
    LINHA_OK <- data.frame("NOME" = LINHA[-c(1:2),2])
    
  }else{
    
    LINHA_OK <- data.frame(BASE_C[,x]) %>% 
      dplyr::filter(str_detect(A, "\\p{L}")) %>% 
      dplyr::mutate(NOME = str_trim(A)) %>% 
      dplyr::select(-A)
    
  }
  
  BASE_OK <- rbind(BASE_OK, LINHA_OK)
  
}

BASE_FINAL <- BASE_OK %>% 
  dplyr::distinct(NOME)
