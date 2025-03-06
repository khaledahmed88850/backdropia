import 'package:backdropia/features/category/data/models/category_model.dart';

List<CategoryModel> getCategoryList() {
  const  List<CategoryModel> categoryList =  [
    CategoryModel(
      name: 'Art',
      imageUrl:
          'https://images.unsplash.com/photo-1740339095760-a077f60fcf54?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3MTE1NDh8MHwxfHNlYXJjaHwxfHxhcnR8ZW58MHwxfDJ8fDE3NDA0MDk1NzB8MA&ixlib=rb-4.0.3&q=80&w=1080',
    ),

     CategoryModel(
      name: 'Plant',
      imageUrl:
          'https://images.unsplash.com/photo-1740282492401-8ec98d80754e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3MTE1NDh8MHwxfHNlYXJjaHw0fHxwbGFudHxlbnwwfDB8Mnx8MTc0MDQxMTM2MXww&ixlib=rb-4.0.3&q=80&w=1080',
    ),
        CategoryModel(
      name: 'Animal',
      imageUrl:
          'https://images.unsplash.com/photo-1740099602297-0b1469a20dc6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3MTE1NDh8MHwxfHNlYXJjaHw0fHxwbGFpbnxlbnwwfDB8Mnx8MTc0MDQxMTI1Mnww&ixlib=rb-4.0.3&q=80&w=1080',
    ),
    CategoryModel(
      name: 'Bike',
      imageUrl:
          'https://images.unsplash.com/photo-1740299200665-3fc75d741b9f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3MTE1NDh8MHwxfHNlYXJjaHwxOXx8YmlrZXxlbnwwfDF8Mnx8MTc0MDQxMDM3OHww&ixlib=rb-4.0.3&q=80&w=1080',
    ),
    CategoryModel(
      name: 'Car',
      imageUrl:
'https://images.pexels.com/photos/627678/pexels-photo-627678.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
    ),
    CategoryModel(
      name: 'Food',
      imageUrl:
          'https://images.unsplash.com/photo-1740396740013-e5636e22c9db?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3MTE1NDh8MHwxfHNlYXJjaHwyfHxmb29kfGVufDB8MHwyfHwxNzQwNDEwOTczfDA&ixlib=rb-4.0.3&q=80&w=1080',
    ),
    CategoryModel(
      name: 'Game',
      imageUrl:
          'https://images.unsplash.com/photo-1739416333363-4b01dd9874c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3MTE1NDh8MHwxfHNlYXJjaHwxMHx8Z2FtZXxlbnwwfDB8Mnx8MTc0MDQxMTA1OXww&ixlib=rb-4.0.3&q=80&w=1080',
    ),
    CategoryModel(
      name: 'Music',
      imageUrl:
          'https://images.unsplash.com/photo-1739818435565-3be23a2c99b2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3MTE1NDh8MHwxfHNlYXJjaHw3fHxtdXNpY3xlbnwwfDB8Mnx8MTc0MDQxMTE0NHww&ixlib=rb-4.0.3&q=80&w=1080',
    ),
    CategoryModel(
      name: 'Girl',
      imageUrl:
          'https://images.unsplash.com/photo-1740158252185-f92da059d861?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3MTE1NDh8MHwxfHNlYXJjaHw1fHxnaXJsfGVufDB8MXwyfHwxNzQwNDA5MDAwfDA&ixlib=rb-4.0.3&q=80&w=1080',
    ),
    CategoryModel(
      name: 'Nature',
      imageUrl:
          'https://images.unsplash.com/photo-1740345985407-b117173052f0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3MTE1NDh8MHwxfHNlYXJjaHw2fHxuYXR1cmV8ZW58MHwwfDJ8fDE3NDA0MTEyMDl8MA&ixlib=rb-4.0.3&q=80&w=1080',
    ),

    CategoryModel(
      name: 'Plane',
      imageUrl:
          'https://images.unsplash.com/photo-1740297544508-94f1b33545a2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3MTE1NDh8MHwxfHNlYXJjaHw0fHxwbGFuZXxlbnwwfDB8Mnx8MTc0MDQxMTMyNHww&ixlib=rb-4.0.3&q=80&w=1080',
    ),
    CategoryModel(
      name: 'Rain',
      imageUrl:
          'https://images.unsplash.com/photo-1740133375726-69e2c7ff9f6c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3MTE1NDh8MHwxfHNlYXJjaHw2fHxyYWlufGVufDB8MHwyfHwxNzQwNDExNDA3fDA&ixlib=rb-4.0.3&q=80&w=1080'
    ),
    CategoryModel(
      name: 'Space',
      imageUrl:
         'https://images.unsplash.com/photo-1739614621579-8f8f396c7412?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3MTE1NDh8MHwxfHNlYXJjaHwzMnx8c3BhY2V8ZW58MHwwfDJ8fDE3NDA0MTE4NDR8MA&ixlib=rb-4.0.3&q=80&w=1080'
    ),
       CategoryModel(
      name: 'Beach',
      imageUrl:
          'https://images.unsplash.com/photo-1740228018442-542f7f61b6a0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3MTE1NDh8MHwxfHNlYXJjaHw2fHxiZWFjaHxlbnwwfDF8Mnx8MTc0MDQwOTY1Mnww&ixlib=rb-4.0.3&q=80&w=1080',
    ),
    CategoryModel(
      name: 'Travel',
      imageUrl:
         'https://images.unsplash.com/photo-1739595416639-2f108e43705a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3MTE1NDh8MHwxfHNlYXJjaHwyfHx0cmF2ZWx8ZW58MHwwfDJ8fDE3NDA0MTE1NjJ8MA&ixlib=rb-4.0.3&q=80&w=1080'
    ),
    CategoryModel(
      name: 'WildLife',
      imageUrl:
          'https://images.unsplash.com/photo-1740351867495-7404f1f17dbb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3MTE1NDh8MHwxfHNlYXJjaHwyfHx3aWxkbGlmZXxlbnwwfDB8Mnx8MTc0MDQxMTYzMHww&ixlib=rb-4.0.3&q=80&w=1080'
    ),
    CategoryModel(
      name: 'Mountain',
      imageUrl:
         'https://images.unsplash.com/photo-1740149263951-123c2399b7fe?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3MTE1NDh8MHwxfHNlYXJjaHwzMnx8bW91bnRhaW58ZW58MHwwfDJ8fDE3NDA0MTIwMzh8MA&ixlib=rb-4.0.3&q=80&w=1080'
    ),
    CategoryModel(
      name: 'Landscape',
      imageUrl:
        'https://images.unsplash.com/photo-1740320302757-d915b849453d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3MTE1NDh8MHwxfHNlYXJjaHw4fHxsYW5kc2NhcGV8ZW58MHwwfDJ8fDE3NDA0MTY4MTB8MA&ixlib=rb-4.0.3&q=80&w=1080'
    ),
    
  ];
  return categoryList;
}
