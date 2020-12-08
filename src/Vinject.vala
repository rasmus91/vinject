

namespace Vinject{

    public class Injector : Object{

        private Gee.Map<Type, InstantiationType> service_collection;

        public Injector(){
            base();
            service_collection = new Gee.HashMap<Type, InstantiationType>();
        }

        public void register_service<Tinterface, Timplementation>(ServiceType service_type = ServiceType.SCOPED){
            if(service_collection.has(Tinterface)){
                return;
            }

            var imp = new InstantiationType(Timplementation);
            this.service_collection.set(Tinterface, imp);
        }

        public void register_service_with_arguments<Tinterface, Timplementation>(ServiceType service_type, ...){
            if(service_collection.has(Tinterface)){
                return;
            }

            var imp = new InstantiationType.with_arguments(Timplementation, service_type, )
        }


    }

}

