package com.hcl.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

import org.hibernate.annotations.Target;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.hcl.dao.TaskRepository;
import com.hcl.dao.UserRepository;

import com.hcl.model.Task;
import com.hcl.model.User;

@RestController
public class UserController {

	@Autowired
	private UserRepository repo;
	
	@Autowired
	private TaskRepository taskRepo;
	private User currentSessionUser = null;

	@GetMapping("/register")
	public ModelAndView getRgis() {

		User f = new User();
		return new ModelAndView("register", "regis", f);
	}

	@PostMapping("/register")
	public RedirectView postRegis(User user) {
		repo.save(user);

		return new RedirectView("login");
	}

	@GetMapping("/task")
	public ModelAndView getTask() {
		Task task = new Task();
		return new ModelAndView("task", "task", task);
	}

	@PostMapping("/task")
	public ModelAndView postTask(Task task) {
		List<Task> list = new ArrayList<>();
		if (currentSessionUser != null) {
			currentSessionUser.getListTask().add(task);
			repo.save(currentSessionUser);
			list = currentSessionUser.getListTask();
		} else {
			return null;
		}

		return new ModelAndView("result", "result", list);

	}

	@GetMapping("/login")
	public ModelAndView getLogin() {
		User f = new User();
		return new ModelAndView("login", "log", f);
	}

	@PostMapping("/login")
	public ModelAndView postLogin(ModelMap model, User user) {

		List<User> list = (List<User>) repo.findAll();
		AtomicBoolean userExists = new AtomicBoolean(false);

		list.stream().filter(x -> x.getUsername().equals(user.getUsername()) && x.getPassword().equals(user.getPassword()))
				.findFirst().ifPresent(x -> {
					userExists.set(true);
					currentSessionUser = x;
				});

		if (!(userExists.get())) {

			model.put("errorMessage", "Invalid credentails. Try again.");

			return new ModelAndView("login", "log", user);

		}
		return new ModelAndView("redirect:/list");

	}

	@GetMapping("/list")
	public ModelAndView listOfTasks() {
		List<Task> list = new ArrayList<>();

		if (currentSessionUser != null) {
			list = currentSessionUser.getListTask();
		}
		return new ModelAndView("result", "result", list);
	}
	
	@GetMapping("/edit-task")
	public ModelAndView getupdate(@RequestParam long id) {
		Task task= taskRepo.findById(id).get();
		return new ModelAndView("editview", "edit", task);
	}
	
	@PostMapping("/edit-task")
	public ModelAndView updateEmp(Task task, User user) {
		
		taskRepo.save(task);
		
		return new ModelAndView("redirect:/list");
	}
	
	
	@GetMapping("/dele-task")
	public ModelAndView getDelete(@RequestParam long id) {
		Task task = taskRepo.findById(id).get();
		return new ModelAndView("deleteview","delete", task);
	}
	
	@PostMapping("/dele-task")
	public ModelAndView deleEmp(Task task) {
		taskRepo.delete(task);;
		return new ModelAndView("redirect:/list");
	}
	
	
}
