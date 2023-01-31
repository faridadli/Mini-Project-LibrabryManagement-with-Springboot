<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="container">
    <%@include file="commons/header.jspf"%>
    <%@include file="commons/navigations.jspf"%>
    <h5><a href="/show-listof-all-subscriptions"> Click For Back</a></h5>
    <head>
        <link href="AddBook.css" rel="stylesheet">
    </head>

    <div align="center">

        <section class="get-in-touch">
            <h1 class="title">Add New Subscription Here</h1>
    <form:form method="post" modelAttribute="subscription" cssClass="contact-form row">
    <div class="form-field col-lg-6">
        <form:label path="subsc_tier" cssClass="lable">Enter Subscription Tier:</form:label>
        <form:input path="subsc_tier" required="required" cssClass="input-text js-input"></form:input>
        <form:input path="subsc_id" type="hidden" cssClass="input-text js-input" />
    </div>

        <div class="form-field col-lg-6">
            <form:label path="subsc_fee" cssClass="lable">Enter Subscription Fee per Month (RM):</form:label>
            <form:input path="subsc_fee" type="text" required="required" cssClass="input-text js-input"/>
        </div>

        <div class="form-field col-lg-6">

            <form:label path="subsc_limit">Enter Borrow Limit:</form:label>
            <form:input path="subsc_limit" type="text" required="required" cssClass="input-text js-input"/>

        </div class="form-field col-lg-6">

        <div class="form-field col-lg-6">
            <form:label path="subsc_accessibility">Enter Accessibility:</form:label>
            <form:input path="subsc_accessibility" type="text" required="required" cssClass="input-text js-input"/>

        </div>

        <div class="form-field col-lg-12">
            <input class="submit-btn" type="submit" value="Add Subscription">
        </div>

    </form:form>
        </section>


        <%@include file="commons/footer.jspf"%>
    </div>
</div>
