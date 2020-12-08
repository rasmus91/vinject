

namespace Vinject{

    public class InstantiationObject : Object{

        public Type service { get; private set; }
        public ServiceType service_type;


        public Object[] arguments { get; private set; }
        private Object singleton;
        public Object instance { 
            get{
                switch(service_type){
                    case ServiceType.SINGLETON:
                        return this.singleton;
                        break;
                    case 
                }
            } 
        }

        public InstantiationObject(Type implementation_type, ServiceType service_type){
            this.service = implementation_type;
            this.service_type = service_type;

        }
        
        public InstantiationObject.with_args(Type implementation_type, ServiceType service_type, Object[] args){
            this(implementation_type, service_type);
            this.arguments = args;
        }

        private Object instantiate(){
            return GLib.Object.new();
        }

    }


}
