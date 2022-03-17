using System.Text.Json.Serialization;

namespace BusinessOnline.DTOs;

public record CustomerDTO
{
    [JsonPropertyName("id")]
    public long Id { get; set; }

    [JsonPropertyName("name")]
    public string Name { get; set; }

    [JsonPropertyName("password")]
    public string Password { get; set; }

    [JsonPropertyName("date_of_birth")]
    public DateTimeOffset DateOfBirth { get; set; }

    [JsonPropertyName("email")]
    public string Email { get; set; }

    [JsonPropertyName("mobile")]
    public long Mobile { get; set; }
    [JsonPropertyName("address")]
    public string Address { get; set; }
    [JsonPropertyName("landmark")]
    public string Landmark { get; set; }
    [JsonPropertyName("altermobile")]
    public long Altermobile { get; set; }

    [JsonPropertyName("orders")]
    public List<OrderDTO> Orders { get; set; }


}
public record CustomerCreateDTO
{

    [JsonPropertyName("name")]
    public string Name { get; set; }

    [JsonPropertyName("password")]
    public string Password { get; set; }

    [JsonPropertyName("date_of_birth")]
    public DateTime DateOfBirth { get; set; }

    [JsonPropertyName("email")]
    public string Email { get; set; }

    [JsonPropertyName("mobile")]
    public long Mobile { get; set; }
    [JsonPropertyName("address")]
    public string Address { get; set; }
    [JsonPropertyName("landmark")]
    public string Landmark { get; set; }
    [JsonPropertyName("altermobile")]
    public long Altermobile { get; set; }
}
public record CustomerUpdateDTO
{
    [JsonPropertyName("password")]
    public string Password { get; set; }
    [JsonPropertyName("email")]
    public string Email { get; set; }
    [JsonPropertyName("address")]
    public string Address { get; set; }
    [JsonPropertyName("landmark")]
    public string Landmark { get; set; }
    [JsonPropertyName("altermobile")]
    public long Altermobile { get; set; }

}