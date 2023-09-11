## Examples

    responders completion

Prints words for TAB auto-completion.

    responders completion
    responders completion hello
    responders completion hello name

To enable, TAB auto-completion add the following to your profile:

    eval $(responders completion_script)

Auto-completion example usage:

    responders [TAB]
    responders hello [TAB]
    responders hello name [TAB]
    responders hello name --[TAB]
