package edu.ilstu.biomutation.controllers;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.biojava.nbio.core.exceptions.CompoundNotFoundException;
import org.biojava.nbio.core.sequence.DNASequence;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.ilstu.biomutation.analysis.SampleAnalysis;

@Controller
public class HomeController
{

	private static Log logger = LogFactory.getLog(HomeController.class);

	@Autowired
	SampleAnalysis analyze;

	@RequestMapping(value = "/")
	public String welcome(Model model)
	{
		logger.info("welcome() called");
		return "index";
	}

	@RequestMapping(value = "/submit_sequence", method = RequestMethod.POST)
	public String sequence(@RequestParam String sequence, Model model)
	{
		logger.info("sequence() called");
		DNASequence dnaSequence = null;
		try
		{
			dnaSequence = new DNASequence(sequence);
		} catch (CompoundNotFoundException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "index";
		}
		model.addAttribute("dnaSequence", dnaSequence.toString().toUpperCase());
		return "index";
	}
	
	@RequestMapping(value = "/submit_sequence", method = RequestMethod.GET)
	public String sequence(Model model)
	{
		logger.info("sequence() called");
		model.addAttribute("dnaSequence", "Do not enter through URL");
		return "index";
	}
}
