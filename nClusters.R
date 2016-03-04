
slectedvar <- c("", "", "")
wss <- (nrow(clustdata[, slectedvar])-1)*sum(apply(clustdata[, slectedvar], 2, var))
for (i in 2:20) wss[i] <- sum(kmeans(clustdata[, slectedvar], centers = i)$withinss)

png("clusterrepresent.png")

plot(1:20, wss, type = "b", xlab = "Number of Clusters", ylab = "Within groups sum of squares")
dev.off()
