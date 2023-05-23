package com.spl.springcars.user;

import com.spl.springcars.product.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    private final ProductService productService;

    @GetMapping("/login")
    public String login(Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "login";
    }

    @GetMapping("/registration")
    public String registration(Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "registration";
    }

    @GetMapping(value={"/home", "/"})
    public String home(Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        model.addAttribute("best", productService.getBestProducts());
        return "home";
    }

    @GetMapping("/account")
    public String account(Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        model.addAttribute("products", productService.getUserProducts(principal.getName()));
        return "account";
    }

    @GetMapping("/shop")
    public String shop(Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        model.addAttribute("products", productService.getAllProducts());
        return "shop";
    }

    @PostMapping("/registration")
    public String registerUser(User user, Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        if (userService.createUser(user)) return "redirect:/login";
        else {
            model.addAttribute("error", "User with this email is already exist!");
            return "registration";
        }
    }
}
