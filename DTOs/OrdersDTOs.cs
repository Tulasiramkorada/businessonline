using System.Text.Json.Serialization;

namespace BusinessOnline.DTOs;

public record OrderDTO
{
    [JsonPropertyName("id")]
    public long Id { get; set; }

    [JsonPropertyName("customer_id")]

    public long CustomerId { get; set; }

    [JsonPropertyName("ordered_at")]

    public DateTimeOffset OrderedAt { get; set; }

    [JsonPropertyName("price")]

    public decimal Price { get; set; }

    [JsonPropertyName("mode_of_payment")]

    public string ModeOfPayment { get; set; }

    [JsonPropertyName("products")]

    public List<ProductDTO> Product { get; set; }
}
public record OrderCreateDTO
{
    [JsonPropertyName("customer_id")]

    public long CustomerId { get; set; }

    [JsonPropertyName("ordered_at")]

    public DateTimeOffset OrderedAt { get; set; }

    [JsonPropertyName("price")]

    public decimal Price { get; set; }

    [JsonPropertyName("mode_of_payment")]

    public string ModeOfPayment { get; set; }

    [JsonPropertyName("product")]

    public List<ProductDTO> Product { get; set; }


}