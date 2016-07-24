package net.incuventure

class BasicTestResult {

    static constraints = {
//        basicTest
//        value
//        unit
//        date
//        member
    }

    BasicTest basicTest
    BigDecimal value
    String unit
    Date date
    Member member

    static mapping = {
        table "mace_basic_test_result"
        id generator:'native', params:[sequence:'mace_basic_test_result_seq']
    }
}
