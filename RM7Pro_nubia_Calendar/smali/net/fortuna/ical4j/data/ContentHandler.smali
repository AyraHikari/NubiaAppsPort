.class public interface abstract Lnet/fortuna/ical4j/data/ContentHandler;
.super Ljava/lang/Object;
.source "ContentHandler.java"


# virtual methods
.method public abstract endCalendar()V
.end method

.method public abstract endComponent(Ljava/lang/String;)V
.end method

.method public abstract endProperty(Ljava/lang/String;)V
.end method

.method public abstract parameter(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation
.end method

.method public abstract propertyValue(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startCalendar()V
.end method

.method public abstract startComponent(Ljava/lang/String;)V
.end method

.method public abstract startProperty(Ljava/lang/String;)V
.end method
