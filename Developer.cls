// Abstract class for common employee properties and methods
public abstract class Employee {
    protected String employeeId;
    protected String name;
    protected Double salary;

    public Employee(String employeeId, String name, Double salary) {
        this.employeeId = employeeId;
        this.name = name;
        this.salary = salary;
    }

    // Abstract method to be implemented by subclasses
    public abstract void displayDetails();

    // Getter and setter methods for employeeId
    public String getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId;
    }

    // Getter and setter methods for name
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    // Getter and setter methods for salary
    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }
}

// Custom interface for a special behavior applicable to all employee types
public interface BonusEligible {
    void calculateBonus();
}

// Salesperson class that extends Employee and implements BonusEligible
public class Salesperson extends Employee implements BonusEligible {
    private Double salesTarget;

    public Salesperson(String employeeId, String name, Double salary, Double salesTarget) {
        super(employeeId, name, salary);
        this.salesTarget = salesTarget;
    }

    // Implementation of abstract method from Employee class
    public void displayDetails() {
        System.debug('Employee ID: ' + employeeId);
        System.debug('Name: ' + name);
        System.debug('Salary: $' + salary);
        System.debug('Sales Target: $' + salesTarget);
    }

    // Implementation of method from BonusEligible interface
    public void calculateBonus() {
        Double bonusPercentage = 0.05; // 5% bonus for meeting sales target
        Double bonusAmount = salesTarget * bonusPercentage;
        System.debug('Bonus Amount: $' + bonusAmount);
    }

    // Getter and setter methods for salesTarget
    public Double getSalesTarget() {
        return salesTarget;
    }

    public void setSalesTarget(Double salesTarget) {
        this.salesTarget = salesTarget;
    }
}

// Manager class that extends Employee and implements BonusEligible
public class Manager extends Employee implements BonusEligible {
    private String department;

    public Manager(String employeeId, String name, Double salary, String department) {
        super(employeeId, name, salary);
        this.department = department;
    }

    // Implementation of abstract method from Employee class
    public void displayDetails() {
        System.debug('Employee ID: ' + employeeId);
        System.debug('Name: ' + name);
        System.debug('Salary: $' + salary);
        System.debug('Department: ' + department);
    }

    // Implementation of method from BonusEligible interface
    public void calculateBonus() {
        Double bonusPercentage = 0.1; // 10% bonus for managers
        Double bonusAmount = salary * bonusPercentage;
        System.debug('Bonus Amount: $' + bonusAmount);
    }

    // Getter and setter methods for department
    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }
}

// Developer class that extends Employee and implements BonusEligible
public class Developer extends Employee implements BonusEligible {
    private String programmingLanguage;

    public Developer(String employeeId, String name, Double salary, String programmingLanguage) {
        super(employeeId, name, salary);
        this.programmingLanguage = programmingLanguage;
    }

    // Implementation of abstract method from Employee class
    public void displayDetails() {
        System.debug('Employee ID: ' + employeeId);
        System.debug('Name: ' + name);
        System.debug('Salary: $' + salary);
        System.debug('Programming Language: ' + programmingLanguage);
    }

    // Implementation of method from BonusEligible interface
    public void calculateBonus() {
        Double bonusPercentage = 0.08; // 8% bonus for developers
        Double bonusAmount = salary * bonusPercentage;
        System.debug('Bonus Amount: $' + bonusAmount);
    }

    // Getter and setter methods for programmingLanguage
    public String getProgrammingLanguage() {
        return programmingLanguage;
    }

    public void setProgrammingLanguage(String programmingLanguage) {
        this.programmingLanguage = programmingLanguage;
    }
}
