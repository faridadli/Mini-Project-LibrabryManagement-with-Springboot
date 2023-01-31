<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="container" align="center">
    <%@include file="commons/header.jspf"%>
    <%@include file="commons/navigations.jspf"%>

    <h4> Select Subscription for getting details more..</h4>
<head>
        <link href="search.css" rel="stylesheet">
    </head>

<div class="container search-table">
    <div class="search-box">
        <div class="row">
            <div class="col-md-3">
                <h5>Search All Fields</h5>
            </div>
            <div class="col-md-9">
                <input type="text" id="myInput" onkeyup="myFunction()" class="form-control" placeholder="Search the subscription tier here">
                <script>
                    $(document).ready(function () {
                        $("#myInput").on("keyup", function () {
                            var value = $(this).val().toLowerCase();
                            $("#myTable tr").filter(function () {
                                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                            });
                        });
                    });
                </script>
            </div>
        </div>
    </div>
    <div class="search-list">
        <h6>Select Subscription</h6>
    <table class="table" id="myTable">
            <thead>
            <tr>
                <th>Tier</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach items="${searchsubscription}" var="subscription">
            <tr>
                <td><a href="/get-subscription-details-one?subsc_tier=${subscription.subsc_tier}"> ${subscription.subsc_tier}</a></td>
            </tr>
            </c:forEach>
            </tbody>
        </table>

    </div>
</div>
<%@include file="commons/footer.jspf"%>
