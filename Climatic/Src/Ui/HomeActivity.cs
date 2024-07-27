namespace Climatic.Src.Ui;

using System.Reflection;
using Android.Content;
using AndroidX.AppCompat.Widget;
using Climatic.Core.Models;
using Climatic.Core.Services;
using Microsoft.Extensions.Configuration;
using static Climatic.Core.Services.HttpRequest;
using Newtonsoft.Json;

[ Activity(Label = "Home") ]
public class HomeActivity : Activity
{
    private bool setLoadClimatic = false;
    
    protected override void OnCreate(Bundle? savedInstanceState)
    {
        base.OnCreate(savedInstanceState);

        SetContentView(Resource.Layout.home_fragment);

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
            
            FindViewById<EditText>(Resource.Id.temperatureTextView).setText(convertResponse.Datos.temperature);
            FindViewById<EditText>(Resource.Id.box1Number).setText(convertResponse.Datos.min);
            FindViewById<EditText>(Resource.Id.box2Subtitle).setText(convertResponse.Datos.temperature);
            FindViewById<EditText>(Resource.Id.box3).setText(convertResponse.Datos.temperature);
        }
        catch (Exception error)
        {
            Toast.MakeText(Application.Context, "Error al obtener temperatura", ToastLength.Short).Show();
        }
    }
}