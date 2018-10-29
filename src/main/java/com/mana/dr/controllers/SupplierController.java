package com.mana.dr.controllers;

import com.mana.dr.entities.Supplier;
import com.mana.dr.interfaces.SupplierInterface;
import com.mana.dr.services.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/supplier")
public class SupplierController {

    @Autowired
    SupplierInterface supplierService;

    @RequestMapping("/new.html")
    public String create(Model model)
    {
        model.addAttribute("supplier",new Supplier());
        return "supplier/createSupplier";
    }

    @RequestMapping("/created")
    public String created(Model model, Supplier supplier)
    {
        Supplier sup=supplierService.saveSupplier(supplier);
        List<Supplier> suppliers=supplierService.getAllSuppliers();
        model.addAttribute("suppliers", suppliers);
        model.addAttribute("show"," alert alert-dismissable alert-success text-center ");
        model.addAttribute("message","Supplier "+sup.getName()+" was saved successfully!!");
        return "supplier/viewSuppliers";
    }

    @RequestMapping("/")
    public String viewAllSuppliers(Model model)
    {
        List<Supplier> suppliers=supplierService.getAllSuppliers();
        model.addAttribute("suppliers", suppliers);
        return "supplier/viewSuppliers";
    }

    @RequestMapping("/view/{id}")
    public String view(Model model, @PathVariable Long id)
    {
        Supplier supplier=supplierService.getSupplierById(id);
        model.addAttribute("supplier",supplier);
        return "supplier/viewSupplier";
    }

    @RequestMapping("/edit/{id}")
    public String edit(Model model, @PathVariable Long id)
    {
        Supplier supplier=supplierService.getSupplierById(id);
        model.addAttribute("supplier",supplier);
        return "supplier/editSupplier";
    }

    @RequestMapping("/edited.html")
    public String edited(Model model, Supplier supplier)
    {
        Supplier sup= supplierService.saveSupplier(supplier);
        List<Supplier> suppliers=supplierService.getAllSuppliers();
        model.addAttribute("suppliers", suppliers);
        model.addAttribute("show"," alert alert-dismissable alert-success text-center ");
        model.addAttribute("message","Supplier "+sup.getName()+" was edited successfully!!");
        return "supplier/viewSuppliers";
    }
}
