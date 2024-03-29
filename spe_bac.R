
library(data.table)

#set working directory
setwd('/Users/analutzky/Desktop/2022_01_spe_bac')

Table_spe_bac=fread('2022_24_01_parcoursup_enseignements_de_specialite_bacheliers_generaux.csv')

colnames(Table_spe_bac)[3]='Candidats'
colnames(Table_spe_bac)[4]='Retenus'
colnames(Table_spe_bac)[5]='Admis'
colnames(Table_spe_bac)[1]='Doublette'

# Ok, maintenant j'aimerais avoir le total du nombre d'admis dans chaque type de formation
Table_spe_bac[,Total_admis:=sum(Admis),by=Formation]


write.csv2(as.data.frame(Table_spe_bac),file='Total_admis_par_formation.csv',fileEncoding = "UTF8")

unique(Table_spe_bac$Formation)
#  [1] "Licence Electronique, Génie électrique, EEA"                               
#  [2] "Licence Génie civil"                                                       
#  [3] "Licence Informatique"                                                      
#  [4] "Licence MASS"                                                              
#  [5] "Licence Pluri Lettres - Sciences du langage - Arts"                        
#  [6] "Licence Sciences de l'univers, de la terre, de l'espace"                   
#  [7] "Licence Sciences juridiques"                                               
#  [8] "Licence Sciences politiques"                                               
#  [9] "BTS production"                                                            
# [10] "CPGE ECG"                                                                  
# [11] "CUPGE"                                                                     
# [12] "Formations des écoles nationales vétérinaires"                             
# [13] "Licence Histoire"                                                          
# [14] "Licence Physique"                                                          
# [15] "Licence Pluri Lettres - Langues - Sciences humaines"                       
# [16] "Licence Pluri Sciences de la vie, de la santé, de la terre et de l'univers"
# [17] "Licence Sciences et technologies industrielles"                            
# [18] "Formations d'ART"                                                          
# [19] "Autres formations"                                                         
# [20] "Ensemble des candidats bacheliers"                                         
# [21] "Licence Pluri Sciences fondamentales et applications"                      
# [22] "Licence Pluri Sciences humaines et sociales"                               
# [23] "Licence Sciences religieuses"                                              
# [24] "DCG"                                                                       
# [25] "Licence Arts"                                                              
# [26] "Licence Chimie"                                                            
# [27] "Licence Formation générale aux métiers de l'ingénieur"                     
# [28] "Licence Géographie"                                                        
# [29] "Licence Mécanique, Génie mécanique, Ingénierie mécanique"                  
# [30] "BUT Production"                                                            
# [31] "BUT Service"                                                               
# [32] "BTS agricole"                                                              
# [33] "Ecoles de Commerce"                                                        
# [34] "D.E social"                                                                
# [35] "D.E sanitaire"                                                             
# [36] "Licence Archéologie, Ethno, Préhistoire, Anthropologie"                    
# [37] "Licence Pluri Droit - Sciences éco - AES"                                  
# [38] "Licence Psychlogie, Sciences cognitives"                                   
# [39] "Licence STAPS"                                                             
# [40] "Licence Sciences économiques"                                              
# [41] "CPGE S"                                                                    
# [42] "Licence Pluri Langues"                                                     
# [43] "Licence Las"                                                               
# [44] "PASS"                                                                      
# [45] "DEUST"                                                                     
# [46] "Licence Langues et littératures étrangères"                                
# [47] "Licence Philosophie, Epistémologie"                                        
# [48] "Licence Sciences du langage - Linguistique"                                
# [49] "Sciences Po"                                                               
# [50] "Licence Mathématiques et informatique"                                     
# [51] "BTS service"                                                               
# [52] "Licence Langues et littératures françaises"                                
# [53] "Licence Sciences de gestion"                                               
# [54] "CPGE L"                                                                    
# [55] "Licence Mathématiques"                                                     
# [56] "Licence Sciences de l'information et de la communication"                  
# [57] "Ecoles d'Ingénieurs"                                                       
# [58] "Licence LEA"                                                               
# [59] "Licence Pluri Sciences"                                                    
# [60] "Licence Sciences de l'éducation"                                           
# [61] "Licence Physique et chimie"                                                
# [62] "Licence Sociologie, Démographie"                                           
# [63] "Licence Sciences de la vie, biologie, santé"                               
# [64] "Licence AES"                                                               
# [65] "Licence Pluri Sciences économiques - Gestion" 


