class Endpoints{
  static const String CatgoriesEndpoint="/api/v1/categories";
  static const String BrandsEndpoint="/api/v1/brands";
  static const String Product="/api/v1/products";
  static  String SubCategoriesEndpoint(String CategoryId){
    return "/api/v1/categories/${CategoryId}/subcategories";
  }
  static const String signupEndpoint="/api/v1/auth/signup";
  static const String singInEndpoint="/api/v1/auth/signin";
}