library(dplyr)

url <- paste0('http://groupware.les.inf.puc-rio.br/static/har/',
              'dataset-har-PUC-Rio-ugulino.zip')

zipFile <- file.path('data-raw', 'har.zip')
datFile <- file.path('data-raw', 'dataset-har-PUC-Rio-ugulino.csv')
outFile <- file.path('data', 'har.rda')
colClasses <- c('character', 'character', 'integer', 'character', 'integer',
                'character', 'integer', 'integer', 'integer', 'integer',
                'integer', 'integer', 'integer', 'integer', 'integer',
                'integer', 'integer', 'integer', 'factor')

if (!file.exists(outFile)) {
    download.file(url, destfile = zipFile)
    unzip(zipFile, exdir = 'data-raw')
    system(paste('rm -f', zipFile))
    har <- read.table(datFile, header = TRUE, sep = ';',
                      colClasses = colClasses) %>%
        tbl_df()
    save(har, file = outFile)
    system(paste('rm -f', datFile))
}