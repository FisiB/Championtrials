<?php 



	include_once('config.php');

	if(isset($_POST['submit']))
	{
		//We will collect username from form data after submitting an HTML form with method="post".
		$username = $_POST['username'];

		//We will collect password from form data after submitting an HTML form with method="post".
		$password = $_POST['password'];

		//Check if any of username and password variables is empty
		if (empty($username) || empty($password)) {

			//If true, echo this message
			echo "Please fill in all fields
			";

		}
		else{

			
			$sql = "SELECT id, name, surname, username, email, password, isadmin FROM users WHERE username=:username";

			
			$selectUser = $conn->prepare($sql);

		

			$selectUser->bindParam(":username", $username);

		

			$selectUser->execute();

			

			$data = $selectUser->fetch();

		
			if ($data == false) {
				

				echo "The user does not exist
				";
			}else{

				if (password_verify($password, $data['password'])) {
					
					$_SESSION['id'] = $data['id'];
					$_SESSION['username'] = $data['username'];
					$_SESSION['email'] = $data['email'];
					$_SESSION['name'] = $data['name'];
					$_SESSION['surname'] = $data['surname'];
					$_SESSION['isadmin'] = $data['isadmin'];

				
					header('Location: dashboard.php');
				}
				else{
				
					echo "The password is not valid
					";
				}

			}

		}


	}


 ?>