library("XML")
library("methods")
data <- xmlParse("xml_file.xml")
root_node <- xmlRoot(data)
nodes <- xmlSize(root_node[[1]])
counter <- 0
for(node in 1:nodes){
  x <- xmlToList(root_node[[1]][[node]])$zipcode
  if(x == "21231"){
    counter <- counter + 1  
  }
}
print(counter)