package ng.transnova.beans;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import ng.transnova.models.RedeemedCoupon;

@Stateless
public class RedeemedCouponFacade extends AbstractFacade<RedeemedCoupon>
{
	@PersistenceContext(unitName = "TransnovaPU")
	private EntityManager em;

	@Override
	protected EntityManager getEntityManager()
	{
		return em;
	}

	public RedeemedCouponFacade()
	{
		super(RedeemedCoupon.class);
	}
	
}
