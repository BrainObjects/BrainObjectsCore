# BrainObjects Core framework

## Adopted conventions

- Services' executable binary should be placed in a separate folder having the name of the service. Besides the executable, several configuration files sharing the name of the service are expected e.g.


```
/usr/local/bin/my_service/
                       ../my_service                         // the executable
                       ../my_service.config                  // configuration data 
                       ../my_service.command_line_arguments  // command line arguments configuration
```

- Similar to GNU's CLI convention, each service should automatically support the following command line options:
    - \-h | \--help
    - \-v | \--version
    - \--verbose 


