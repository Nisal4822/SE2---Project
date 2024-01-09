<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checkout Page</title>
<style>
            .main01{
/*                border: 1px solid black; */
                padding-top: 100px;
                hight: 100%; 
                width: 90%;
            }
            .textmain{
                font-family: 'Ubuntu', sans-serif;
                font-size: 50px;
            }
        </style>
</head>
<body>

<div class="main01" style="align: center;">
            <p class="textmain">Do the payment using given below links</p>
        <div id="smart-button-container">
                        <div style="text-align: center;">
                            <div id="paypal-button-container"></div>
                        </div>
                    </div>
                    <script src="https://www.paypal.com/sdk/js?client-id=AcX0M5jsuZVBOdOsyaJFcz-0q4OrV4NZi04Gt7ldHUrq8UZNLV-7vUStsTa3f-Ak0ewv5OgDWHRHsmFf&disable-funding=venmo&currency=USD" data-sdk-integration-source="button-factory"></script>
                    <script>
                            function initPayPalButton() {
                                paypal.Buttons({
                                    style: {
                                        shape: 'rect',
                                        color: 'blue',
                                        layout: 'vertical',
                                        label: 'paypal',

                                    },

                                    createOrder: function (data, actions) {
                                        return actions.order.create({
                                            purchase_units: [{"amount": {"currency_code": "USD", "value": 100}}]
                                        });
                                    },

                                    onApprove: function (data, actions) {
                                        return actions.order.capture().then(function (orderData) {

                  
                                            console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));

                 
                                            const element = document.getElementById('paypal-button-container');
                                            element.innerHTML = '';
                                            element.innerHTML = '<h3>Thank you for your payment!</h3>';

                                            

                                        });
                                    },

                                    onError: function (err) {
                                        console.log(err);
                                    }
                                }).render('#paypal-button-container');
                            }
                            initPayPalButton();
                    </script>
                    </div>

</body>
</html>