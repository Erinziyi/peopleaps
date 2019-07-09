import 'package:flutter/material.dart';




class GetStartedPage extends StatefulWidget {
  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stepper(
        steps: _mySteps(),
        currentStep: this._currentStep,
        onStepTapped: (step){
          setState(() {
            this._currentStep = step;
          });
        },
        onStepContinue: (){
          setState(() {
            if(this._currentStep < this._mySteps().length - 1){
              this._currentStep =this._currentStep +1;
            }else{
              //Logic to check if everything is completed
              print('Completed, check fields.');
            }
          });
        },
        onStepCancel: (){
          setState(() {
            if(this._currentStep >0){
              this._currentStep = this._currentStep -1;
            }else{
              this._currentStep =0;
            }
          });
        },

      ),


    );
  }

  List<Step> _mySteps(){
    List<Step> _steps =[
      Step(
        title: Text('Assesment'),
        content:Image.asset(
          'assets/pre_assessment_background.png',
          fit: BoxFit.cover,
        ),
        isActive: _currentStep > 0,
      ),

      Step(
        title: Text('Action Plan'),
        content: Image.asset(
          'assets/get_started_action_plan.png',
          fit: BoxFit.cover,
        ),
        isActive: _currentStep > 1,
      ),

      Step(
        title: Text('Evaluation'),
        content:  Image.asset(
          'assets/get_started_evaluation.png',
          fit: BoxFit.cover,
        ),
        isActive: _currentStep > 2,
      ),

    ];

    return _steps;
  }
}
