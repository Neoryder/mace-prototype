package net.incuventure

import grails.gorm.DetachedCriteria
import groovy.transform.ToString
import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache=true, includeNames=true, includePackage=false)
class UserMember implements Serializable {

	private static final long serialVersionUID = 1

	User user
	Member member

    UserMember(User u, Member m) {
		this()
		user = u
		member = m
	}

	@Override
	boolean equals(other) {
		if (!(other instanceof UserMember)) {
			return false
		}

		other.user?.id == user?.id && other.member?.id == member?.id
	}

	@Override
	int hashCode() {
		def builder = new HashCodeBuilder()
		if (user) builder.append(user.id)
		if (member) builder.append(member.id)
		builder.toHashCode()
	}

	static UserMember get(long userId, long memberId) {
		criteriaFor(userId, memberId).get()
	}

	static boolean exists(long userId, long memberId) {
		criteriaFor(userId, memberId).count()
	}

	private static DetachedCriteria criteriaFor(long userId, long memberId) {
		UserMember.where {
			user == User.load(userId) &&
			member == Member.load(memberId)
		}
	}

	static UserMember create(User user, Member member, boolean flush = false) {
		def instance = new UserMember(user, member)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(User u, Member m, boolean flush = false) {
		if (u == null || m == null) return false

		int rowCount = UserMember.where { user == u && member == m }.deleteAll()

		if (flush) { UserMember.withSession { it.flush() } }

		rowCount
	}

	static void removeAll(User u, boolean flush = false) {
		if (u == null) return

		UserMember.where { user == u }.deleteAll()

		if (flush) { UserMember.withSession { it.flush() } }
	}

	static void removeAll(Member m, boolean flush = false) {
		if (m == null) return

		UserMember.where { member == m }.deleteAll()

		if (flush) { UserMember.withSession { it.flush() } }
	}

	static constraints = {
		member validator: { Member m, UserMember ur ->
			if (ur.user == null || ur.user.id == null) return
			boolean existing = false
			UserMember.withNewSession {
				existing = UserMember.exists(ur.user.id, m.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
        table "mace_user_member"
		id composite: ['user', 'member']
		version false
	}
}
