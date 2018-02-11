package ng.transnova.beans;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import ng.transnova.models.Payment;

@Stateless
public class PaymentFacade extends AbstractFacade<Payment>
{
	@PersistenceContext(unitName = "TransnovaPU")
	private EntityManager em;

	@Override
	protected EntityManager getEntityManager()
	{
		return em;
	}

	public PaymentFacade()
	{
		super(Payment.class);
	}
	
}
