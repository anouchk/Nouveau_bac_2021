library(data.table)

#set working directory
setwd('/Users/analutzky/Desktop/2022_01_spe_bac')

Table_spe_bac_=fread('spe_bac.csv')

var.names=colnames(Table_spe_bac_)
### getting rid of space and special characters in columns names 
colnames(Table_spe_bac_)=make.names(var.names)
# showing column names
colnames(Table_spe_bac_)

# Il me faut une table avec la somme des candidats, des retenus et des admis, par type de formation. En gardant une ligne par doublette, et l'info de son nom court et du type de doublette :
Table_type_formation=(Table_spe_bac_)[, .(Candidats=sum(Candidats), Retenus=sum(Retenus), Admis=sum(Admis)),by=.(Doublette, Doublette.nom.court, Type.de.doublette, Type.de.formation) ]

# Ok, maintenant j'aimerais faire des 'blocs' par type de formtion, et dans chaque bloc, un tri par ordre décroissant du nombre d'admis
# Le - dans -Admis c'est pour dire dans l'ordre décroissant
Table_type_formation=Table_type_formation[order(Type.de.formation,-Admis),]

# Ok, maintenant j'aimerais avoir le total du nombre d'admis dans chaque type de formation
Table_type_formation[,Total_admis:=sum(Admis),by=Type.de.formation]

# Et tant qu'à faire, j'aimerais ordonner ma base en fonction du type de formation où il y a le plus de monde
Table_type_formation=Table_type_formation[order(-Total_admis)]

# Super, maintenant je ne veux garder que les 5 premières lignes pour chaque type de formation. On utilise head(Table,5)
Top5=Table_type_formation[,head(.SD,5),by=Type.de.formation]

# Bon comme Tableau n'arrive pas à m'ordonne les doublettes dans l'ordre décroissant du nb d'admis par type de formation, on tricher avec un index
Top5[,rank:=letters[1:.N],by=Type.de.formation]

write.csv2(as.data.frame(Top5),file='Top5.csv',fileEncoding = "UTF8")