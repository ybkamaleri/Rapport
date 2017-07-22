## Tar bort variabler for avidentifiseringx

bort <- c("FNr", "ENavn", "MNavn", "FNavn", "PostNr", "PostSted", "Addresse", "Mors", "Nasjonalitet", "FodeLand", "Adoptert", "AdoptertFra", "ForeldreAdoptert",
          "ForeldreAdoptertFra", "nasMor", "nasFar", "nasMormor", "nasMorfar", "nasFarmor", "nasFarfar", "fodelandMor", "fodelandFar", "fodelandMormor",
          "fodelandMorfar", "fodelandFarmor", "fodelandFarfar", "inn_pas_PostNr", "inn_pas_Adresse", "inn_pass_PostSted")

## Lage CSV fil ved å velge "CSV (Semikolondelt)" i Excel
data <- read.csv("K:/Sensitivt/Klinikk01/BDR_eReg/Rapport/Kvartalsrapport/Data/DataDumpSemikol.csv",
                 sep = ";",
                 header = TRUE,
                 stringsAsFactors = FALSE,
                 encoding = 'latin1')

bortVar <- names(data) %in% bort
aviddata <- data[!bortVar]
names(aviddata)
View(aviddata)
