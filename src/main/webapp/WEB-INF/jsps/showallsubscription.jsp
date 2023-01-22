
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="container" align="center">
    <%@include file="commons/header.jspf"%>
    <%@include file="commons/navigations.jspf"%>
    <head>
        <link href="AddBook.css" rel="stylesheet">
    </head>
    <div>
        <%--      <h3>List Of All books has been shown here </h3>--%>

        <%--        ${listofbooks}--%>

        <section id="tabs" class="project-tab">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <nav>
                            <div  id="nav-tab" role="tablist" align="center">
                                <h4> <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Subscription</a></h4>

                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">


                                <table class="table" cellspacing="0">
                                    <thead>
                                    <tr>
                                        <th>Number</th>
                                        <th>Subscription Tier</th>
                                        <th>Fee Per Month(RM)</th>
                                        <th>Perks</th>
                                    </tr>

                                    </thead>

                                    <tbody>
                                        <tr>

                                            <td><a href="#">1</a></td>
                                            <td>Free</td>
                                            <td>0.0</td>
                                            <td> 
                                                <ol>
                                                    <li>Maximum borrow books: 7</li>
                                                    <li>Limited access to certain books</li>
                                                </ol>
                                            </td>
                                            <td><a href="/edit-member?id=${user.member_id}" class="btn btn-dark">Edit</a></td>
                                            <td><a href="/delete-member?id=${user.member_id}" class="btn btn-danger">Delete</a></td>

                                        </tr>
                                        <tr>

                                            <td><a href="#">2</a></td>
                                            <td>Premium</td>
                                            <td>20.0</td>
                                            <td> 
                                                <ol>
                                                    <li>Maximum borrow books: 20</li>
                                                    <li>Can access to any books</li>
                                                </ol>
                                            </td>
                                            <td><a href="/edit-member?id=${user.member_id}" class="btn btn-dark">Edit</a></td>
                                            <td><a href="/delete-member?id=${user.member_id}" class="btn btn-danger">Delete</a></td>

                                        </tr>
                                    <!-- <c:forEach items="${listofmembers}" var="user">
                                        <tr>

                                            <td><a href="#">${user.member_id}</a></td>
                                            <td>${user.member_name}</td>
                                            <td>${user.member_address}</td>
                                                <%--<td><fmt:formatDate value="${book.book_date_of_barrow}" pattern="dd-MM-YYYY"></fmt:formatDate> </td>
                                                <td><fmt:formatDate value="${book.book_date_of_return}" pattern="dd-MM-YYYY"></fmt:formatDate> </td>--%>
                                            <td><fmt:formatDate value="${user.member_joined_date}" pattern="dd-MM-YYYY"></fmt:formatDate> </td>
                                            <td><a href="/edit-member?id=${user.member_id}" class="btn btn-dark">Edit</a></td>
                                            <td><a href="/delete-member?id=${user.member_id}" class="btn btn-danger">Delete</a></td>

                                        </tr>
                                    </c:forEach> -->
                                    </tbody>
                                </table>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <section class="get-in-touch">
                <h1 class="title">Add New Subscription</h1>
                <%--@elvariable id="member" type="com.verinon.lbm.pojos.MemberPojo"--%>
                <form:form method="post" modelAttribute="member" cssClass="contact-form row">
    
    
                    <div class="form-field col-lg-6">
                        <form:input path="Package" type="text" required="required" cssClass="input-text js-input"/>
    
                    </div>
                    
    
                   <div class="form-field col-lg-12">
                        <input class="submit-btn" type="submit" value="Add Package">
                    </div>
    
                </form:form>
            </section>
    </div>
    <%@include file="commons/footer.jspf"%>
</div>