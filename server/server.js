const express = require("express"); //using the express web framework
const nodemailer = require("nodemailer");
const cors = require("cors");
const multer = require("multer");

var userController = require('./controllers/userController'); // set userController to the userController class
var restaurantController = require('./controllers/restaurantController'); // set restaurantController to the restaurantController class
var reviewController = require('./controllers/reviewController'); // set reviewController to the reviewController class

var app = express(); // set variable app to be an instance of express framework. From now on, app is the express
app.use(cors());
app.use("/uploads", express.static(__dirname + "/uploads"));
app.use(express.json()); // json() is a method inbuilt in express to recognize the incoming Request Object from the web client as a JSON Object.

let transporter = nodemailer.createTransport({
    service: "gmail",
    auth: {
        user: "cdev.webapp@gmail.com",
        pass: "gltjbkwdtuthyjkb"
    }
});

app.post("/send", function(req, res) {
    let mailDetails = {
        from: "cdev.webapp@gmail.com",
        to: "cdev.webapp@gmail.com",
        subject: req.body.userEmail + " sent a message from DineSG website.",
        text: req.body.userMessage,
        replyTo: req.body.userEmail,
    };
    transporter.sendMail(mailDetails, function(error, data) {
        if(error) {
            console.log("Error: ", error);
            res.json(error);
        }
        else {
            console.log("Email is sent successfully.");
            res.json({status: "Email sent"});
        }
    });
});

var storage = multer.diskStorage({
    destination: function(req, file, cb) {
        cb(null, './uploads')
    },
    filename: function(req, file, cb) {
        cb(null, file.originalname)
    }
});
var upload = multer({ storage: storage });

app.route('/users').get(userController.getAllUsers); // activate the getAllUsers method if the route is GET(method) /users
app.route('/users/:id').get(userController.getUserById);
app.route('/userAndReviews').get(userController.getUsersAndReviews);
app.post('/register', upload.single('userPhoto'), function(req, res) {
    if(!req.file) {
        console.log("Cannot upload user picture.");
    }
    else {
        userController.addUser(req, res);
    }
});
app.route('/login').post(userController.login);
app.route('/googleSignIn').post(userController.googleSignIn);
app.route('/users/:id').put(userController.updateUser);
app.route('/users/:id').delete(userController.deleteUser); // activate the deleteUser method if the route is DELETE(method) /users/:id

app.route('/restaurants').get(restaurantController.getAllRestaurants); // activate the getAllRestaurants method if the route is GET(method) /restaurants
app.route('/restaurants/:id').get(restaurantController.getRestaurantById); // activate the getAllRestaurants method if the route is GET(method) /restaurants

app.route('/reviews').get(reviewController.getReviews); // activate the getAllReviews method if the route is GET(method) /reviews
app.route('/reviews').post(reviewController.addReview); // activate the addReview method if the route is POST(method) /reviews
app.route('/reviews/:id').put(reviewController.updateReview); // activate the updateReview method if the route is PUT(method) /reviews/:id
app.route('/reviews/:id').delete(reviewController.deleteReview); // activate the deleteReview method if the route is DELETE(method) /reviews/:id

app.listen(8080, "127.0.0.1"); // start the nodejs to be listening for incoming request @ port 8080
console.log("web server running @ http://127.0.0.1:8080"); // output to console 
