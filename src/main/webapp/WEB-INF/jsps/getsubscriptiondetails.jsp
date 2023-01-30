<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="container" align="center">
    <%@include file="commons/header.jspf"%>
    <%@include file="commons/navigations.jspf"%>

    <div class="container contact">
        <div class="row">

            <div class="col-md-3" align="center">
                <br>
                <p style="font: medium" align="justify">

                    <strong>Complete Subscription Details</strong>
                </p>

                <div>
                    <table class="table table-hover">
                        <tr>
                            <h5>
                                <td>Subscription Id</td>
                                <td>${clicksubscription.subsc_id}</td>
                            </h5>
                        </tr>

                        <tr>
                            <h5>
                                <td>Tier</td>
                                <td>${clicksubscription.subsc_tier}</td>
                            </h5>
                        </tr>

                        <tr>
                            <h5>
                                <td>Fee per Month (RM)</td>
                                <td>${clicksubscription.subsc_fee}</td>
                            </h5>
                        </tr>

                        <tr>
                            <h5>
                                <td>Perks</td>
                                <td>
                                    <ul>
                                        <li>Maximum Borrow Books: ${clicksubscription.subsc_limit}</li>
                                        <li>${clicksubscription.subsc_accessibility</li>
                                    </ul>
                                </td>
                            </h5>
                        </tr>

                    </table>
                </div>
            </div>

            <div class="col-md-9">
                <div class="contact-info">
                    <br>
                    <img src="/images/istock_78312587_medium.jpg" alt="image" height="200" width="300"/>

                    <h2 style="color: #4cae4c">${clickbook.book_name} - Book</h2>
                    <h4>We would love to hear from you !</h4>
                    <h3 style="color: blue">SmartLibrary, India</h3>
                </div>
            </div>

        </div>
    </div>


</div>
<%@include file="commons/footer.jspf"%>
