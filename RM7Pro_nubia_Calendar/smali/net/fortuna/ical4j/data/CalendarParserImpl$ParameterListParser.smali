.class Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;
.super Ljava/lang/Object;
.source "CalendarParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/data/CalendarParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParameterListParser"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/data/CalendarParserImpl;
    .param p2, "x1"    # Lnet/fortuna/ical4j/data/CalendarParserImpl$1;

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 2
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
    .line 282
    :goto_0
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 283
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-static {v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1600(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;->access$1700(Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    goto :goto_0

    .line 285
    :cond_0
    return-void
.end method
