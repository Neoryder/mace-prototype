package net.incuventure

class Role implements Serializable {

	private static final long serialVersionUID = 1

	String authority

	Role(String authority) {
		this()
		this.authority = authority
	}

	@Override
	int hashCode() {
		authority?.hashCode() ?: 0
	}

	@Override
	boolean equals(other) {
		is(other) || (other instanceof Role && other.authority == authority)
	}

	@Override
	String toString() {
		authority
	}

	static constraints = {
		authority blank: false, unique: true
	}


    static mapping = {
        cache true
        table "mace_role"
        id generator:'native', params:[sequence:'mace_role_seq']
    }
}
