class CategoryModel {
  String categoryName;
  String imageUrl;
}

List<CategoryModel> getCategories() {
  List<CategoryModel> category = [];
  CategoryModel categoryModel = CategoryModel();

  //1
  categoryModel.categoryName = 'Бизнес';
  categoryModel.imageUrl =
      'https://images.unsplash.com/photo-1520607162513-77705c0f0d4a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80';

  category.add(categoryModel);
  categoryModel = CategoryModel();

  //2
  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Развлечения';
  categoryModel.imageUrl =
      'https://blog.ru.playstation.com/tachyon/sites/11/2020/11/00-PlayStation-FAQ-featured-image-Cropped-1.jpg?resize=1088,612&crop_strategy=smart';
  category.add(categoryModel);

  //3
  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Новости';
  categoryModel.imageUrl =
      'https://images.unsplash.com/photo-1586339949916-3e9457bef6d3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80';
  category.add(categoryModel);

  //4
  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Здоровье';
  categoryModel.imageUrl =
      'https://www.goodyearhealth.com/wp-content/uploads/1470895393417.jpeg';
  category.add(categoryModel);

  //5
  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Наука';
  categoryModel.imageUrl =
      'https://storage1.censor.net/images/9/a/a/f/9aaf12a5665b0da825235def3a343403/original.jpg';
  category.add(categoryModel);

  //6
  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Спорт';
  categoryModel.imageUrl =
      'https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80';
  category.add(categoryModel);

  //7
  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Технология';
  categoryModel.imageUrl =
      'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80';
  category.add(categoryModel);

  return category;
}
