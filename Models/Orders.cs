using BusinessOnline.DTOs;

namespace BusinessOnline.Models;

public record Order
{
    public long Id { get; set; }
    public long CustomerId { get; set; }
    public DateTimeOffset OrderedAt { get; set; }
    public decimal Price { get; set; }
    public string ModeOfPayment { get; set; }

    public OrderDTO asDto => new OrderDTO
    {
        Id = Id,
        CustomerId = CustomerId,
        OrderedAt = OrderedAt,
        Price = Price,
        ModeOfPayment = ModeOfPayment
    };

}
