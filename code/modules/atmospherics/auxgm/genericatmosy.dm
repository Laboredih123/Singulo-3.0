/datum/proc/solve_moles(gas, pressure, temperature, volume)
	///Solve for moles

/datum/gas_mixture/proc/check_then_transfer_to_ratio(datum/gas_mixture/target, ratio)
	///return false if pressure is valid. else true
	var/copiedsrc = src.copy()
	var/copiedair = target.copy()
	src.transfer_ratio_to(target, ratio)
	if ((target.return_pressure() < 0) || !isnum_safe(target.return_pressure()))
		src.copy_from(copiedsrc)
		target.copy_from(copiedair)
		return FALSE
	return TRUE

/datum/gas_mixture/proc/check_then_transfer_to(datum/gas_mixture/target, amount)
	///return false if pressure is valid. else true
	var/copiedsrc = src.copy()
	var/copiedair = target.copy()
	src.transfer_to(target, amount)
	if ((target.return_pressure() < 0) || !isnum_safe(target.return_pressure()))
		src.copy_from(copiedsrc)
		target.copy_from(copiedair)
		return FALSE
	return TRUE
