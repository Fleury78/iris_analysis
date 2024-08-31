#Carregando o dataset iris
data(iris)

#1. Teste de hipotese paza o comprimento da sépala entre setosa e vers 
setosa_sep_len <- iris$Sepal.Length[iris$Species == 'setosa'] 
versicolor_sep_len <- iris$Sepal.Length[iris$Species == 'versicolor']

#Realizando um teste t para amostras independentes 
t.test(setosa_sep_len, versicolor_sep_len)

#2. Teste de hipotese para a largura da pétala entre versicolor e virginica 
versicolor_pet_width <- iris$Petal.Width[iris$Species == 'versicolor'] 
virginica_pet_width <- iris$Petal.Width[iris$Species == 'virginica']

#Teste t para amostras independentes 
t.test(versicolor_pet_width, virginica_pet_width)

#3. Teste de hipotese para o  comprimento da sépala da aspecte virginica igual a 6.5 cm
virginica_sep_len <- iris$Sepal.Length[iris$Species == 'virginica']

#teste t de uma amostra para 6.5 cm
t.test(virginica_sep_len, mu = 6.5)