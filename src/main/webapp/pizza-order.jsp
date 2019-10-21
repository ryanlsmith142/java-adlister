<%--
  Created by IntelliJ IDEA.
  User: smithryan
  Date: 2019-10-21
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order a Pizza</title>
    <%@ include file="partials/links.html" %>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand p-1" href="#">Pizza World</a>
        <a href="#" class="p-2 text-body">Order online</a>
        <a href="#" class="p-2 text-body">Menu</a>
        <form class="form-inline p-2" method="GET" action="https://request-inspector.glitch.me/">
            <label class="p-2" for="zip-code">
                <input id="zip-code" name="zip-code" type="text" placeholder="Zip code">
            </label>
            <input type="submit" value="Search stores near you!">
        </form>
        <a href="#" class="ml-auto p-2 text-body"><i class="fas fa-user"></i></a>
        <a href="#" class="text-body">Sign Up</a>
    </nav>
    <!--Pizza Banner-->
    <main class="px-0 container-fluid">

        <section class="px-0 pizza jumbotron d-none d-lg-block">
            <h1 class="px-0">Welcome to Pizza World!</h1>
        </section>

        <!--Nav Tab List-->
        <h2>Build your own pizza!</h2>
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="tab-1" data-toggle="tab" href="#size-crust" role="tab" aria-controls="home" aria-selected="true"><span class="badge badge-pill badge-secondary mr-2">1</span>Size and Crust</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="tab-2" data-toggle="tab" href="#cheese-sauce" role="tab" aria-controls="profile" aria-selected="false"><span class="badge badge-pill badge-secondary mr-2">2</span>Cheese and Sauce</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="tab-3" data-toggle="tab" href="#toppings" role="tab" aria-controls="contact" aria-selected="false"><span class="badge badge-pill badge-secondary mr-2">3</span>Toppings</a>
            </li>
        </ul>
        <!--            Form for entire content-->
        <form method="POST" action="/display-order.jsp">

            <!--Tab 1-->
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="size-crust" role="tabpanel" aria-labelledby="home-tab">
                    <!--Card 1-->
                    <section class="card">
                        <h5 class="card-header bg-primary text-white">Choose size and crust</h5>
                        <!--Card body 1-->
                        <div class="card-body">
                            <ul class="list-group">
                                <li class="bg-light list-group-item"><h5 class="card-title">Hand Tossed</h5></li>
                                <li class="list-group-item">Garlic seasoned crust with a rich, buttery taste.</li>
                                <li class="pl-5 list-group-item">
                                    <input class="form-check-input" type="radio" name="crust" id="small" value="small handtossed" checked>
                                    <label for="small">
                                        Small (10")
                                    </label>
                                </li>
                                <li class="pl-5 list-group-item">
                                    <input class="form-check-input" type="radio" name="crust" id="medium" value="medium handtossed">
                                    <label for="medium">
                                        Medium (12")
                                    </label>
                                </li>
                            </ul>
                        </div>
                        <!--Card body 2-->
                        <div class="card-body">
                            <ul class="list-group">
                                <li class="bg-light list-group-item"><h5 class="card-title">Crispy Thin</h5></li>
                                <li class="list-group-item">Thin enough for optimum crispy to crunch ratio.</li>
                                <li class="pl-5 list-group-item">
                                    <input class="form-check-input" type="radio" name="crust" id="mediumThin" value="medium thin" checked>
                                    <label for="mediumThin">
                                        Medium (12")
                                    </label>
                                </li>
                                <li class="pl-5 list-group-item">
                                    <input class="form-check-input" type="radio" name="crust" id="largeThin" value="large thin">
                                    <label for="largeThin">
                                        Large (14")
                                    </label>
                                </li>
                            </ul>
                        </div>
                        <!--Next Button-->
                        <div class="card-footer text-right">
                            <button type="button" class="card-footer text-right bg-primary text-white">Next Step ></button>
                        </div>
                    </section>
                </div>
                <!--Tab 2-->
                <div class="tab-pane fade" id="cheese-sauce" role="tabpanel" aria-labelledby="profile-tab">
                    <!--Card 2-->
                    <section class="card">
                        <h5 class="card-header bg-primary text-white">Choose Cheese and Sauce</h5>

                        <!--Card body 1-->

                        <div class="card-body">
                            <ul class="list-group">
                                <li class="bg-light list-group-item"><h5 class="card-title">Cheese</h5></li>
                                <li class="list-group-item">
                                    <label for="cheese">How much?</label>
                                    <select name="cheese" id="cheese" class="form-control">
                                        <option>Light</option>
                                        <option>Normal</option>
                                        <option>Extra</option>
                                        <option>Double</option>
                                    </select>
                                </li>
                            </ul>
                        </div>

                        <!--Card body 2-->

                        <div class="card-body">
                            <ul class="list-group">
                                <li class="bg-light list-group-item"><h5 class="card-title">Sauce</h5></li>
                                <li class="list-group-item">
                                    <label for="sauce">What Type?</label>
                                    <select name="sauce" class="form-control" id="sauce">
                                        <option>Tomato sauce</option>
                                        <option>Marinara sauce</option>
                                        <option>BBQ Sauce</option>
                                        <option>Alfredo Sauce</option>
                                    </select>
                                </li>
                                <li class="list-group-item">
                                    <label for="much">How Much?</label>
                                    <select name="much" class="form-control" id="much">
                                        <option>Light</option>
                                        <option>Normal</option>
                                        <option>Extra</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                        <!-- Next and Previous button-->

                        <div class="card-footer text-right">
                            <div class="btn-group" role="group">
                                <button type="button" class="btn btn-primary">Previous Step</button>
                                <button type="button" class="btn btn-primary">Next Step</button>
                            </div>
                        </div>
                    </section>
                </div>
                <!--Tab 3-->
                <div class="tab-pane fade" id="toppings" role="tabpanel" aria-labelledby="contact-tab">
                    <!--                    Card 3-->
                    <section class="card">
                        <h5 class="card-header bg-primary text-white">Choose Toppings</h5>
                        <!--Card 1-->
                        <div class="card-body">
                            <ul class="list-group">
                                <!--Card Heading-->
                                <li class="bg-light list-group-item">
                                    <h5 class="card-title">Choose Meats</h5>
                                </li>
                                <!-- Item 1-->
                                <li class="list-group-item">
                                    <div class="form-check">
                                        <input name="meats" class="form-check-input" type="checkbox" value="beef" id="beef">
                                        <label class="form-check-label" for="beef">
                                            Beef
                                        </label>
                                    </div>
                                </li>
                                <!--Item 2-->
                                <li class="list-group-item">
                                    <div class="form-check">
                                        <input name="meats" class="form-check-input" type="checkbox" value="ham" id="ham">
                                        <label class="form-check-label" for="ham">
                                            Ham
                                        </label>
                                    </div>
                                </li>
                                <!--Item 3-->
                                <li class="list-group-item">
                                    <div class="form-check">
                                        <input name="meats" class="form-check-input" type="checkbox" value="steak" id="steak">
                                        <label class="form-check-label" for="steak">
                                            Philly Steak
                                        </label>
                                    </div>
                                </li>
                                <!--Item 4-->
                                <li class="list-group-item">
                                    <div class="form-check">
                                        <input name="meats" class="form-check-input" type="checkbox" value="bacon" id="bacon">
                                        <label class="form-check-label" for="bacon">
                                            Bacon
                                        </label>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <!--Card 2-->
                        <div class="card-body">
                            <ul class="list-group">
                                <!--Card Heading-->
                                <li class="bg-light list-group-item">
                                    <h5 class="card-title">Choose Non-Meats</h5>
                                </li>
                                <!--Item 1-->
                                <li class="list-group-item">
                                    <div class="form-check">
                                        <input name="nonMeats" class="form-check-input" type="checkbox" value="green peppers" id="green">
                                        <label class="form-check-label" for="green">
                                            Green Peppers
                                        </label>
                                    </div>

                                </li>
                                <!--Item 2-->
                                <li class="list-group-item">
                                    <div class="form-check">
                                        <input name="nonMeats" class="form-check-input" type="checkbox" value="mushrooms" id="mushrooms">
                                        <label class="form-check-label" for="mushrooms">
                                            Mushrooms
                                        </label>
                                    </div>
                                </li>
                                <!--Item 3-->
                                <li class="list-group-item">
                                    <div class="form-check">
                                        <input name="nonMeats" class="form-check-input" type="checkbox" value="onions" id="onions">
                                        <label class="form-check-label" for="onions">
                                            Onions
                                        </label>
                                    </div>
                                </li>
                                <!--Item 4-->
                                <li class="list-group-item">
                                    <div class="form-check">
                                        <input name="nonMeats" class="form-check-input" type="checkbox" value="jalapeno" id="jalapeno">
                                        <label class="form-check-label" for="jalapeno">
                                            Jalapeno Peppers
                                        </label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!--Checkout button-->
                        <div class="card-footer text-right">
                            <div class="btn-group" role="group">
                                <button type="submit" class="btn btn-primary">Checkout</button>
                                <button type="submit" class="btn btn-primary"><i class="fas fa-shopping-cart"></i></button>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </form>
    </main>
    <%@ include file="partials/bootstrapScripts.jsp" %>

</body>
</html>
