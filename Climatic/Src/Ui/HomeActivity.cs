namespace Climatic.Src.Ui;

[ Activity(Label = "Home") ]
public class HomeActivity : Activity
{
    protected override void OnCreate(Bundle? savedInstanceState)
    {
        base.OnCreate(savedInstanceState);

        SetContentView(Resource.Layout.home_fragment);
    }
}