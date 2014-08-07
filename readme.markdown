# Jot
Jot thoughts, tasks, tweets, or whatever you want to quickly jot down in the moment.  

### TODO figure out how to stub methods AND stub #gets
_8/6_
Trying to figure out how to call settings now and not have it fail because of Setup Wizard.
I think I need to stub out setup wizard. 
Thinking through;
- what should I stub
- what is best way for the two classses to interact

_8/2/14_
I cannot figure out how to stub.
Once I do, i want to stub out the #gets method for terminal input.
How the heck do i do that?!
I'm going to put a fake_input_data method until I figure it out.

    setup = SetupWizard.new
    setup.stub('take input').and_return #=> says stub method not found

