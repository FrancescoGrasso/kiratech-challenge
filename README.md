La repository è purtroppo sprovvista dell'applicazione richiesta dalla comanda. Sono riuscito a creare con successo l'ecosistema necessario al deployment del cluster tramite terraform, utilizzando aws come provider. Ho anche creato il playbook e gli hosts per ansible ma qualcosa non funziona quando vado a lanciare il playbook.

Di seguito una descrizione dei file.

main.tf: Questo file contiene il codice Terraform necessario per creare l'infrastruttura di base su AWS. Qui definiamo la nostra VPC, le subnet, i gruppi di sicurezza e le istanze EC2 che costituiranno il cluster Kubernetes.

output.tf: Qui definiamo gli output di Terraform, come gli indirizzi IP delle istanze EC2, che possono essere utili per accedere facilmente alle risorse create.

variables.tf: Questo file contiene le variabili Terraform, che consentono una facile personalizzazione dei parametri come il nome della chiave SSH, l'AMI di Ubuntu e il tipo di istanza per i worker nodes.

playbook.yml: Questo playbook Ansible si occupa dell'installazione e della configurazione di Kubernetes sulle istanze EC2 create con Terraform. Include passaggi come l'installazione di Docker, l'aggiunta del repository Kubernetes, l'installazione dei pacchetti Kubernetes e l'inizializzazione del cluster.

inventory.yml: In questo file definiamo gli host su cui eseguire il playbook Ansible, specificando gli indirizzi IP delle istanze EC2.


