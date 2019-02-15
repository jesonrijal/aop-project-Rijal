
public aspect TraceAspect_Rijal {

	pointcut classToTrace(): within(ComponentApp)|| within(DataApp)|| within(ServiceApp);

	pointcut methodToTrace():classToTrace() &&execution(public String getName() );
	
	before(): methodToTrace() {String info = thisJoinPointStaticPart.getSignature() + ", "//
			+ thisJoinPointStaticPart.getSourceLocation().getLine();System.out.println("[BGN] "+ info);
			
	}
	
	after(): methodToTrace() 
	{
		String info =  thisJoinPointStaticPart.getSourceLocation().getFileName();
		System.out.println("[END] "+ info);
	}
	
	
	
}
