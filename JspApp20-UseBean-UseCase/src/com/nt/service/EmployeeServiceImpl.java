package com.nt.service;

import com.nt.dto.EmployeeDTO;

public class EmployeeServiceImpl implements EmployeeService {

	@Override
	public void generatePaySlip(EmployeeDTO dto) {
		float gSal=0.0f,netSal=0.0f;
		//calculate GrossSalary,netSalary;
		gSal=dto.getBasicSalary()+( dto.getBasicSalary()*0.4f);
		netSal=gSal-(dto.getBasicSalary()*0.2f);
		//set results to  DTO class object
		dto.setGrossSalary(gSal);
		dto.setNetSalary(netSal);
	}

}
