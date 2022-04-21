package airlines.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="passenger_details")
@Table(name="passenger_details")

public class Passenger_details {
	
		@GeneratedValue(strategy = GenerationType.AUTO)
		@Id 
		@Column(name="booking_Id")
		private int booking_Id;
		
		@Column(name="passenger_type")
		private int passenger_type;
		
		
		@Column(name="passenger_name")
		private String passenger_name;
		
		@Column(name="date_of_birth")
		private String date_of_birth;
		
		@Column(name="gender")
		private int gender;
		
		@Column(name="mobile_no")
		private String mobile_no;
		
		@Column(name="email_id")
		private String email_id;

		/**
		 * @return the booking_Id
		 */
		public int getBooking_Id() {
			return booking_Id;
		}

		/**
		 * @param booking_Id the booking_Id to set
		 */
		public void setBooking_Id(int booking_Id) {
			this.booking_Id = booking_Id;
		}

		/**
		 * @return the passenger_name
		 */
		public String getPassenger_name() {
			return passenger_name;
		}

		/**
		 * @param passenger_name the passenger_name to set
		 */
		public void setPassenger_name(String passenger_name) {
			this.passenger_name = passenger_name;
		}

		/**
		 * @return the date_of_birth
		 */
		public String getDate_of_birth() {
			
			return date_of_birth;
		}

		/**
		 * @param date_of_birth the date_of_birth to set
		 */
		public void setDate_of_birth(String date_of_birth) {
			this.date_of_birth = date_of_birth;
			System.out.println("DOB :"+date_of_birth);
		}

		/**
		 * @return the gender
		 */
		public int getGender() {
			return gender;
		}

		/**
		 * @param gender the gender to set
		 */
		public void setGender(int gender) {
			this.gender = gender;
		}

		/**
		 * @return the mobile_no
		 */
		public String getMobile_no() {
			return mobile_no;
		}

		/**
		 * @param mobile_no the mobile_no to set
		 */
		public void setMobile_no(String mobile_no) {
			this.mobile_no = mobile_no;
		}

		/**
		 * @return the email_id
		 */
		public String getEmail_id() {
			return email_id;
		}

		/**
		 * @param email_id the email_id to set
		 */
		public void setEmail_id(String email_id) {
			this.email_id = email_id;
		}

		/**
		 * @return the passenger_type
		 */
		public int getPassenger_type() {
			return passenger_type;
		}

		/**
		 * @param passenger_type the passenger_type to set
		 */
		public void setPassenger_type(int passenger_type) {
			this.passenger_type = passenger_type;
		}

		
		
	}


