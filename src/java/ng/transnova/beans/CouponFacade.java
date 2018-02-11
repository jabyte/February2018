package ng.transnova.beans;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import ng.transnova.models.Coupon;

@Stateless
public class CouponFacade extends AbstractFacade<Coupon>
{
	@PersistenceContext(unitName = "TransnovaPU")
	private EntityManager em;

	@Override
	protected EntityManager getEntityManager()
	{
		return em;
	}

	public CouponFacade()
	{
		super(Coupon.class);
	}
	
}
