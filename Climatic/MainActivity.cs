using System.Reflection;
using Android.Content;
using AndroidX.AppCompat.Widget;
using Climatic.Src.Ui;
using Microsoft.Extensions.Configuration;

namespace Climatic;

[Activity(Label = "@string/app_name", MainLauncher = true)]
public class MainActivity : Activity
{
    protected override void OnCreate(Bundle? savedInstanceState)
    {
        base.OnCreate(savedInstanceState);
        
        var a = Assembly.GetExecutingAssembly();
        using var stream = a.GetManifestResourceStream($"{a.GetName().Name}.appsettings.json");
        var configuration = new ConfigurationBuilder()
            .AddJsonStream(stream)
            .Build();

        SetContentView(Resource.Layout.auth_login_fragment);
        
        Button btnLogin = FindViewById<Button>(Resource.Id.buttonLogin);
        AppCompatTextView btnRegistration = FindViewById<AppCompatTextView>(Resource.Id.textViewRegistrationLabel);

        btnLogin.Click += actionLogin;
        btnRegistration.Click += actionRegistration;
    }

    private async void actionLogin(object sender, System.EventArgs e)
    {
        var intent = new Intent(this, typeof(HomeActivity));
        StartActivity(intent);
        
        var users = await User.GetAllUsers();
    }
    
    private void actionRegistration(object sender, System.EventArgs e)
    {
        var intent = new Intent(this, typeof(RegistrationActivity));
        StartActivity(intent);
    }
}