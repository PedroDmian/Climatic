using Newtonsoft.Json;

namespace Climatic.Core.Models;

public class RequestResponse
{
    public int Estatus { get; set; }
    public string Mensaje { get; set; }
    public string MensajeTecnico { get; set; }
    public string Token { get; set; }
    
    [JsonConverter(typeof(DataConverter))]
    public object Datos { get; set; }
}