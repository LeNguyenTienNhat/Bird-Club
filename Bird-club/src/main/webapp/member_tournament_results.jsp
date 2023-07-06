<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<head>
    <title>Score Ranking</title>
    <style>
        .container {
            display: flex;
            justify-content: center;
        }

        .column {
            flex-basis: 30%;
            padding: 20px;
            background-color: #f2f2f2;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin: 10px;
            text-align: center;
        }

        .first {
            height: 200px;
        }

        .second {
            height: 150px;
            margin-top: auto;
        }

        .third {
            height: 100px;
            margin-top: auto;
        }

        .column h2 {
            margin-top: 0;
        }

        .column p {
            margin-bottom: 0;
        }
        .gold {
        color: gold;
    }

    .silver {
        color: silver;
    }

    .bronze {
        color: #cd7f32; /* Bronze color */
    }
    </style>
</head>
<body>
    <div class="container">
    <div class="column second">
        <h2><i class="fas fa-medal silver"></i></h2>
        <p>Information</p>
    </div>
    <div class="column first">
        <h2><i class="fas fa-trophy gold"></i></h2>
        <p>Information</p>
    </div>
    <div class="column third">
        <h2><i class="fas fa-award bronze"></i></h2>
        <p>Information</p>
    </div>
</div>


</body>
</html>
