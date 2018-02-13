package ng.transnova.beans;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import ng.transnova.models.Ticket;

@Stateless
public class TicketFacade extends AbstractFacade<Ticket>
{
	@PersistenceContext(unitName = "TransnovaPU")
	private EntityManager em;

	@Override
	protected EntityManager getEntityManager()
	{
		return em;
	}

	public TicketFacade()
	{
		super(Ticket.class);
	}

	@Override
	public int count()
	{
		return super.count(); //To change body of generated methods, choose Tools | Templates.
	}

	@Override
	public List<Ticket> findRange(int[] range)
	{
		return super.findRange(range); //To change body of generated methods, choose Tools | Templates.
	}

	@Override
	public List<Ticket> findAll()
	{
		return super.findAll(); //To change body of generated methods, choose Tools | Templates.
	}

	@Override
	public Ticket find(Object id)
	{
		return super.find(id); //To change body of generated methods, choose Tools | Templates.
	}

	@Override
	public void remove(Ticket entity)
	{
		super.remove(entity); //To change body of generated methods, choose Tools | Templates.
	}

	@Override
	public void edit(Ticket entity)
	{
		super.edit(entity); //To change body of generated methods, choose Tools | Templates.
	}

	@Override
	public void create(Ticket entity)
	{
		super.create(entity); //To change body of generated methods, choose Tools | Templates.
	}

}
