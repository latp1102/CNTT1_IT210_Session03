package org.example.session03.controller;

import org.example.session03.model.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
@Controller
public class EmployeeController {
    @GetMapping("/employee-list")
    public String listEmployees(Model model) {
        List<Employee> employees = List.of(
                new Employee(1, "Tran Van A", "CNTT", 10000),
                new Employee(2, "Tran Van B", "ATTT", 12000),
                new Employee(3, "Tran Van C", "DTVT", 11000)
        );
        model.addAttribute("employee", employees);
        return "employee-list";
    }
}
