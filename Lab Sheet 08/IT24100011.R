setwd("C:\\Users\\sdsjm\\OneDrive\\Desktop\\IT24100011")

weights_data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
pop_mean <- mean(weights_data$Weight)
pop_sd <- sd(weights_data$Weight)

pop_mean
pop_sd


set.seed(123) 
n_samples <- 25
sample_size <- 6

sample_means <- numeric(n_samples)
sample_sds <- numeric(n_samples)

for (i in 1:n_samples) {
  samp <- sample(weights_data$Weight, sample_size, replace = TRUE)
  sample_means[i] <- mean(samp)
  sample_sds[i] <- sd(samp)
}

# Create a table for the first few samples
results <- data.frame(
  Sample = 1:n_samples,
  Mean = round(sample_means, 4),
  SD = round(sample_sds, 4)
)
print(results)


mean_of_means <- mean(sample_means)
sd_of_means <- sd(sample_means)

mean_of_means
sd_of_means

# Theoretical standard error = population_sd / sqrt(sample_size)
theoretical_se <- pop_sd / sqrt(sample_size)
theoretical_se
