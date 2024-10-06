# Usar la imagen base del SDK de .NET
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build

# Copiar los archivos locales necesarios al contenedor
COPY ./BlazingPizza/ ./home/BlazingPizza/
COPY ./Checkout.razor ./home/BlazingPizza/Pages/Checkout.razor
COPY ./Index.razor ./home/BlazingPizza/Pages/Index.razor
COPY ./OrderController.cs ./home/BlazingPizza/OrderController.cs
COPY ./OrderState.cs ./home/BlazingPizza/OrderState.cs
COPY ./PizzaStoreContext.cs ./home/BlazingPizza/PizzaStoreContext.cs
COPY ./MyOrders.razor ./home/BlazingPizza/Pages/MyOrders.razor
COPY ./OrderDetail.razor ./home/BlazingPizza/Pages/OrderDetail.razor
COPY ./MainLayout.razor ./home/BlazingPizza/Shared/MainLayout.razor
COPY ./App.razor ./home/BlazingPizza/App.razor
COPY ./_Host.cshtml ./home/BlazingPizza/Pages/_Host.cshtml

# Exponer el puerto en el que correrá la aplicación
EXPOSE 5000

# Cambiar al directorio de la aplicación Blazor
WORKDIR /home/BlazingPizza/

# Ejecutar la aplicación usando dotnet run
CMD ["dotnet", "run", "--urls", "http://0.0.0.0:5000"]





