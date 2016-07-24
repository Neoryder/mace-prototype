package net.incuventure

class BasicTest {

    static constraints = {
        name nullable: false, blank: false
        description nullable:true, blank: true
        highValue nullable:true
        lowValue nullable:true
        unit nullable: false, blank: false
    }

    String name
    String description
    BigDecimal highValue
    BigDecimal lowValue
    String unit

    static mapping = {
        table "mace_basic_test"
        id generator:'native', params:[sequence:'mace_basic_test_seq']
    }
}
