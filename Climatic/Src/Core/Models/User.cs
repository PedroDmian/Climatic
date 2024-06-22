using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Json;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;

public class User
{
    private static HttpClient _httpClient;
    private static string _apiBaseUrl;
    private static string _apiKey;

    public int Id { get; set; }
    public string Password { get; set; }
    public string Email { get; set; }
    public DateTime? Birthdate { get; set; }
    public string Activity { get; set; }
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }
    
    public static void Initialize(IConfiguration configuration)
    {
        _apiBaseUrl = configuration["ApiSettings:BaseUrl"];
        _apiKey = configuration["ApiSettings:ApiKey"];
        
        _httpClient = new HttpClient { BaseAddress = new Uri(_apiBaseUrl) };
        _httpClient.DefaultRequestHeaders.Add("Authorization", $"Bearer {_apiKey}");
    }

    public static async Task<User> CreateUser(User user)
    {
        var response = await _httpClient.PostAsJsonAsync("api/users", user);
        response.EnsureSuccessStatusCode();
        
        return await response.Content.ReadFromJsonAsync<User>();
    }

    public static async Task<User> GetUserById(int id)
    {
        var response = await _httpClient.GetAsync($"api/users/{id}");
        response.EnsureSuccessStatusCode();
        
        return await response.Content.ReadFromJsonAsync<User>();
    }

    public static async Task<List<User>> GetAllUsers()
    {
        var response = await _httpClient.GetAsync("api/users");
        response.EnsureSuccessStatusCode();
        
        return await response.Content.ReadFromJsonAsync<List<User>>();
    }

    public static async Task<User> UpdateUser(int id, User user)
    {
        var response = await _httpClient.PutAsJsonAsync($"api/users/{id}", user);
        response.EnsureSuccessStatusCode();
        
        return await response.Content.ReadFromJsonAsync<User>();
    }

    public static async Task DeleteUser(int id)
    {
        var response = await _httpClient.DeleteAsync($"api/users/{id}");
        response.EnsureSuccessStatusCode();
    }
}