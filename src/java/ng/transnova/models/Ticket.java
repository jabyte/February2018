package ng.transnova.models;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

@Entity
@Table(name = "Ticket")
@XmlRootElement
@NamedQueries({
	@NamedQuery(name = "Ticket.findAll", query = "SELECT t FROM Ticket t")
	, @NamedQuery(name = "Ticket.findByTicketId", query = "SELECT t FROM Ticket t WHERE t.ticketId = :ticketId")
	, @NamedQuery(name = "Ticket.findByTicketNumber", query = "SELECT t FROM Ticket t WHERE t.ticketNumber = :ticketNumber")
	, @NamedQuery(name = "Ticket.findByDateBooked", query = "SELECT t FROM Ticket t WHERE t.dateBooked = :dateBooked")
	, @NamedQuery(name = "Ticket.findByOnewayTicket", query = "SELECT t FROM Ticket t WHERE t.onewayTicket = :onewayTicket")
	, @NamedQuery(name = "Ticket.findByDeparcherTime", query = "SELECT t FROM Ticket t WHERE t.deparcherTime = :deparcherTime")})
public class Ticket implements Serializable
{
	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ticket_id")
	private Integer ticketId;
	@Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "ticket_number")
	private String ticketNumber;
	@Basic(optional = false)
    @NotNull
    @Column(name = "date_booked")
    @Temporal(TemporalType.TIMESTAMP)
	private Date dateBooked;
	@Basic(optional = false)
    @NotNull
    @Column(name = "oneway_ticket")
	private boolean onewayTicket;
	@Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "deparcher_time")
	private String deparcherTime;
	@JoinColumn(name = "customer_id", referencedColumnName = "customer_id")
    @ManyToOne(optional = false)
	private Customer customerId;
	@JoinColumn(name = "destination", referencedColumnName = "station_id")
    @ManyToOne(optional = false)
	private Station destination;
	@JoinColumn(name = "payment_id", referencedColumnName = "payment_id")
    @ManyToOne(optional = false)
	private Payment paymentId;
	@JoinColumn(name = "source", referencedColumnName = "station_id")
    @ManyToOne(optional = false)
	private Station source;
	@JoinColumn(name = "staff_id", referencedColumnName = "staff_id")
    @ManyToOne(optional = false)
	private Staff staffId;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "ticketId")
	private Collection<Payment> paymentCollection;

	public Ticket()
	{
	}

	public Ticket(Integer ticketId)
	{
		this.ticketId = ticketId;
	}

	public Ticket(Integer ticketId, String ticketNumber, Date dateBooked, boolean onewayTicket, String deparcherTime)
	{
		this.ticketId = ticketId;
		this.ticketNumber = ticketNumber;
		this.dateBooked = dateBooked;
		this.onewayTicket = onewayTicket;
		this.deparcherTime = deparcherTime;
	}

	public Integer getTicketId()
	{
		return ticketId;
	}

	public void setTicketId(Integer ticketId)
	{
		this.ticketId = ticketId;
	}

	public String getTicketNumber()
	{
		return ticketNumber;
	}

	public void setTicketNumber(String ticketNumber)
	{
		this.ticketNumber = ticketNumber;
	}

	public Date getDateBooked()
	{
		return dateBooked;
	}

	public void setDateBooked(Date dateBooked)
	{
		this.dateBooked = dateBooked;
	}

	public boolean getOnewayTicket()
	{
		return onewayTicket;
	}

	public void setOnewayTicket(boolean onewayTicket)
	{
		this.onewayTicket = onewayTicket;
	}

	public String getDeparcherTime()
	{
		return deparcherTime;
	}

	public void setDeparcherTime(String deparcherTime)
	{
		this.deparcherTime = deparcherTime;
	}

	public Customer getCustomerId()
	{
		return customerId;
	}

	public void setCustomerId(Customer customerId)
	{
		this.customerId = customerId;
	}

	public Station getDestination()
	{
		return destination;
	}

	public void setDestination(Station destination)
	{
		this.destination = destination;
	}

	public Payment getPaymentId()
	{
		return paymentId;
	}

	public void setPaymentId(Payment paymentId)
	{
		this.paymentId = paymentId;
	}

	public Station getSource()
	{
		return source;
	}

	public void setSource(Station source)
	{
		this.source = source;
	}

	public Staff getStaffId()
	{
		return staffId;
	}

	public void setStaffId(Staff staffId)
	{
		this.staffId = staffId;
	}

	@XmlTransient
	public Collection<Payment> getPaymentCollection()
	{
		return paymentCollection;
	}

	public void setPaymentCollection(Collection<Payment> paymentCollection)
	{
		this.paymentCollection = paymentCollection;
	}

	@Override
	public int hashCode()
	{
		int hash = 0;
		hash += (ticketId != null ? ticketId.hashCode() : 0);
		return hash;
	}

	@Override
	public boolean equals(Object object)
	{
		// TODO: Warning - this method won't work in the case the id fields are not set
		if (!(object instanceof Ticket)) {
			return false;
		}
		Ticket other = (Ticket) object;
		if ((this.ticketId == null && other.ticketId != null) || (this.ticketId != null && !this.ticketId.equals(other.ticketId))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString()
	{
		return "ng.transnova.models.Ticket[ ticketId=" + ticketId + " ]";
	}
	
}
