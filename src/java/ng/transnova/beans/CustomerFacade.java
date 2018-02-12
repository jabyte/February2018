package ng.transnova.beans;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import ng.transnova.models.Customer;

@Stateless
public class CustomerFacade extends AbstractFacade<Customer>
{
	@PersistenceContext(unitName = "TransnovaPU")
	private EntityManager em;

	@Override
	protected EntityManager getEntityManager()
	{
		return em;
	}

	public CustomerFacade()
	{
		super(Customer.class);
	}

	@Override
	public int count()
	{
		return super.count(); //To change body of generated methods, choose Tools | Templates.
	}

	@Override
	public List<Customer> findRange(int[] range)
	{
		return super.findRange(range); //To change body of generated methods, choose Tools | Templates.
	}

	@Override
	public List<Customer> findAll()
	{
		return super.findAll(); //To change body of generated methods, choose Tools | Templates.
	}

	@Override
	public Customer find(Object id)
	{
		return super.find(id); //To change body of generated methods, choose Tools | Templates.
	}

	@Override
	public void remove(Customer entity)
	{
		super.remove(entity); //To change body of generated methods, choose Tools | Templates.
	}

	@Override
	public void edit(Customer entity)
	{
		super.edit(entity); //To change body of generated methods, choose Tools | Templates.
	}

	@Override
	public void create(Customer entity)
	{
		super.create(entity); //To change body of generated methods, choose Tools | Templates.
	}

	public Customer find(String username, String password)
	{
		return (Customer) em.createNativeQuery("Customer.findByPhoneNumberAndPassword", Customer.class).getResultList();
	}
}
