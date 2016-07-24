package net.incuventure

import grails.gorm.DetachedCriteria
import groovy.transform.ToString
import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache=true, includeNames=true, includePackage=false)
class UserDoctor implements Serializable {

	private static final long serialVersionUID = 1

	User user
	Doctor doctor

    UserDoctor(User u, Doctor d) {
		this()
		user = u
        doctor = d
	}

	@Override
	boolean equals(other) {
		if (!(other instanceof UserDoctor)) {
			return false
		}

		other.user?.id == user?.id && other.doctor?.id == doctor?.id
	}

	@Override
	int hashCode() {
		def builder = new HashCodeBuilder()
		if (user) builder.append(user.id)
		if (doctor) builder.append(doctor.id)
		builder.toHashCode()
	}

	static UserDoctor get(long userId, long doctorId) {
		criteriaFor(userId, doctorId).get()
	}

	static boolean exists(long userId, long doctorId) {
		criteriaFor(userId, doctorId).count()
	}

	private static DetachedCriteria criteriaFor(long userId, long doctorId) {
		UserDoctor.where {
			user == User.load(userId) &&
            doctor == Doctor.load(doctorId)
		}
	}

	static UserDoctor create(User user, Doctor doctor, boolean flush = false) {
		def instance = new UserDoctor(user, doctor)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(User u, Doctor d, boolean flush = false) {
		if (u == null || d == null) return false

		int rowCount = UserDoctor.where { user == u && doctor == d }.deleteAll()

		if (flush) { UserDoctor.withSession { it.flush() } }

		rowCount
	}

	static void removeAll(User u, boolean flush = false) {
		if (u == null) return

		UserDoctor.where { user == u }.deleteAll()

		if (flush) { UserDoctor.withSession { it.flush() } }
	}

	static void removeAll(Doctor d, boolean flush = false) {
		if (d == null) return

		UserDoctor.where { doctor == d }.deleteAll()

		if (flush) { UserDoctor.withSession { it.flush() } }
	}

	static constraints = {
        doctor validator: { Doctor d, UserDoctor ur ->
			if (ur.user == null || ur.user.id == null) return
			boolean existing = false
			UserDoctor.withNewSession {
				existing = UserDoctor.exists(ur.user.id, d.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
        table "mace_user_doctor"
		id composite: ['user', 'doctor']
		version false
	}

}
