---
title: "miniprojectr"
author: "Rachel Kraft"
date: "2/13/2022"
output: pdf_document
---

> Download and import data set

```{r}
fna.data <- "C:/Users/Rachel/Desktop/WisconsinCancer.csv"
View(WisconsinCancer)
wisc.df <- read.csv(fna.data, row.names=1)
```

> Examine 

```{r}
wisc.df
```

> Remove diagnosis column

```{r}
wisc.data <- wisc.df[,-1]
wisc.data
```

> Vector for info from diagnosis column

```{r}
diagnosis <- c(wisc.df[,1])
```

> Q1) How many observations are in this dataset?

```{r}
dim(wisc.data)
```
> Q2) How many of the observations have malignant diagnosis?

```{r}
## grep() search for character match in a character vector
length(grep("M", diagnosis))
```

> Q3) How many variables/features in the data are suffixed with _mean?

- look for which columns have mean in them

```{r}
length(grep("mean", colnames(wisc.data)))
```

> PCA

- check mean and stdev to see if it needs to be scaled

```{r}
colMeans(wisc.data)
apply(wisc.data,2,sd)
```

```{r}
wisc.pr <- prcomp(wisc.data, scale=TRUE)
summary(wisc.pr)
```


> Q4) From your results, what proportion of the original variance is captured by the first principal components (PC1)?

When you look at the PCA results above, the proportion of variance for PC1 is 0.4427

> Q5) How many principal components (PCs) are required to describe at least 70% of the original variance in the data?

To find this, look at the cumulative proportion row for each PC column above. The first one over 0.7 is PC3, so 3 principal components are reqauired to describe at least 70% of the original variance

> Q6) How many principal components (PCs) are required to describe at least 90% of the original variance in the data?

Cumulative proportion is at least 0.9 at PC7, so 7 principal components are required to describe at least 90% of original variance.

> Make a biplot for our PCA results


> Q7) What stands out to you about this plot? Is it easy or difficult to understand? Why?


