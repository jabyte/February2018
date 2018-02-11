package ng.transnova.beans;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import ng.transnova.models.Staff;

@Stateless
public class StaffFacade extends AbstractFacade<Staff>
{
	@PersistenceContext(unitName = "TransnovaPU")
	private EntityManager em;

	@Override
	protected EntityManager getEntityManager()
	{
		return em;
	}

	public StaffFacade()
	{
		super(Staff.class);
	}
	
}
