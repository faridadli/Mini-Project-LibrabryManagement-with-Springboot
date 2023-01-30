<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="container" align="center">


    <%@include file="commons/header.jspf"%>
    <%@include file="commons/navigations.jspf"%>
    <div>
        <%--      <h3>List Of All books has been shown here </h3>--%>

        <%--        ${listofbooks}--%>
            <h2>${success}</h2>

        <section id="tabs" class="project-tab">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <nav>
                            <div  id="nav-tab" role="tablist" align="center">
                                <h4> <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Borrowed Books By ${books.memberName} </a></h4>

                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">


                                <table class="table" cellspacing="0">
                                    <thead>
                                    <tr>
                                        <th>Book Borrowed</th>
                                        <th>Date of Borrowed</th>
                                        <th>Return</th>
                                        <%--<th>Return</th>--%>

                                    </tr>

                                    </thead>

                                    <tbody>
                                        <tr></tr>
                                        <c:if test="${books.bookName != '' && books.bookName != 'Select Book One'}">
                                            <tr>
                                                <td>${books.bookName}</td>
                                                <td><fmt:formatDate value="${books.dateOfBooked}" pattern="dd-MM-YYYY"></fmt:formatDate> </td>
                                                <!-- <td><input type="date" class="date-picker date-picker-popup" required="please select date" name="dateofreturn"></td> -->
                                                <td><a href="/del-smartbs?bookName=${books.bookName}&member=${books.memberName}" class="btn btn-success">Return</a></td>
                                            </tr>
                                        </c:if>   
                                        <c:if test="${books.bookName2 != '' && books.bookName2 != 'Select Book Two'}">
                                            <tr>
                                                <td>${books.bookName2}</td>
                                                <td><fmt:formatDate value="${books.dateOfBooked}" pattern="dd-MM-YYYY"></fmt:formatDate> </td>
                                                <td><a href="/del-smartbs?bookName=${books.bookName2}&member=${books.memberName}" class="btn btn-success">Return</a></td>
                                            </tr>
                                        </c:if>
                                        <c:if test="${books.bookName3 != '' && books.bookName3 != 'Select Book Three'}">
                                            <tr>
                                                <td>${books.bookName3}</td>
                                                <td><fmt:formatDate value="${books.dateOfBooked}" pattern="dd-MM-YYYY"></fmt:formatDate> </td>
                                                <td><a href="/del-smartbs?bookName=${books.bookName3}&member=${books.memberName}" class="btn btn-success">Return</a></td>
                                            </tr>
                                        </c:if>
                                    <%-- </c:forEach> --%>


                                    </tbody>
                                </table>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
    </div>
    <%@include file="commons/footer.jspf"%>
</div>
