git clone https://github.com/MariaCutipa/DAEAlab9.git
cd DAEAlab9
git clone https://github.com/MicrosoftDocs/mslearn-blazor-navigation.git BlazingPizza

cd BlazingPizza
rm pizza.db
cd ..

# Construir la imagen Docker
docker build -t blazor-app .

# Ejecutar el contenedor con la aplicación Blazor
docker run -it -p 5000:5000 blazor-app

