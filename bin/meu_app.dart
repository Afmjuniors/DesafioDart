
import 'package:meu_app/meu_app.dart' as meu_app;

void main(List<String> arguments) {
  try {
meu_app.execute();

  } catch (InputInvalidException) {
    print(InputInvalidException.toString());
  }

  
}
