package ng.transnova.beans;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import ng.transnova.models.Notification;

@Stateless
public class NotificationFacade extends AbstractFacade<Notification>
{
	@PersistenceContext(unitName = "TransnovaPU")
	private EntityManager em;

	@Override
	protected EntityManager getEntityManager()
	{
		return em;
	}

	public NotificationFacade()
	{
		super(Notification.class);
	}
	
}
