<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link href = "header_try.css" rel="stylesheet">
</head>
<style>

.dumps_details input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

.dumps_details input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.dumps_details input[type=submit]:hover {
  background-color: #45a049;
}

.dumps_form {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}


.form-inline { 
  display: flex;
  flex-flow: row wrap;
  align-items: center;
}

/* Add some margins for each label */
.form-inline label {
  margin: 5px 10px 5px 0;
}

/* Style the input fields */
.form-inline input {
  vertical-align: middle;
  margin: 5px 10px 5px 0;
  padding: 10px;
  background-color: #fff;
  border: 1px solid #ddd;
}

/* Style the submit button */
.form-inline button {
  padding: 10px 20px;
  background-color: dodgerblue;
  border: 1px solid #ddd;
  color: white;
}

.form-inline button:hover {
  background-color: royalblue;
}

/* Add responsiveness - display the form controls vertically instead of horizontally on screens that are less than 800px wide */
@media (max-width: 800px) {
  .form-inline input {
    margin: 10px 0;
  }

  .form-inline {
    flex-direction: column;
    align-items: stretch;
  }
}
</style>
<body>
    <div class="header">
        <div class ="i">
            <img  id = "l" src="images/cement_logo.jpg">
        </div>
        <div class="ele">
            <ul>
            <li><a href="new.php">Home</a></li>
                <li><a href="orders.php">Orders</a></li>
                <li><a href="Rakes.php">Rakes</a></li>
                <li><a href="Dealers_Non-Traders.php">Dealers/Non-Traders</a></li>
                <li><a href="Dumps.php">Dumps</a></li>
                <li><a href="Competitors.php">Competitors</a></li>
                <li><a href="Production.php">Production</a></li>
            </ul>
        </div>
    </div>

<h1>Competitors Details</h1>
<div class="dumps_form">
  <form class="dumps_details" action="Competitors.php">
    <label for="comp_name">Company Name</label>
    <input type="text" id="comp_name" name="comp_name" placeholder="Enter Company Name..">
    <label for="comp_area">Company Area</label>
    <input type="text" id="comp_area" name="comp_area" placeholder="Enter Company Area..">
    <label for="type_of_cem">Type_of_cement</label>
    <select id="type_of_cem" name="country">
        <option disabled selected value> -- select an option -- </option>
        <option value="43_Grade">43 Grade</option>
        <option value="53_Grade">53 Grade</option>
        <option value="PPC_Grade">PPC Grade</option>
        <option value="53_Grade">Primo Grade</option>
    </select>
    <label for="company_id">Company ID</label>
    <input type="text" id="company_id" name="company_id" placeholder="Company ID..">  
    <input type="submit" value="Submit">
  </form>
</div>
</body>
</html>    