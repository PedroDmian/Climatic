namespace Climatic.Src.Ui;

[ Activity(Label = "Home") ]
public class RegistrationActivity : Activity
{
    private EditText dateBirthDay;
    
    protected override void OnCreate(Bundle? savedInstanceState)
    {
        base.OnCreate(savedInstanceState);

        SetContentView(Resource.Layout.auth_registration_fragment);
        
        dateBirthDay = FindViewById<EditText>(Resource.Id.textInputLayoutBirthDate);
        
        dateBirthDay.Click += actionDateBirthDay;
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
}