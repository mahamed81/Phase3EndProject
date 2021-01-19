package com.hcl.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.ManyToAny;

@Entity
@Table(name = "tasks")
public class Task {
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private long id;
		private String taskName;
		private String startDate;
		private String endDate;
		private String descrip;
		private String email;
		private String severity;
		@ManyToOne
		@JoinColumn
		private User user;
	
		public Task() {
	}
		public Task(String taskName, String startDate, String endDate, String descrip, String email, String severity) {
			super();
			this.taskName = taskName;
			this.startDate = startDate;
			this.endDate = endDate;
			this.descrip = descrip;
			this.email = email;
			this.severity = severity;
		}
		
		public Task(long id,String taskName, String startDate, String endDate, String descrip, String email, String severity) {
			super();
			this.taskName = taskName;
			this.startDate = startDate;
			this.endDate = endDate;
			this.descrip = descrip;
			this.email = email;
			this.severity = severity;
			this.id=id;
		}
		
		public long getId() {
			return id;
		}

		public void setId(long id) {
			this.id = id;
		}

		public String getTaskName() {
			return taskName;
		}

		public void setTaskName(String taskName) {
			this.taskName = taskName;
		}

		public String getStartDate() {
			return startDate;
		}

		public void setStartDate(String startDate) {
			this.startDate = startDate;
		}

		public String getEndDate() {
			return endDate;
		}

		public void setEndDate(String endDate) {
			this.endDate = endDate;
		}

		public String getDescrip() {
			return descrip;
		}

		public void setDescrip(String descrip) {
			this.descrip = descrip;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getSeverity() {
			return severity;
		}

		public void setSeverity(String severity) {
			this.severity = severity;
		}
		@Override
		public String toString() {
			return "Task [id=" + id + ", taskName=" + taskName + ", startDate=" + startDate + ", endDate=" + endDate
					+ ", descrip=" + descrip + ", email=" + email + ", severity=" + severity + "]";
		}


		
}
