

# render bookdown
setwd("C:/Users/usuari/Documents/GitHub/meacp")
aaa<-unlink("C:/Users/usuari/Documents/GitHub/meacp/_book/",recursive=TRUE, force=TRUE)
bookdown::render_book("index.Rmd")
# copia
setwd("C:/Users/usuari/Documents/GitHub/blogdown/public")
aaa<-unlink("C:/Users/usuari/Documents/GitHub/blogdown/public/meacp",recursive=TRUE, force=TRUE)
file.copy("C:/Users/usuari/Documents/GitHub/meacp/_book"
          ,"C:/Users/usuari/Documents/GitHub/blogdown/public"
          , overwrite=TRUE,recursive=TRUE)
file.rename("C:/Users/usuari/Documents/GitHub/blogdown/public/_book",
            "C:/Users/usuari/Documents/GitHub/blogdown/public/meacp")

# stage
system("git pull") 
system("git add .") 
system("git commit -m 'Actualiza'") 
system("git push") 

# tornem
setwd("C:/Users/usuari/Documents/GitHub/meacp")
