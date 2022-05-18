.class public interface abstract Lnet/fortuna/ical4j/data/CalendarParser;
.super Ljava/lang/Object;
.source "CalendarParser.java"


# virtual methods
.method public abstract parse(Ljava/io/InputStream;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation
.end method

.method public abstract parse(Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation
.end method
