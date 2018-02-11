package ng.transnova.beans;

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
	
}
