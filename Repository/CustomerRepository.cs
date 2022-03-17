
using Dapper;
using BusinessOnline.Models;
using BusinessOnline.Utilities;


namespace BusinessOnline.Repositories;

public interface ICustomerRepository
{
    Task<List<Customer>> GetList();
    Task<Customer> GetById(long Id);
    Task<Customer> Create(Customer Data);
    Task<bool> Update(Customer Data);
}

public class CustomerRepository : BaseRepository, ICustomerRepository
{
    public CustomerRepository(IConfiguration configuration) : base(configuration)
    {

    }

    public async Task<Customer> Create(Customer Data)
    {
        var query = $@"INSERT INTO {TableNames.customer}(name, password, date_of_birth, email, mobile, address, landmark, altermobile)
        VALUES(@Name, @Password, @DateOfBirth, @Email, @Mobile, @Address, @Landmark, @Altermobile) RETURNING *";

        using (var con = NewConnection)
            return await con.QuerySingleOrDefaultAsync<Customer>(query, Data);

    }

    public async Task<Customer> GetById(long Id)
    {
        var query = $@"SELECT * FROM {TableNames.customer} WHERE id = @Id";
        using (var con = NewConnection)
            return (await con.QuerySingleOrDefaultAsync<Customer>(query, new { Id }));
    }

    public async Task<List<Customer>> GetList()
    {
        var query = $@"SELECT * FROM {TableNames.customer} ORDER BY id";
        using (var con = NewConnection)
            return (await con.QueryAsync<Customer>(query)).AsList();
    }

    public async Task<bool> Update(Customer Data)
    {
        var query = $@"UPDATE ""{TableNames.customer}"" SET email =@Email,address =@Address,landmark =@Landmark WHERE id=@Id;";
        using (var con = NewConnection)
            return (await con.ExecuteAsync(query, Data)) == 1;

    }
}