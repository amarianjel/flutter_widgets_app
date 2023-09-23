import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(), //+ Esta todo mas abajo con el cuerpo de los botones
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.arrow_back_ios_new_rounded ),
        onPressed: (){
          context.pop();  //+ Se sale de la pantalla
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity, //+ Lo que puedea el padre
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(  //README: Wrap es similar a las columnas y lo que hace rellena
          spacing: 20,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton(onPressed: null, child: Text('Elevated Disabled')),
    
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon( Icons.access_alarm_rounded), 
              label: const Text('Elevated Icon') 
            ),

            FilledButton(onPressed: (){}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: (){}, 
              icon: const Icon( Icons.accessibility_new ),
              label: const Text('Filled Icon'),
            ),

            OutlinedButton(onPressed: (){}, child: const Text('Outline')),
            OutlinedButton.icon(
              onPressed: (){}, 
              label: const Text('Outline Icon'),
              icon: const Icon( Icons.terminal)
            ),

            TextButton(onPressed: (){}, child: const Text('Text')),
            TextButton.icon(
              onPressed: (){}, 
              icon: const Icon( Icons.account_box_outlined),
              label: const Text('Text Icon'),
            ),

            // DONE:  Boton personalizado
            const CustomButton(),


            IconButton(onPressed: (){}, icon: const Icon( Icons.app_registration_rounded)),
            IconButton(
              onPressed: (){}, 
              icon: const Icon( Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;


    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric( horizontal: 20, vertical: 10),
            child: Text('Hola Mundo', style: TextStyle(color: Colors.white))
          ),
        ),
      ),
    );
  }
}