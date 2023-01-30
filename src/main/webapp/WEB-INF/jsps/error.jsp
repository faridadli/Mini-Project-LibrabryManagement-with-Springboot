<div class="container">
<%@include file="commons/header.jspf"%>
<%@include file="commons/navigations.jspf"%>

    <div class="container" align="center">
        <h2>Error Occured</h2>

        <p><%= request.getAttribute("errorMessage") %></p>
    </div>

<%@include file="commons/footer.jspf"%>
</div>