
<!--content-->
<div class="contact">

    <div class="container">
        <h1>Contact</h1>
        <div class="contact-form">

            <div class="col-md-8 contact-grid">
                <form  method="post" action="{{route('contacts')}}" enctype="multipart/form-data">
                    <input type="text" value="{{ old('name') }}" name="name" placeholder="name">

                    <input type="text" value="{{ old('email') }}" name="email" placeholder="email">
                    <input type="text" value="{{ old('subject') }}" name="subject"  placeholder="subject">

                    <textarea cols="77" rows="6" value="{{ old('message') }}" name="message" onfocus="this.value='';">Message</textarea>
                    <div class="send">
                        <input type="submit" value="Send">
                        {{csrf_field()}}
                    </div>
                </form>
            </div>
            <div class="col-md-4 contact-in">

                <div class="address-more">
                    <h4>Address</h4>
                    <p>The company name,</p>
                    <p>Lorem ipsum dolor,</p>
                    <p>Glasglow Dr 40 Fe 72. </p>
                </div>
                <div class="address-more">
                    <h4>Address1</h4>
                    <p>Tel:1115550001</p>
                    <p>Fax:190-4509-494</p>
                    <p>Email:<a href="mailto:contact@example.com"> contact@example.com</a></p>
                </div>

            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d325518.68780316407!2d30.252511957059642!3d50.4016990487754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40d4cf4ee15a4505%3A0x764931d2170146fe!2sKyiv%2C+02000!5e0!3m2!1sen!2sua!4v1522671806407" width="1200" height="650" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
    </div>

</div>
<!--//content-->

