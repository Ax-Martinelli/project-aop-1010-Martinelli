
public aspect TraceAspect_Martinelli {
	pointcut classToTrace(): within(*App);
	pointcut methodToTrace(): classToTrace() && execution(public String getName(..));
	
	before(): methodToTrace() {
		System.out.println("[BGN] "
				+ thisJoinPointStaticPart.getSignature() + " "
				+ thisJoinPointStaticPart.getSourceLocation().getLine()
				);
	}
	after(): methodToTrace() {
		System.out.println("[END] "
				+ thisJoinPointStaticPart.getSourceLocation().getFileName()
		);
	}
}
