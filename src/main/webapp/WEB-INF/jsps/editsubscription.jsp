<div class="container">
    <%@include file="commons/header.jspf"%>
    <%@include file="commons/navigations.jspf"%>
    <h5><a href="/show-listof-all-subscriptions"> Click For Back</a></h5>

    <div class="container">

        <%--<h2 class="text-center">Subscription Edit Settings</h2>--%>
        <div class="row justify-content-center">
            <div class="col-12 col-md-8 col-lg-6 pb-5">


                <br/>
                <br/>
                <br/>
                <!--Form with header-->

                <form method="post">
                    <div class="card border-primary rounded-0">
                        <div class="card-header p-0">
                            <div class="bg-info text-white text-center py-2">
                                <h3><i class="fa fa-envelope"></i> Enter Details</h3>
                                <%--<p class="m-0">Con gusto te ayudaremos</p>--%>
                            </div>
                        </div>
                        <div class="card-body p-3">

                            <!--Body-->
                            <div class="form-group">
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fa fa-user text-info"></i></div>
                                    </div>
                                    <input type="text" class="form-control" id="nombre" name="tier" value="${editsubscription.subsc_tier}" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fa fa-user text-info"></i></div>
                                    </div>
                                    <input type="text" class="form-control" id="nombre" name="fee" value="${editsubscription.subsc_fee}" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fa fa-user text-info"></i></div>
                                    </div>
                                    <input type="text" class="form-control" id="nombre" name="limit" value="${editsubscription.subsc_limit}">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fa fa-user text-info"></i></div>
                                    </div>
                                    <input type="text" class="form-control" id="nombre" name="accessibility" value="${editsubscription.subsc_accessibility}">
                                </div>
                            </div>
                            <%--<div class="form-group">
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                                    </div>
                                    <textarea class="form-control" placeholder="Envianos tu Mensaje"></textarea>
                                </div>
                            </div>
--%>
                            <div class="text-center">
                                <input type="submit" value="Save" class="btn btn-info btn-block rounded-0 py-2">
                            </div>
                        </div>

                    </div>
                </form>
                <!--Form with header-->


            </div>
        </div>
    </div>




    <%@include file="commons/footer.jspf"%>

</div>
