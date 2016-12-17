func smartAssigning(names: [String], statuses: [Bool], projects: [Int], tasks: [Int]) -> String {
	
	let names = [String]()
	let statuses: [Bool] = [false]
	let projects: [Int] = [0]
	let tasks: [Int] = [0]
	var lowIndex: Int = -1
	var availableName = String()
	
	for index in 0 ..< names.count {     //for every name
		if statuses[index] == false {    //not on vacation
			if lowIndex < 0 {
				lowIndex = index       //set a default with the first person not on vacation
			}
			else if tasks[index] < tasks[lowIndex] {
				lowIndex = index
			}
			else if (tasks[index] == tasks[lowIndex]) && (projects[index] < projects[lowIndex]) {
				lowIndex = index //decrement lowIndex per projects
			}
		}
	}
	availableName = names[lowIndex]
	return availableName
}

smartAssigning(names: ["John", "Martin"], statuses: [false, false], projects: [2, 1], tasks: [16, 5])
smartAssigning(names: ["John", "Martin"], statuses: [false, true], projects: [2, 1], tasks: [1, 5])
smartAssigning(names: ["John", "Martin"], statuses: [false, false], projects: [1, 2], tasks: [6, 6])
