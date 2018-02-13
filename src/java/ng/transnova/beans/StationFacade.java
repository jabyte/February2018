package ng.transnova.beans;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import ng.transnova.models.Station;

@Stateless
public class StationFacade extends AbstractFacade<Station>
{
	@PersistenceContext(unitName = "TransnovaPU")
	private EntityManager em;

	@Override
	protected EntityManager getEntityManager()
	{
		return em;
	}

	public StationFacade()
	{
		super(Station.class);
	}

	@Override
	public int count()
	{
		return super.count(); //To change body of generated methods, choose Tools | Templates.
	}

	@Override
	public List<Station> findRange(int[] range)
	{
		return super.findRange(range); //To change body of generated methods, choose Tools | Templates.
	}

	@Override
	public List<Station> findAll()
	{
		return super.findAll(); //To change body of generated methods, choose Tools | Templates.
	}

	@Override
	public Station find(Object id)
	{
		return super.find(id); //To change body of generated methods, choose Tools | Templates.
	}

	@Override
	public void remove(Station entity)
	{
		super.remove(entity); //To change body of generated methods, choose Tools | Templates.
	}

	@Override
	public void edit(Station entity)
	{
		super.edit(entity); //To change body of generated methods, choose Tools | Templates.
	}

	@Override
	public void create(Station entity)
	{
		super.create(entity); //To change body of generated methods, choose Tools | Templates.
	}

	public Station findStationByName(String station)
	{
		Query query = em.createNamedQuery("Station.findByStationName", Station.class);
		query.setParameter("stationName", station);
		return (Station) query.getSingleResult();
	}
}
