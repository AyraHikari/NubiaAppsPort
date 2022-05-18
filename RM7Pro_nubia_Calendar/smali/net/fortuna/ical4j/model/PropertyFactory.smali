.class public interface abstract Lnet/fortuna/ical4j/model/PropertyFactory;
.super Ljava/lang/Object;
.source "PropertyFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract createProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
.end method

.method public abstract createProperty(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method
