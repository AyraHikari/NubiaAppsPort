.class public Lnet/fortuna/ical4j/data/CalendarParserImpl;
.super Ljava/lang/Object;
.source "CalendarParserImpl.java"

# interfaces
.implements Lnet/fortuna/ical4j/data/CalendarParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;,
        Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;,
        Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;,
        Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;,
        Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;,
        Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;
    }
.end annotation


# static fields
.field private static final UNEXPECTED_TOKEN_MESSAGE:Ljava/lang/String; = "Expected [{0}], read [{1}]"

.field private static final WHITESPACE_CHAR_END:I = 0x14

.field private static final WHITESPACE_CHAR_START:I = 0x0

.field private static final WORD_CHAR_END:I = 0xff

.field private static final WORD_CHAR_START:I = 0x20


# instance fields
.field private final componentListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;

.field private final componentParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;

.field private log:Lorg/apache/commons/logging/Log;

.field private final paramListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;

.field private final paramParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;

.field private final propertyListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;

.field private final propertyParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-class v0, Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    .line 73
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;

    invoke-direct {v0, p0, v1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->componentListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;

    .line 75
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;

    invoke-direct {v0, p0, v1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->componentParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;

    .line 77
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;

    invoke-direct {v0, p0, v1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->propertyListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;

    .line 79
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;

    invoke-direct {v0, p0, v1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->propertyParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;

    .line 81
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;

    invoke-direct {v0, p0, v1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->paramListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;

    .line 83
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;

    invoke-direct {v0, p0, v1}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;-><init>(Lnet/fortuna/ical4j/data/CalendarParserImpl;Lnet/fortuna/ical4j/data/CalendarParserImpl$1;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->paramParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;

    return-void
.end method

.method private absorbWhitespace(Ljava/io/StreamTokenizer;)V
    .locals 2
    .param p1, "tokeniser"    # Ljava/io/StreamTokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 495
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Absorbing extra whitespace.."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    goto :goto_0

    .line 499
    :cond_1
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Aborting: absorbing extra whitespace complete"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 502
    :cond_2
    return-void
.end method

.method static synthetic access$1000(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;
    .locals 1
    .param p0, "x0"    # Lnet/fortuna/ical4j/data/CalendarParserImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->propertyParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyParser;

    return-object v0
.end method

.method static synthetic access$1200(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;)V
    .locals 0
    .param p0, "x0"    # Lnet/fortuna/ical4j/data/CalendarParserImpl;
    .param p1, "x1"    # Ljava/io/StreamTokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->absorbWhitespace(Ljava/io/StreamTokenizer;)V

    return-void
.end method

.method static synthetic access$1300(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lorg/apache/commons/logging/Log;
    .locals 1
    .param p0, "x0"    # Lnet/fortuna/ical4j/data/CalendarParserImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method static synthetic access$1400(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;
    .locals 1
    .param p0, "x0"    # Lnet/fortuna/ical4j/data/CalendarParserImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->paramListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterListParser;

    return-object v0
.end method

.method static synthetic access$1500(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;)I
    .locals 1
    .param p0, "x0"    # Lnet/fortuna/ical4j/data/CalendarParserImpl;
    .param p1, "x1"    # Ljava/io/StreamTokenizer;
    .param p2, "x2"    # Ljava/io/Reader;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->getLineNumber(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;
    .locals 1
    .param p0, "x0"    # Lnet/fortuna/ical4j/data/CalendarParserImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->paramParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ParameterParser;

    return-object v0
.end method

.method static synthetic access$1800(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;
    .locals 1
    .param p0, "x0"    # Lnet/fortuna/ical4j/data/CalendarParserImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->propertyListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;

    return-object v0
.end method

.method static synthetic access$1900(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnet/fortuna/ical4j/data/CalendarParserImpl;
    .param p1, "x1"    # Ljava/io/StreamTokenizer;
    .param p2, "x2"    # Ljava/io/Reader;
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lnet/fortuna/ical4j/data/CalendarParserImpl;Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V
    .locals 0
    .param p0, "x0"    # Lnet/fortuna/ical4j/data/CalendarParserImpl;
    .param p1, "x1"    # Ljava/io/StreamTokenizer;
    .param p2, "x2"    # Ljava/io/Reader;
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    return-void
.end method

.method static synthetic access$800(Lnet/fortuna/ical4j/data/CalendarParserImpl;)Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;
    .locals 1
    .param p0, "x0"    # Lnet/fortuna/ical4j/data/CalendarParserImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->componentParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentParser;

    return-object v0
.end method

.method private assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V
    .locals 6
    .param p1, "tokeniser"    # Ljava/io/StreamTokenizer;
    .param p2, "in"    # Ljava/io/Reader;
    .param p3, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 433
    new-instance v0, Lnet/fortuna/ical4j/data/ParserException;

    const-string v1, "Expected [{0}], read [{1}]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    iget v5, p1, Ljava/io/StreamTokenizer;->ttype:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->getLineNumber(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 438
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 441
    :cond_1
    return-void
.end method

.method private assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;Ljava/lang/String;)V
    .locals 1
    .param p1, "tokeniser"    # Ljava/io/StreamTokenizer;
    .param p2, "in"    # Ljava/io/Reader;
    .param p3, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 452
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;Ljava/lang/String;Z)V

    .line 453
    return-void
.end method

.method private assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "tokeniser"    # Ljava/io/StreamTokenizer;
    .param p2, "in"    # Ljava/io/Reader;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "ignoreCase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 467
    const/4 v0, -0x3

    invoke-direct {p0, p1, p2, v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    .line 469
    if-eqz p4, :cond_0

    .line 470
    iget-object v0, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    new-instance v0, Lnet/fortuna/ical4j/data/ParserException;

    const-string v1, "Expected [{0}], read [{1}]"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    iget-object v3, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->getLineNumber(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 476
    :cond_0
    iget-object v0, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 477
    new-instance v0, Lnet/fortuna/ical4j/data/ParserException;

    const-string v1, "Expected [{0}], read [{1}]"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    iget-object v3, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->getLineNumber(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 482
    :cond_1
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 485
    :cond_2
    return-void
.end method

.method private getLineNumber(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I
    .locals 4
    .param p1, "tokeniser"    # Ljava/io/StreamTokenizer;
    .param p2, "in"    # Ljava/io/Reader;

    .prologue
    .line 510
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->lineno()I

    move-result v0

    .line 511
    .local v0, "line":I
    iget v2, p1, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 512
    add-int/lit8 v0, v0, -0x1

    .line 514
    :cond_0
    instance-of v2, p2, Lnet/fortuna/ical4j/data/UnfoldingReader;

    if-eqz v2, :cond_1

    .line 516
    check-cast p2, Lnet/fortuna/ical4j/data/UnfoldingReader;

    .end local p2    # "in":Ljava/io/Reader;
    invoke-virtual {p2}, Lnet/fortuna/ical4j/data/UnfoldingReader;->getLinesUnfolded()I

    move-result v1

    .line 517
    .local v1, "unfolded":I
    add-int/2addr v0, v1

    .line 519
    .end local v1    # "unfolded":I
    :cond_1
    return v0
.end method


# virtual methods
.method public final parse(Ljava/io/InputStream;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "handler"    # Lnet/fortuna/ical4j/data/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->parse(Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 91
    return-void
.end method

.method public final parse(Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 5
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "handler"    # Lnet/fortuna/ical4j/data/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v1, Ljava/io/StreamTokenizer;

    invoke-direct {v1, p1}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 101
    .local v1, "tokeniser":Ljava/io/StreamTokenizer;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->resetSyntax()V

    .line 102
    const/16 v2, 0x20

    const/16 v3, 0xff

    invoke-virtual {v1, v2, v3}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 103
    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 105
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    .line 106
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    .line 107
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    .line 108
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    .line 109
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/StreamTokenizer;->eolIsSignificant(Z)V

    .line 110
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 111
    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 114
    const-string v2, "BEGIN"

    invoke-direct {p0, v1, p1, v2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;Ljava/lang/String;)V

    .line 116
    const/16 v2, 0x3a

    invoke-direct {p0, v1, p1, v2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    .line 118
    const-string v2, "VCALENDAR"

    const/4 v3, 0x1

    invoke-direct {p0, v1, p1, v2, v3}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;Ljava/lang/String;Z)V

    .line 120
    const/16 v2, 0xa

    invoke-direct {p0, v1, p1, v2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    .line 122
    invoke-interface {p2}, Lnet/fortuna/ical4j/data/ContentHandler;->startCalendar()V

    .line 125
    iget-object v2, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->propertyListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;

    invoke-virtual {v2, v1, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl$PropertyListParser;->parse(Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 128
    iget-object v2, p0, Lnet/fortuna/ical4j/data/CalendarParserImpl;->componentListParser:Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;

    invoke-static {v2, v1, p1, p2}, Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;->access$600(Lnet/fortuna/ical4j/data/CalendarParserImpl$ComponentListParser;Ljava/io/StreamTokenizer;Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 133
    const/16 v2, 0x3a

    invoke-direct {p0, v1, p1, v2}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;I)V

    .line 135
    const-string v2, "VCALENDAR"

    const/4 v3, 0x1

    invoke-direct {p0, v1, p1, v2, v3}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->assertToken(Ljava/io/StreamTokenizer;Ljava/io/Reader;Ljava/lang/String;Z)V

    .line 137
    invoke-interface {p2}, Lnet/fortuna/ical4j/data/ContentHandler;->endCalendar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_0

    .line 142
    check-cast v0, Ljava/io/IOException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 144
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_0
    instance-of v2, v0, Lnet/fortuna/ical4j/data/ParserException;

    if-eqz v2, :cond_1

    .line 145
    check-cast v0, Lnet/fortuna/ical4j/data/ParserException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 148
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lnet/fortuna/ical4j/data/ParserException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, p1}, Lnet/fortuna/ical4j/data/CalendarParserImpl;->getLineNumber(Ljava/io/StreamTokenizer;Ljava/io/Reader;)I

    move-result v4

    invoke-direct {v2, v3, v4, v0}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2
.end method