unique(Table_spe_bac$Doublette)
# [1] "Mathématiques&Physique-Chimie"                                                                                    
#  [2] "Histoire,Géographie, Géopolitique, Sciences politiques&Sciences économiques et sociales"                          
#  [3] "Physique-Chimie&Sciences de la vie et de la terre"                                                                
#  [4] "Mathématiques&Sciences de la vie et de la terre"                                                                  
#  [5] "Mathématiques&Sciences économiques et sociales"                                                                   
#  [6] "Langues, Littératures et Cultures Etrangères et Régionales&Sciences économiques et sociales"                      
#  [7] "Histoire,Géographie, Géopolitique, Sciences politiques&Langues, Littératures et Cultures Etrangères et Régionales"
#  [8] "Histoire,Géographie, Géopolitique, Sciences politiques&Humanités, Littérature et Philosophie"                     
#  [9] "Sciences économiques et sociales&Sciences de la vie et de la terre"                                               
# [10] "Humanités, Littérature et Philosophie&Langues, Littératures et Cultures Etrangères et Régionales"                 
# [11] "Mathématiques&Numérique et Sciences Informatiques"                                                                
# [12] "Histoire,Géographie, Géopolitique, Sciences politiques&Mathématiques"                                             
# [13] "Humanités, Littérature et Philosophie&Sciences économiques et sociales"                                           
# [14] "Mathématiques&Sciences de l'ingénieur"                                                                            
# [15] "Histoire,Géographie, Géopolitique, Sciences politiques&Sciences de la vie et de la terre"                         
# [16] "Langues, Littératures et Cultures Etrangères et Régionales&Sciences de la vie et de la terre"                     
# [17] "Arts&Langues, Littératures et Cultures Etrangères et Régionales"                                                  
# [18] "Langues, Littératures et Cultures Etrangères et Régionales&Mathématiques"                                         
# [19] "Arts&Humanités, Littérature et Philosophie"                                                                       
# [20] "Arts&Histoire,Géographie, Géopolitique, Sciences politiques"                                                      
# [21] "Humanités, Littérature et Philosophie&Sciences de la vie et de la terre"                                          
# [22] "Arts&Sciences économiques et sociales"                                                                            
# [23] "Arts&Mathématiques"                                                                                               
# [24] "Biologie-Ecologie&Physique-Chimie"                                                                                
# [25] "Langues, Littératures et Cultures Etrangères et Régionales&Arts"                                                  
# [26] "Humanités, Littérature et Philosophie&Mathématiques"                                                              
# [27] "Langues, Littératures et Cultures Etrangères et Régionales&Physique-Chimie"                                       
# [28] "Physique-Chimie&Sciences économiques et sociales"                                                                 
# [29] "Langues, Littératures et Cultures Etrangères et Régionales&Numérique et Sciences Informatiques"                   
# [30] "Numérique et Sciences Informatiques&Sciences économiques et sociales"                                             
# [31] "Humanités, Littérature et Philosophie&Arts"                                                                       
# [32] "Arts&Sciences de la vie et de la terre"                                                                           
# [33] "Numérique et Sciences Informatiques&Physique-Chimie"                                                              
# [34] "Histoire,Géographie, Géopolitique, Sciences politiques&Physique-Chimie"                                           
# [35] "Histoire,Géographie, Géopolitique, Sciences politiques&Arts"                                                      
# [36] "Physique-Chimie&Sciences de l'ingénieur"                                                                          
# [37] "Numérique et Sciences Informatiques&Sciences de la vie et de la terre"                                            
# [38] "Arts&Physique-Chimie"                                                                                             
# [39] "Numérique et Sciences Informatiques&Sciences de l'ingénieur"                                                      
# [40] "Biologie-Ecologie&Mathématiques"                                                                                  
# [41] "Arts&Numérique et Sciences Informatiques"                                                                         
# [42] "Humanités, Littérature et Philosophie&Littératures, langues et culture de l'antiquité"                            
# [43] "Histoire,Géographie, Géopolitique, Sciences politiques&Numérique et Sciences Informatiques"                       
# [44] "Sciences économiques et sociales&Arts"                                                                            
# [45] "Humanités, Littérature et Philosophie&Physique-Chimie"                                                            
# [46] "Sciences de l'ingénieur&Sciences de la vie et de la terre"                                                        
# [47] "Langues, Littératures et Cultures Etrangères et Régionales&Littératures, langues et culture de l'antiquité"       
# [48] "Langues, Littératures et Cultures Etrangères et Régionales&Sciences de l'ingénieur"                               
# [49] "Sciences de la vie et de la terre&Arts"                                                                           
# [50] "Histoire,Géographie, Géopolitique, Sciences politiques&Littératures, langues et culture de l'antiquité"           
# [51] "Sciences économiques et sociales&Sciences de l'ingénieur"                                                         
# [52] "Humanités, Littérature et Philosophie&Numérique et Sciences Informatiques"                                        
# [53] "Histoire,Géographie, Géopolitique, Sciences politiques&Sciences de l'ingénieur"                                   
# [54] "Arts&Sciences de l'ingénieur"                                                                                     
# [55] "Arts&Littératures, langues et culture de l'antiquité"                                                             
# [56] "Sciences de la vie et de la terre&Littératures, langues et culture de l'antiquité"                                
# [57] "Sciences économiques et sociales&Littératures, langues et culture de l'antiquité"                                 
# [58] "Biologie-Ecologie&Histoire,Géographie, Géopolitique, Sciences politiques"                                         
# [59] "Biologie-Ecologie&Sciences économiques et sociales"                                                               
# [60] "Humanités, Littérature et Philosophie&Sciences de l'ingénieur"                                                    
# [61] "Mathématiques&Littératures, langues et culture de l'antiquité"                                                    
# [62] "Biologie-Ecologie&Langues, Littératures et Cultures Etrangères et Régionales"                                     
# [63] "Physique-Chimie&Littératures, langues et culture de l'antiquité"                                                  
# [64] "Biologie-Ecologie&Humanités, Littérature et Philosophie"                                                          
# [65] "Numérique et Sciences Informatiques&Littératures, langues et culture de l'antiquité"                              
# [66] "Arts&Arts"   



