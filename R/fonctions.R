new_post2 <- function(title, date = Sys.Date(), author = "maman", tags = NULL){
  if(!file.exists(paste0("content/post/", date, ".md"))){
    write(
      paste0(
        "---\nauthor : ", author,
        "\ndate : ", date,
        "\ntitle : ", title,
        "\ntags : ", 
        "\ngallery : img/", date,
        "\n---"
      ), file= paste0("content/post/", date, ".md")
    )
  }else{
    print("un article avec la meme date existe deja")
  }

  dir.create(paste0("static/img/", date))
}

#marche pas mais pas tres grave
create_tags <- function(tags){
  strg <-  for(i in 1:length(tags)){
    paste0("\n - ", tags[i])
  }
}

           