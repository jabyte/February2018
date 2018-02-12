package ng.transnova.models;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

@Entity
@Table(name = "Customer")
@XmlRootElement
@NamedQueries({
	@NamedQuery(name = "Customer.findAll", query = "SELECT c FROM Customer c")
	, @NamedQuery(name = "Customer.findByCustomerId", query = "SELECT c FROM Customer c WHERE c.customerId = :customerId")
	, @NamedQuery(name = "Customer.findByPhoneNumber", query = "SELECT c FROM Customer c WHERE c.phoneNumber = :phoneNumber")
	, @NamedQuery(name = "Customer.findByPhoneNumberAndPassword", query = "SELECT c FROM Customer c WHERE c.phoneNumber = :phoneNumber AND c.password = :password")
	, @NamedQuery(name = "Customer.findByFirstName", query = "SELECT c FROM Customer c WHERE c.firstName = :firstName")
	, @NamedQuery(name = "Customer.findByLastName", query = "SELECT c FROM Customer c WHERE c.lastName = :lastName")
	, @NamedQuery(name = "Customer.findByMiddleName", query = "SELECT c FROM Customer c WHERE c.middleName = :middleName")})
public class Customer implements Serializable
{
	@Lob
	@Size(max = 65535)
	@Column(name = "password")
	private String password;
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Basic(optional = false)
	@Column(name = "customer_id")
	private Integer customerId;
	@Basic(optional = false)
	@NotNull
	@Size(min = 1, max = 14)
	@Column(name = "phone_number")
	private String phoneNumber;
	@Basic(optional = false)
	@NotNull
	@Size(min = 1, max = 15)
	@Column(name = "first_name")
	private String firstName;
	@Basic(optional = false)
	@NotNull
	@Size(min = 1, max = 15)
	@Column(name = "last_name")
	private String lastName;
	@Size(max = 15)
	@Column(name = "middle_name")
	private String middleName;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "customerId")
	private Collection<RedeemedCoupon> redeemedCouponCollection;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "customerId")
	private Collection<Ticket> ticketCollection;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "customerId")
	private Collection<Payment> paymentCollection;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "customerId")
	private Collection<Notification> notificationCollection;

	public Customer()
	{
	}

	public Customer(Integer customerId)
	{
		this.customerId = customerId;
	}

	public Customer(Integer customerId, String phoneNumber, String firstName, String lastName)
	{
		this.customerId = customerId;
		this.phoneNumber = phoneNumber;
		this.firstName = firstName;
		this.lastName = lastName;
	}

	public Integer getCustomerId()
	{
		return customerId;
	}

	public void setCustomerId(Integer customerId)
	{
		this.customerId = customerId;
	}

	public String getPhoneNumber()
	{
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber)
	{
		this.phoneNumber = phoneNumber;
	}

	public String getFirstName()
	{
		return firstName;
	}

	public void setFirstName(String firstName)
	{
		this.firstName = firstName;
	}

	public String getLastName()
	{
		return lastName;
	}

	public void setLastName(String lastName)
	{
		this.lastName = lastName;
	}

	public String getMiddleName()
	{
		return middleName;
	}

	public void setMiddleName(String middleName)
	{
		this.middleName = middleName;
	}

	@XmlTransient
	public Collection<RedeemedCoupon> getRedeemedCouponCollection()
	{
		return redeemedCouponCollection;
	}

	public void setRedeemedCouponCollection(Collection<RedeemedCoupon> redeemedCouponCollection)
	{
		this.redeemedCouponCollection = redeemedCouponCollection;
	}

	@XmlTransient
	public Collection<Ticket> getTicketCollection()
	{
		return ticketCollection;
	}

	public void setTicketCollection(Collection<Ticket> ticketCollection)
	{
		this.ticketCollection = ticketCollection;
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

	@XmlTransient
	public Collection<Notification> getNotificationCollection()
	{
		return notificationCollection;
	}

	public void setNotificationCollection(Collection<Notification> notificationCollection)
	{
		this.notificationCollection = notificationCollection;
	}

	@Override
	public int hashCode()
	{
		int hash = 0;
		hash += (customerId != null ? customerId.hashCode() : 0);
		return hash;
	}

	@Override
	public boolean equals(Object object)
	{
		// TODO: Warning - this method won't work in the case the id fields are not set
		if (!(object instanceof Customer)) {
			return false;
		}
		Customer other = (Customer) object;
		if ((this.customerId == null && other.customerId != null) || (this.customerId != null && !this.customerId.equals(other.customerId))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString()
	{
		return "ng.transnova.models.Customer[ customerId=" + customerId + " ]";
	}

	public String stringValue()
	{
		return customerId + "," + phoneNumber + "," + firstName + "," + lastName + "," + middleName + "," + redeemedCouponCollection + "," + ticketCollection + "," + paymentCollection + "," + notificationCollection;
	}

	public String getPassword()
	{
		return password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}
}
