Configuration ServiceSample {

    # Import the module that contains the File resource.
    Import-DscResource -ModuleName PsDesiredStateConfiguration
    Import-DscResource -Name Service

    # The Node statement specifies which targets to compile MOF files for, when
    # this configuration is executed.
    Node 'localhost' {

        # The Service Resource 
        Service "StartBits" {
            Name = "bits"
            State = "Running"
        }
    }
}
ServiceSample
Start-DscConfiguration -Path .\ServiceSample -Wait -Verbose

## Start of toLab Branch
## Update 2 of toLab
## Update 3 to ThreeB

