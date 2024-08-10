using Newtonsoft.Json;

namespace Climatic.Core.Models;

public class Datos
{
    public string temperature { get; set; }
    public string min { get; set; }
    public string max { get; set; }
    public string airQuality { get; set; }
    public string wind { get; set; }
    public string humidity { get; set; }
    public string precipitation_pro { get; set; }
}

public class RequestResponse
{
    public int Estatus { get; set; }
    public string Mensaje { get; set; }
    public string MensajeTecnico { get; set; }
    public string Token { get; set; }
    
    public Datos Datos { get; set; }
}

public class RequestResponseNEW
{
    public int Estatus { get; set; }
    public string Mensaje { get; set; }
    public string MensajeTecnico { get; set; }
    public string Token { get; set; }
}