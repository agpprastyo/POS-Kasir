enum RoutesName {
  onboarding('/onboarding'),
  login('login'),
  register('register'),
  forgotPassword('forgot-password'),
  dashboard('dashboard'),

  //
  home('/home'),
  bookmark('/bookmark'),
  notification('/notification'),
  profile('/profile'),
  myOrder('my-order'),
  shippingAddresses('shipping-addresses'),
  paymentMethod('payment-method'),
  myReviews('my-reviews'),
  setting('setting'),
  addShippingAddress('add-shipping-address'),
  coba('/coba'),
  cart('/cart'),
  checkout('checkout'),
  paymentSuccess('payment-success'),
  productDetail('/product-detail'),
  review('review'),
  ;

  final String name;

  const RoutesName(this.name);

  @override
  String toString() => name;
}
