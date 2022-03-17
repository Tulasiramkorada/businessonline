using BusinessOnline.DTOs;

namespace BusinessOnline.Models;

public record Customer
{
    public long Id { get; set; }
    public string Name { get; set; }
    public string Password { get; set; }
    public DateTime DateOfBirth { get; set; }
    public string Email { get; set; }
    public long Mobile { get; set; }
    public string Address { get; set; }
    public string Landmark { get; set; }
    public long Altermobile { get; set; }

    public CustomerDTO asDto => new CustomerDTO
    {
        Id = Id,
        Name = Name,
        Password = Password,
        DateOfBirth = DateOfBirth,
        Email = Email,
        Mobile = Mobile,
        Address = Address,
        Landmark = Landmark,
        Altermobile = Altermobile,
    };
}