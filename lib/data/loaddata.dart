import 'package:scaffoldapp/data/AppConstant.dart';
import 'package:scaffoldapp/domain/affirmation.dart' as domain;

List<domain.Affirmation> loadData() {
  return List.generate(10, (index) {
    final affirmation = AppConstant.affirmations[index];
    final photo = AppConstant.photos[index];
    return domain.Affirmation(image: photo, desc: affirmation);
  });
}
