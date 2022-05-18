.class Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;
.super Ljava/lang/Object;
.source "CalendarParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/data/CalendarParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropertyParser"
.end annotation


# static fields
.field private static final PARSE_DEBUG_MESSAGE:Ljava/lang/String; = "Property [{0}]"

.field private static final PARSE_EXCEPTION_MESSAGE:Ljava/lang/String; = "Property [{0}]"


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/data/CalendarParserImpl;
    .param p2, "x1"    # Lnet/fortuna/ical4j/data/CalendarParserImpl$1;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;)V

    return-void
.end method

.method static synthetic access$1100(Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 0
    .param p0, "x0"    # Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;
    .param p1, "x1"    # Ljava/io/StreamTokenizer;
    .param p2, "x2"    # Ljava/io/Reader;
    .param p3, "x3"    # Lnet/fortuna/ical4j/data/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;->parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    return-void
.end method

.method private parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 11
    .param p1, "tokeniser"    # Ljava/io/StreamTokenizer;
    .param p2, "in"    # Ljava/io/Reader;
    .param p3, "handler"    # Lnet/fortuna/ical4j/data/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x22

    const/4 v9, -0x1

    .line 204
    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 207
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-static {v5}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1300(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lorg/apache/commons/logging/Log;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 208
    iget-object v5, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-static {v5}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1300(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lorg/apache/commons/logging/Log;

    move-result-object v5

    const-string v6, "Property [{0}]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 211
    :cond_0
    invoke-interface {p3, v2}, Lnet/fortuna/ical4j/data/ContentHandler;->startProperty(Ljava/lang/String;)V

    .line 213
    iget-object v5, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-static {v5}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1400(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;->parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 222
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    .local v4, "value":Ljava/lang/StringBuffer;
    invoke-virtual {p1, v10}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    .line 231
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v3

    .line 233
    .local v3, "nextToken":I
    :goto_0
    const/16 v5, 0xa

    if-eq v3, v5, :cond_2

    if-eq v3, v9, :cond_2

    .line 236
    iget v5, p1, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v6, -0x3

    if-ne v5, v6, :cond_1

    .line 237
    iget-object v5, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    :goto_1
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v3

    goto :goto_0

    .line 240
    :cond_1
    iget v5, p1, Ljava/io/StreamTokenizer;->ttype:I

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 247
    :cond_2
    invoke-virtual {p1, v10}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 249
    if-ne v3, v9, :cond_3

    .line 250
    new-instance v5, Lnet/fortuna/ical4j/data/ParserException;

    const-string v6, "Unexpected end of file"

    iget-object v7, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    .line 251
    invoke-static {v7, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1500(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 255
    :cond_3
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Lnet/fortuna/ical4j/data/ContentHandler;->propertyValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    invoke-interface {p3, v2}, Lnet/fortuna/ical4j/data/ContentHandler;->endProperty(Ljava/lang/String;)V

    .line 266
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 259
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/text/ParseException;->getErrorOffset()I

    move-result v6

    invoke-direct {v1, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 260
    .local v1, "eNew":Ljava/text/ParseException;
    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 261
    throw v1
.end method
