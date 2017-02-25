
# importing texts
roughingitURL <- "http://www.gutenberg.org/files/3177/3177.txt"
roughingittext <- scan(roughingitURL, what = "character", sep = "\n")
innocentsURL <- "http://www.gutenberg.org/files/3176/3176-0.txt"
innocentstext <- scan(innocentsURL, what = "character", sep = "\n")
huckfinnURL <- "http://www.gutenberg.org/files/76/76-0.txt"
huckfinntext <- scan(huckfinnURL, what = "character", sep = "\n")
tomsawyerURL <- "http://www.gutenberg.org/files/74/74-0.txt"
tomsawyertext <- scan(tomsawyerURL, what = "character", sep = "\n")
connyankeeURL <- "http://www.gutenberg.org/files/86/86-0.txt"
connyankeetext <- scan(connyankeeURL, what = "character", sep = "\n")
puddURL <- "http://www.gutenberg.org/files/102/102-0.txt"
puddtext <- scan(puddURL, what = "character", sep = "\n")

# cleaning roughing it text
findstart <- function(text){ 
  startend <- 0
  for (i in 1:length(text)){
    if (text[i] == "CHAPTER I.") {
      startend <- i
    }
  }
  for (j in 50:length(text)){
    if (text[j] == "End of Project Gutenberg’s Roughing It, by Mark Twain (Samuel Clemens)") {
      startend <- c(startend, j)
      return(startend)
    }
  }
} 

actualtext <- function(text, startend){
  realtext <- text[startend[1]:startend[2]]
  return (realtext)
}

# roughing it text
roughstartend <- findstart(roughingittext)
roughingittext <- actualtext(roughingittext, roughstartend)

# cleaning innocents abroad text
findstart <- function(text){ 
  startend <- 0
  for (i in 1:length(text)){
    if (text[i] == "CHAPTER I.") {
      startend <- i
    }
  }
  for (j in 50:length(text)){
    if (text[j] == "End of the Project Gutenberg EBook of The Innocents Abroad") {
      startend <- c(startend, j)
      return(startend)
    }
  }
} 

actualtext <- function(text, startend){
  realtext <- text[startend[1]:startend[2]]
  return (realtext)
}

# innocents abroad text
innocentstartend <- findstart(innocentstext)
innocentstext <- actualtext(innocentstext, innocentstartend)


# cleaning tom sawyer text
findstart <- function(text){ 
  startend <- 0
  for (i in 1:length(text)){
    if (text[i] == "CHAPTER I") {
      startend <- i
    }
  }
  for (j in 50:length(text)){
    if (text[j] == "CONCLUSION") {
      startend <- c(startend, j)
      return(startend)
    }
  }
} 

actualtext <- function(text, startend){
  realtext <- text[startend[1]:startend[2]]
  return (realtext)
}

# tom sawyer text
tomsawyerstartend <- findstart(tomsawyertext)
tomsawyertext <- actualtext(tomsawyertext, tomsawyerstartend)
tomsawyertext <- iconv(tomsawyertext,"WINDOWS-1252","UTF-8")

# cleaning huckleberry finn text
findstart <- function(text){ 
  startend <- 0
  for (i in 1:length(text)){
    if (text[i] == "CHAPTER I.") {
      startend <- i
    }
  }
  for (j in 50:length(text)){
    if (text[j] == "End of the Project Gutenberg EBook of Adventures of Huckleberry Finn,") {
      startend <- c(startend, j)
      return(startend)
    }
  }
} 

actualtext <- function(text, startend){
  realtext <- text[startend[1]:startend[2]]
  return (realtext)
}

# huckleberry finn text
huckfinnstartend <- findstart(huckfinntext)
huckfinntext <- actualtext(huckfinntext, huckfinnstartend)

# cleaning connecticut yankee text
findstart <- function(text){ 
  startend <- 0
  for (i in 1:length(text)){
    if (text[i] == "CHAPTER I") {
      startend <- i
    }
  }
  for (j in 50:length(text)){
    if (text[j] == "End of the Project Gutenberg EBook of A Connecticut Yankee in King Arthur’s") {
      startend <- c(startend, j)
      return(startend)
    }
  }
} 

actualtext <- function(text, startend){
  realtext <- text[startend[1]:startend[2]]
  return (realtext)
}

# connecticut yankee text
connyankeestartend <- findstart(connyankeetext)
connyankeetext <- actualtext(connyankeetext, connyankeestartend)

# cleaning pudd'n text
findstart <- function(text){ 
  startend <- 0
  for (i in 1:length(text)){
    if (text[i] == "CHAPTER I.") {
      startend <- i
    }
  }
  for (j in 50:length(text)){
    if (text[j] == "and the creditors sold him down the river.") {
      startend <- c(startend, j)
      return(startend)
    }
  }
} 

actualtext <- function(text, startend){
  realtext <- text[startend[1]:startend[2]]
  return (realtext)
}

# pudd'n text
puddstartend <- findstart(puddtext)
puddtext <- actualtext(puddtext, puddstartend)


