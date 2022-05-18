.class public Lnet/fortuna/ical4j/data/CalendarBuilder;
.super Ljava/lang/Object;
.source "CalendarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field protected calendar:Lnet/fortuna/ical4j/model/Calendar;

.field protected component:Lnet/fortuna/ical4j/model/Component;

.field private final contentHandler:Lnet/fortuna/ical4j/data/ContentHandler;

.field private datesMissingTimezones:Ljava/util/List;

.field private final parser:Lnet/fortuna/ical4j/data/CalendarParser;

.field protected property:Lnet/fortuna/ical4j/model/Property;

.field protected subComponent:Lnet/fortuna/ical4j/model/Component;

.field private final tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 125
    invoke-static {}, Lnet/fortuna/ical4j/data/CalendarParserFactory;->getInstance()Lnet/fortuna/ical4j/data/CalendarParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/data/CalendarParserFactory;->createParser()Lnet/fortuna/ical4j/data/CalendarParser;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;-><init>()V

    new-instance v2, Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;

    invoke-direct {v2}, Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;-><init>()V

    .line 126
    invoke-static {}, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->getInstance()Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->createRegistry()Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    move-result-object v3

    .line 125
    invoke-direct {p0, v0, v1, v2, v3}, Lnet/fortuna/ical4j/data/CalendarBuilder;-><init>(Lnet/fortuna/ical4j/data/CalendarParser;Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/data/CalendarParser;)V
    .locals 3
    .param p1, "parser"    # Lnet/fortuna/ical4j/data/CalendarParser;

    .prologue
    .line 134
    new-instance v0, Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;-><init>()V

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;-><init>()V

    .line 135
    invoke-static {}, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->getInstance()Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;

    move-result-object v2

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->createRegistry()Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    move-result-object v2

    .line 134
    invoke-direct {p0, p1, v0, v1, v2}, Lnet/fortuna/ical4j/data/CalendarBuilder;-><init>(Lnet/fortuna/ical4j/data/CalendarParser;Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/data/CalendarParser;Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V
    .locals 2
    .param p1, "parser"    # Lnet/fortuna/ical4j/data/CalendarParser;
    .param p2, "propertyFactoryRegistry"    # Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;
    .param p3, "parameterFactoryRegistry"    # Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;
    .param p4, "tzRegistry"    # Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->parser:Lnet/fortuna/ical4j/data/CalendarParser;

    .line 168
    iput-object p4, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    .line 169
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;

    invoke-static {}, Lnet/fortuna/ical4j/model/ComponentFactory;->getInstance()Lnet/fortuna/ical4j/model/ComponentFactory;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p3}, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;-><init>(Lnet/fortuna/ical4j/data/CalendarBuilder;Lnet/fortuna/ical4j/model/ComponentFactory;Lnet/fortuna/ical4j/model/PropertyFactory;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->contentHandler:Lnet/fortuna/ical4j/data/ContentHandler;

    .line 171
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/data/CalendarParser;Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V
    .locals 2
    .param p1, "parser"    # Lnet/fortuna/ical4j/data/CalendarParser;
    .param p2, "tzRegistry"    # Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    .prologue
    .line 155
    new-instance v0, Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;-><init>()V

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;-><init>()V

    invoke-direct {p0, p1, v0, v1, p2}, Lnet/fortuna/ical4j/data/CalendarBuilder;-><init>(Lnet/fortuna/ical4j/data/CalendarParser;Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V
    .locals 3
    .param p1, "tzRegistry"    # Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    .prologue
    .line 143
    invoke-static {}, Lnet/fortuna/ical4j/data/CalendarParserFactory;->getInstance()Lnet/fortuna/ical4j/data/CalendarParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/data/CalendarParserFactory;->createParser()Lnet/fortuna/ical4j/data/CalendarParser;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;-><init>()V

    new-instance v2, Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;

    invoke-direct {v2}, Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;-><init>()V

    invoke-direct {p0, v0, v1, v2, p1}, Lnet/fortuna/ical4j/data/CalendarBuilder;-><init>(Lnet/fortuna/ical4j/data/CalendarParser;Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V

    .line 145
    return-void
.end method

.method static synthetic access$000(Lnet/fortuna/ical4j/data/CalendarBuilder;Lnet/fortuna/ical4j/model/Component;)V
    .locals 0
    .param p0, "x0"    # Lnet/fortuna/ical4j/data/CalendarBuilder;
    .param p1, "x1"    # Lnet/fortuna/ical4j/model/Component;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/CalendarBuilder;->assertComponent(Lnet/fortuna/ical4j/model/Component;)V

    return-void
.end method

.method static synthetic access$100(Lnet/fortuna/ical4j/data/CalendarBuilder;)Lnet/fortuna/ical4j/model/TimeZoneRegistry;
    .locals 1
    .param p0, "x0"    # Lnet/fortuna/ical4j/data/CalendarBuilder;

    .prologue
    .line 89
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    return-object v0
.end method

.method static synthetic access$200(Lnet/fortuna/ical4j/data/CalendarBuilder;Lnet/fortuna/ical4j/model/Property;)V
    .locals 0
    .param p0, "x0"    # Lnet/fortuna/ical4j/data/CalendarBuilder;
    .param p1, "x1"    # Lnet/fortuna/ical4j/model/Property;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/CalendarBuilder;->assertProperty(Lnet/fortuna/ical4j/model/Property;)V

    return-void
.end method

.method static synthetic access$300(Lnet/fortuna/ical4j/data/CalendarBuilder;Lnet/fortuna/ical4j/model/Property;Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 0
    .param p0, "x0"    # Lnet/fortuna/ical4j/data/CalendarBuilder;
    .param p1, "x1"    # Lnet/fortuna/ical4j/model/Property;
    .param p2, "x2"    # Lnet/fortuna/ical4j/model/TimeZone;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarBuilder;->updateTimeZone(Lnet/fortuna/ical4j/model/Property;Lnet/fortuna/ical4j/model/TimeZone;)V

    return-void
.end method

.method static synthetic access$400(Lnet/fortuna/ical4j/data/CalendarBuilder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/fortuna/ical4j/data/CalendarBuilder;

    .prologue
    .line 89
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->datesMissingTimezones:Ljava/util/List;

    return-object v0
.end method

.method private assertComponent(Lnet/fortuna/ical4j/model/Component;)V
    .locals 2
    .param p1, "component"    # Lnet/fortuna/ical4j/model/Component;

    .prologue
    .line 360
    if-nez p1, :cond_0

    .line 361
    new-instance v0, Lnet/fortuna/ical4j/model/CalendarException;

    const-string v1, "Expected component not initialised"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/CalendarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_0
    return-void
.end method

.method private assertProperty(Lnet/fortuna/ical4j/model/Property;)V
    .locals 2
    .param p1, "property"    # Lnet/fortuna/ical4j/model/Property;

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 367
    new-instance v0, Lnet/fortuna/ical4j/model/CalendarException;

    const-string v1, "Expected property not initialised"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/CalendarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_0
    return-void
.end method

.method private resolveTimezones()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v6, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->datesMissingTimezones:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 406
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/model/Property;

    .line 407
    .local v2, "property":Lnet/fortuna/ical4j/model/Property;
    const-string v6, "TZID"

    invoke-virtual {v2, v6}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v5

    .line 410
    .local v5, "tzParam":Lnet/fortuna/ical4j/model/Parameter;
    if-eqz v5, :cond_0

    .line 415
    iget-object v6, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/Parameter;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/fortuna/ical4j/model/TimeZoneRegistry;->getTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v4

    .line 418
    .local v4, "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    if-eqz v4, :cond_0

    .line 421
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, "strDate":Ljava/lang/String;
    instance-of v6, v2, Lnet/fortuna/ical4j/model/property/DateProperty;

    if-eqz v6, :cond_2

    move-object v6, v2

    .line 425
    check-cast v6, Lnet/fortuna/ical4j/model/property/DateProperty;

    invoke-virtual {v6, v4}, Lnet/fortuna/ical4j/model/property/DateProperty;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 433
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/Property;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/text/ParseException;
    new-instance v6, Lnet/fortuna/ical4j/model/CalendarException;

    invoke-direct {v6, v0}, Lnet/fortuna/ical4j/model/CalendarException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 427
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_2
    instance-of v6, v2, Lnet/fortuna/ical4j/model/property/DateListProperty;

    if-eqz v6, :cond_1

    move-object v6, v2

    .line 428
    check-cast v6, Lnet/fortuna/ical4j/model/property/DateListProperty;

    invoke-virtual {v6, v4}, Lnet/fortuna/ical4j/model/property/DateListProperty;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_1

    .line 437
    :catch_1
    move-exception v0

    .line 439
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v6, Lnet/fortuna/ical4j/model/CalendarException;

    invoke-direct {v6, v0}, Lnet/fortuna/ical4j/model/CalendarException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 443
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .end local v2    # "property":Lnet/fortuna/ical4j/model/Property;
    .end local v3    # "strDate":Ljava/lang/String;
    .end local v4    # "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    .end local v5    # "tzParam":Lnet/fortuna/ical4j/model/Parameter;
    :cond_3
    return-void
.end method

.method private updateTimeZone(Lnet/fortuna/ical4j/model/Property;Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 6
    .param p1, "property"    # Lnet/fortuna/ical4j/model/Property;
    .param p2, "timezone"    # Lnet/fortuna/ical4j/model/TimeZone;

    .prologue
    .line 381
    :try_start_0
    move-object v0, p1

    check-cast v0, Lnet/fortuna/ical4j/model/property/DateProperty;

    move-object v4, v0

    invoke-virtual {v4, p2}, Lnet/fortuna/ical4j/model/property/DateProperty;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/ClassCastException;
    :try_start_1
    move-object v0, p1

    check-cast v0, Lnet/fortuna/ical4j/model/property/DateListProperty;

    move-object v4, v0

    invoke-virtual {v4, p2}, Lnet/fortuna/ical4j/model/property/DateListProperty;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 387
    :catch_1
    move-exception v2

    .line 388
    .local v2, "e2":Ljava/lang/ClassCastException;
    const-string v4, "ical4j.parsing.relaxed"

    invoke-static {v4}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 389
    const-class v4, Lnet/fortuna/ical4j/data/CalendarBuilder;

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v3

    .line 390
    .local v3, "log":Lorg/apache/commons/logging/Log;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error setting timezone ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lnet/fortuna/ical4j/model/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] on property ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 391
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 390
    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 395
    .end local v3    # "log":Lorg/apache/commons/logging/Log;
    :cond_0
    throw v2
.end method


# virtual methods
.method public build(Ljava/io/InputStream;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/data/CalendarBuilder;->build(Ljava/io/Reader;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/io/Reader;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Lnet/fortuna/ical4j/data/UnfoldingReader;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/data/UnfoldingReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/data/CalendarBuilder;->build(Lnet/fortuna/ical4j/data/UnfoldingReader;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public build(Lnet/fortuna/ical4j/data/UnfoldingReader;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 2
    .param p1, "uin"    # Lnet/fortuna/ical4j/data/UnfoldingReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->calendar:Lnet/fortuna/ical4j/model/Calendar;

    .line 208
    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    .line 209
    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    .line 210
    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->datesMissingTimezones:Ljava/util/List;

    .line 213
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->parser:Lnet/fortuna/ical4j/data/CalendarParser;

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->contentHandler:Lnet/fortuna/ical4j/data/ContentHandler;

    invoke-interface {v0, p1, v1}, Lnet/fortuna/ical4j/data/CalendarParser;->parse(Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 215
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->datesMissingTimezones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Lnet/fortuna/ical4j/data/CalendarBuilder;->resolveTimezones()V

    .line 219
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->calendar:Lnet/fortuna/ical4j/model/Calendar;

    return-object v0
.end method

.method public final getRegistry()Lnet/fortuna/ical4j/model/TimeZoneRegistry;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    return-object v0
.end method
