<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link href = "header_try.css" rel="stylesheet">
</head>
<style>

.production_details input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

.production_details input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.production_details input[type=submit]:hover {
  background-color: #45a049;
}

.production_form {
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

<h1>Production Details</h1>
<div class="production_form">
  <form class="production_details" action="Production.php">
    <label for="batch_id">Batch ID</label>
    <input type="text" id="batch_id" name="batch_id" placeholder="Enter Batch ID..">
    <label for="transfer_id">Transfer ID</label>
    <input type="text" id="transfer_id" name="transfer_id" placeholder="Enter Employee ID..">
    <label for="company_id">Company ID</label>
    <input type="text" id="company_id" name="company_id" placeholder="Company ID..">  
    <input type="submit" value="Submit">
  </form>
</div>
</body>
</html>    