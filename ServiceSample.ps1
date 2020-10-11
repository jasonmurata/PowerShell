Configuration ServiceSample {

    # Import the module that contains the File resource.
    Import-DscResource -ModuleName PsDesiredStateConfiguration
    Import-DscResource -Name Service

    # The Node statement specifies which targets to compile MOF files for, when
    # this configuration is executed.
    Node 'localhost' {

        # The Service Resource 
        Service "Spooler:Running" {
            Name = "Spooler"
            State = "Running"
        }
    }
}