package ng.transnova.beans;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import ng.transnova.models.Administrator;

@Stateless
public class AdministratorFacade extends AbstractFacade<Administrator>
{
	@PersistenceContext(unitName = "TransnovaPU")
	private EntityManager em;

	@Override
	protected EntityManager getEntityManager()
	{
		return em;
	}

	public AdministratorFacade()
	{
		super(Administrator.class);
	}
	
}
