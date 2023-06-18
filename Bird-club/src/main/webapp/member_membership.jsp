<!DOCTYPE html>
<html>
<head>
  <title>Membership Type Selection</title>
  <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
  <style>
    body {
      font-family: Arial, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      background-color: #f2f2f2;
    }

    .container {
      width: 800px;
      background-color: #fff;
      border-radius: 5px;
      padding: 20px;
      box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
    }

    h1 {
      text-align: center;
      color: #333;
    }

    .membership-options {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      grid-gap: 20px;
    }

    .membership-option {
      border: 1px solid #ddd;
      border-radius: 5px;
      padding: 20px;
      cursor: pointer;
    }

    h2 {
      margin-top: 0;
    }

    .membership-fee {
      font-weight: bold;
    }

    .membership-description {
      margin-top: 10px;
    }

    .membership-option input[type="radio"],
    .membership-option label {
      display: none;
    }

    .membership-option.selected {
      background-color: #f2f2f2;
    }

    input[type="submit"] {
      display: block;
      margin: 20px auto;
      background-color: #428bca;
      color: #fff;
      border: none;
      padding: 10px 20px;
      font-size: 16px;
      border-radius: 4px;
      cursor: pointer;
    }
  </style>

  <div class="container">
    <h1>Membership Type Selection</h1>

    <form action="index.jsp" method="post">
      <div class="membership-options">
        <div class="membership-option" onclick="selectMembershipOption(this)">
          <h2 style="text-align: center">Individual</h2>
          <p style="text-align: center" class="membership-fee">Fee: 100,000 VND</p>
          <p class="membership-description">The individual membership package for bird enthusiasts. You will have access to all activities of the bird club for 1 month.</p>
          <input type="radio" id="individual" name="membershipType" value="Individual">
        </div>

        <div class="membership-option" onclick="selectMembershipOption(this)">
          <h2 style="text-align: center">Family</h2>
          <p style="text-align: center" class="membership-fee">Fee: 200,000 VND</p>
          <p class="membership-description">The family membership package for bird enthusiasts. Enjoy bird-watching activities together with your loved ones for 3 months.</p>
          <input type="radio" id="family" name="membershipType" value="Family">
        </div>

        <div class="membership-option" onclick="selectMembershipOption(this)">
          <h2 style="text-align: center">Family Extend</h2>
          <p style="text-align: center" class="membership-fee">Fee: 400,000 VND</p>
          <p class="membership-description">Extend your family membership package and continue to explore the world of birds for 6 months.</p>
          <input type="radio" id="family-extend" name="membershipType" value="FamilyExtend">
        </div>
      </div>

      <input type="submit" value="Proceed to Payment">
    </form>
  </div>

  <script>
    function selectMembershipOption(option) {
      // Remove the "selected" class from all membership options
      var membershipOptions = document.getElementsByClassName('membership-option');
      for (var i = 0; i < membershipOptions.length; i++) {
        membershipOptions[i].classList.remove('selected');
      }

      // Add the "selected" class to the clicked membership option
      option.classList.add('selected');

      // Mark the corresponding radio button as selected
      var radioButton = option.getElementsByTagName('input')[0];
      radioButton.checked = true;
    }
  </script>
</body>
</html>
