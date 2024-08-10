namespace Climatic.Src.Ui;

using Climatic.Core.Models;
using Climatic.Core.Services;
using Newtonsoft.Json;
using System;
using Xamarin.Essentials;

[ Activity(Label = "Home") ]
public class HomeActivity : Activity
{
    private bool setLoadClimatic = false;
    
    protected override void OnCreate(Bundle? savedInstanceState)
    {
        base.OnCreate(savedInstanceState);

        SetContentView(Climatic.Resource.Layout.home_fragment);

        if (!setLoadClimatic)
        {
            loadClimatic();   
        }
    }

    private async void loadClimatic()
    {
        try
        {
            HttpRequest requestClient = new HttpRequest();

            var response = await requestClient.MakeGetRequestAsync("/weather?lat=25.6830607&lon=-100.3336169");

            var convertResponse = JsonConvert.DeserializeObject<RequestResponse>(response);

            if (convertResponse.Estatus == 2)
            {
                throw new Exception(convertResponse.Mensaje);
            }

            this.setLoadClimatic = true;

            FindViewById<TextView>(Climatic.Resource.Id.temperatureTextView).Text = $"{convertResponse.Datos.temperature} \u00b0C";
            FindViewById<TextView>(Climatic.Resource.Id.box1Number).Text = $"{convertResponse.Datos.wind} km/h";
            FindViewById<TextView>(Climatic.Resource.Id.box2Number).Text = $"{convertResponse.Datos.humidity} %";
            FindViewById<TextView>(Climatic.Resource.Id.box3Number).Text = $"{convertResponse.Datos.precipitation_pro} km/h";
        }
        catch (Exception error)
        {
            Toast.MakeText(Application.Context, "Error al obtener temperatura", ToastLength.Short).Show();
        }
    }
    
}

