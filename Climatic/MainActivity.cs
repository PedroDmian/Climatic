using System.Reflection;
using Android.Content;
using AndroidX.AppCompat.Widget;
using Climatic.Core.Models;
using Climatic.Core.Services;
using Climatic.Src.Ui;
using Microsoft.Extensions.Configuration;
using static Climatic.Core.Services.HttpRequest;
using Newtonsoft.Json;

namespace Climatic;

[Activity(Label = "@string/app_name", MainLauncher = true)]
public class MainActivity : Activity
{
    protected override void OnCreate(Bundle? savedInstanceState)
    {
        base.OnCreate(savedInstanceState);
        
        SetContentView(Resource.Layout.auth_login_fragment);
        
        Button btnLogin = FindViewById<Button>(Resource.Id.buttonLogin);
        AppCompatTextView btnRegistration = FindViewById<AppCompatTextView>(Resource.Id.textViewRegistrationLabel);

        btnLogin.Click += actionLogin;
        btnRegistration.Click += actionRegistration;
    }

    // ? METODO AL DARLE CLICK LOGIN
    private async void actionLogin(object sender, System.EventArgs e)
    {
        try
        {
            var requestData = new
            {
                email = FindViewById<EditText>(Resource.Id.textInputLayoutEmail).Text,
                password = FindViewById<EditText>(Resource.Id.textInputLayoutPassword).Text
            };

            HttpRequest requestClient = new HttpRequest();

            var response =
                await requestClient.MakePostRequestAsync(
                    "/auth/login",
                    requestData);

            var convertResponse = JsonConvert.DeserializeObject<RequestResponse>(response);

             if (convertResponse.Estatus == 2)
            {
                throw new Exception(convertResponse.Mensaje);
            }
            
            var intent = new Intent(this, typeof(HomeActivity));
            StartActivity(intent);
        }
        catch (Exception error)
        {
            Toast.MakeText(Application.Context, "Usuario o contraseña no es correcto", ToastLength.Short).Show();
        }
    }
    
    private void actionRegistration(object sender, System.EventArgs e)
    {
        var intent = new Intent(this, typeof(RegistrationActivity));
        StartActivity(intent);
    }
}