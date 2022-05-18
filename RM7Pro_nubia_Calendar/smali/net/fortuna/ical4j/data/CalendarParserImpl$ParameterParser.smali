.class Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;
.super Ljava/lang/Object;
.source "CalendarParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/data/CalendarParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParameterParser"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/data/CalendarParserImpl;
    .param p2, "x1"    # Lnet/fortuna/ical4j/data/CalendarParserImpl$1;

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;)V

    return-void
.end method

.method static synthetic access$1700(Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 0
    .param p0, "x0"    # Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;
    .param p1, "x1"    # Ljava/io/StreamTokenizer;
    .param p2, "x2"    # Ljava/io/Reader;
    .param p3, "x3"    # Lnet/fortuna/ical4j/data/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    return-void
.end method

.method private parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 9
    .param p1, "tokeniser"    # Ljava/io/StreamTokenizer;
    .param p2, "in"    # Ljava/io/Reader;
    .param p3, "handler"    # Lnet/fortuna/ical4j/data/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x3

    const/16 v7, 0x22

    .line 301
    iget-object v4, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-static {v4, p1, p2, v8}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$700(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    .line 303
    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 306
    .local v2, "paramName":Ljava/lang/String;
    iget-object v4, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-static {v4}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1300(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lorg/apache/commons/logging/Log;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 307
    iget-object v4, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-static {v4}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1300(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lorg/apache/commons/logging/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parameter ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 310
    :cond_0
    iget-object v4, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    const/16 v5, 0x3d

    invoke-static {v4, p1, p2, v5}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$700(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    .line 312
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 315
    .local v3, "paramValue":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 316
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 317
    iget-object v4, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 342
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v2, v4}, Lnet/fortuna/ical4j/data/ContentHandler;->parameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    return-void

    .line 320
    :cond_2
    iget-object v4, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 321
    iget-object v4, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    .line 325
    .local v1, "nextToken":I
    :goto_1
    const/16 v4, 0x3b

    if-eq v1, v4, :cond_4

    const/16 v4, 0x3a

    if-eq v1, v4, :cond_4

    const/16 v4, 0x2c

    if-eq v1, v4, :cond_4

    .line 327
    iget v4, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v4, v8, :cond_3

    .line 328
    iget-object v4, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    :goto_2
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    goto :goto_1

    .line 331
    :cond_3
    iget v4, p1, Ljava/io/StreamTokenizer;->ttype:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 336
    :cond_4
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->pushBack()V

    goto :goto_0

    .line 337
    .end local v1    # "nextToken":I
    :cond_5
    iget-object v4, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 338
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->pushBack()V

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "cce":Ljava/lang/ClassCastException;
    new-instance v4, Lnet/fortuna/ical4j/data/ParserException;

    const-string v5, "Error parsing parameter"

    iget-object v6, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-static {v6, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1500(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v6

    invoke-direct {v4, v5, v6, v0}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v4
.end method
