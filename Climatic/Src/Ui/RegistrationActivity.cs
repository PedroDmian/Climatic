namespace Climatic.Src.Ui;

using System.Reflection;
using Android.Content;
using AndroidX.AppCompat.Widget;
using Climatic.Core.Models;
using Climatic.Core.Services;
using Microsoft.Extensions.Configuration;
using static Climatic.Core.Services.HttpRequest;
using Newtonsoft.Json;

using static Climatic.Core.Services.HttpRequest;

[ Activity(Label = "Home") ]
public class RegistrationActivity : Activity
{
    private EditText dateBirthDay;
    
    protected override void OnCreate(Bundle? savedInstanceState)
    {
        base.OnCreate(savedInstanceState);

        SetContentView(Resource.Layout.auth_registration_fragment);
        
        dateBirthDay = FindViewById<EditText>(Resource.Id.textInputLayoutBirthDate);
        Button buttonRegister = FindViewById<Button>(Resource.Id.buttonRegister);
        
        dateBirthDay.Click += actionDateBirthDay;
        buttonRegister.Click += handlerRegister;
    }
    
    private void actionDateBirthDay(object sender, EventArgs e)
    {
        DateTime currentDate = DateTime.Now;

        DatePickerDialog datePicker = new DatePickerDialog(this, OnDateSet, currentDate.Year, currentDate.Month - 1, currentDate.Day);
        datePicker.Show();
    }
    
    private void OnDateSet(object sender, DatePickerDialog.DateSetEventArgs e)
    {
        dateBirthDay.Text = e.Date.ToShortDateString();
    }

    private async void handlerRegister(object sender, EventArgs e)
    {
        try
        {
            var requestData = new
            {
                email = FindViewById<EditText>(Resource.Id.textInputLayoutEmail).Text,
                name = FindViewById<EditText>(Resource.Id.textInputLayoutName).Text,
                password = FindViewById<EditText>(Resource.Id.textInputLayoutPassword).Text,
                birthdate = "1999-03-05",
                activity = "Oficina"
            };

            HttpRequest requestClient = new HttpRequest();

            var response =
                await requestClient.MakePostRequestAsync(
                    "/auth/register",
                    requestData);

            var convertResponse = JsonConvert.DeserializeObject<RequestResponseNEW>(response);

            if (convertResponse.Estatus == 2)
            {
                throw new Exception(convertResponse.Mensaje);
            }
            
            Toast.MakeText(Application.Context, "El usuario se registro correctamente", ToastLength.Short).Show();
            
            var intent = new Intent(this, typeof(MainActivity));
            StartActivity(intent);
        }
        catch (Exception error)
        {
            Toast.MakeText(Application.Context, "El usuario ya existe", ToastLength.Short).Show();
        }
    }
}