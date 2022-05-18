.class Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;
.super Ljava/lang/Object;
.source "CalendarParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/data/CalendarParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropertyListParser"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/data/CalendarParserImpl;
    .param p2, "x1"    # Lnet/fortuna/ical4j/data/CalendarParserImpl$1;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;)V

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
            Ljava/text/ParseException;,
            Ljava/net/URISyntaxException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    const/4 v1, -0x3

    invoke-static {v0, p1, p2, v1}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$700(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    .line 170
    :goto_0
    const-string v0, "END"

    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    const-string v0, "BEGIN"

    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-static {v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$800(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;->access$900(Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 180
    :goto_1
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-static {v0, p1}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1200(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;->this$0:Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-static {v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->access$1000(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;->access$1100(Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    goto :goto_1

    .line 183
    :cond_1
    return-void
.end method
