.class public Lnet/fortuna/ical4j/data/HCalendarParser;
.super Ljava/lang/Object;
.source "HCalendarParser.java"

# interfaces
.implements Lnet/fortuna/ical4j/data/CalendarParser;


# static fields
.field private static final BUILDER_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static final HCAL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final HCAL_DATE_PATTERN:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final HCAL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final HCAL_DATE_TIME_PATTERN:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssz"

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final XPATH:Ljavax/xml/xpath/XPath;

.field private static final XPATH_ATTACH:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_ATTENDEE:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_CATEGORY:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_CLASS:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_CONTACT:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_DESCRIPTION:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_DTEND:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_DTSTAMP:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_DTSTART:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_DURATION:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_LAST_MODIFIED:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_LOCATION:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_METHOD:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_ORGANIZER:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_SEQUENCE:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_STATUS:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_SUMMARY:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_UID:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_URL:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_VEVENTS:Ljavax/xml/xpath/XPathExpression;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 138
    const-class v0, Lnet/fortuna/ical4j/data/HCalendarParser;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    .line 140
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->BUILDER_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 141
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH:Ljavax/xml/xpath/XPath;

    .line 163
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->HCAL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 165
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->HCAL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 168
    sget-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->BUILDER_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 169
    sget-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->BUILDER_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 171
    const-string v0, "//*[contains(@class, \'method\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_METHOD:Ljavax/xml/xpath/XPathExpression;

    .line 172
    const-string v0, "//*[contains(@class, \'vevent\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_VEVENTS:Ljavax/xml/xpath/XPathExpression;

    .line 173
    const-string v0, ".//*[contains(@class, \'dtstart\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DTSTART:Ljavax/xml/xpath/XPathExpression;

    .line 174
    const-string v0, ".//*[contains(@class, \'dtend\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DTEND:Ljavax/xml/xpath/XPathExpression;

    .line 175
    const-string v0, ".//*[contains(@class, \'duration\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DURATION:Ljavax/xml/xpath/XPathExpression;

    .line 176
    const-string v0, ".//*[contains(@class, \'summary\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_SUMMARY:Ljavax/xml/xpath/XPathExpression;

    .line 177
    const-string v0, ".//*[contains(@class, \'uid\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_UID:Ljavax/xml/xpath/XPathExpression;

    .line 178
    const-string v0, ".//*[contains(@class, \'dtstamp\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DTSTAMP:Ljavax/xml/xpath/XPathExpression;

    .line 179
    const-string v0, ".//*[contains(@class, \'category\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_CATEGORY:Ljavax/xml/xpath/XPathExpression;

    .line 180
    const-string v0, ".//*[contains(@class, \'location\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_LOCATION:Ljavax/xml/xpath/XPathExpression;

    .line 181
    const-string v0, ".//*[contains(@class, \'url\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_URL:Ljavax/xml/xpath/XPathExpression;

    .line 182
    const-string v0, ".//*[contains(@class, \'description\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DESCRIPTION:Ljavax/xml/xpath/XPathExpression;

    .line 183
    const-string v0, ".//*[contains(@class, \'last-modified\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_LAST_MODIFIED:Ljavax/xml/xpath/XPathExpression;

    .line 184
    const-string v0, ".//*[contains(@class, \'status\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_STATUS:Ljavax/xml/xpath/XPathExpression;

    .line 185
    const-string v0, ".//*[contains(@class, \'class\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_CLASS:Ljavax/xml/xpath/XPathExpression;

    .line 186
    const-string v0, ".//*[contains(@class, \'attendee\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_ATTENDEE:Ljavax/xml/xpath/XPathExpression;

    .line 187
    const-string v0, ".//*[contains(@class, \'contact\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_CONTACT:Ljavax/xml/xpath/XPathExpression;

    .line 188
    const-string v0, ".//*[contains(@class, \'organizer\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_ORGANIZER:Ljavax/xml/xpath/XPathExpression;

    .line 189
    const-string v0, ".//*[contains(@class, \'sequence\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_SEQUENCE:Ljavax/xml/xpath/XPathExpression;

    .line 190
    const-string v0, ".//*[contains(@class, \'attach\')]"

    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_ATTACH:Ljavax/xml/xpath/XPathExpression;

    .line 191
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildCalendar(Lorg/w3c/dom/Document;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 6
    .param p1, "d"    # Lorg/w3c/dom/Document;
    .param p2, "handler"    # Lnet/fortuna/ical4j/data/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 293
    sget-object v4, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 294
    sget-object v4, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Building calendar"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 296
    :cond_0
    invoke-interface {p2}, Lnet/fortuna/ical4j/data/ContentHandler;->startCalendar()V

    .line 300
    const-string v4, "VERSION"

    invoke-interface {p2, v4}, Lnet/fortuna/ical4j/data/ContentHandler;->startProperty(Ljava/lang/String;)V

    .line 302
    :try_start_0
    sget-object v4, Lnet/fortuna/ical4j/model/property/Version;->VERSION_2_0:Lnet/fortuna/ical4j/model/property/Version;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/property/Version;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lnet/fortuna/ical4j/data/ContentHandler;->propertyValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    const-string v4, "VERSION"

    invoke-interface {p2, v4}, Lnet/fortuna/ical4j/data/ContentHandler;->endProperty(Ljava/lang/String;)V

    .line 308
    sget-object v4, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_METHOD:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v4, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 309
    .local v1, "method":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_1

    .line 310
    const-string v4, "METHOD"

    invoke-direct {p0, v1, v4, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 313
    :cond_1
    sget-object v4, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_VEVENTS:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v4, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElements(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 314
    .local v3, "vevents":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 315
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 316
    .local v2, "vevent":Lorg/w3c/dom/Element;
    invoke-direct {p0, v2, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildEvent(Lorg/w3c/dom/Element;Lnet/fortuna/ical4j/data/ContentHandler;)V

    goto :goto_1

    .line 322
    .end local v2    # "vevent":Lorg/w3c/dom/Element;
    :cond_2
    invoke-interface {p2}, Lnet/fortuna/ical4j/data/ContentHandler;->endCalendar()V

    .line 323
    return-void

    .line 303
    .end local v0    # "i":Ljava/util/Iterator;
    .end local v1    # "method":Lorg/w3c/dom/Element;
    .end local v3    # "vevents":Ljava/util/List;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private buildEvent(Lorg/w3c/dom/Element;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 7
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "handler"    # Lnet/fortuna/ical4j/data/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 326
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 327
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "Building event"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 329
    :cond_0
    const-string v5, "VEVENT"

    invoke-interface {p2, v5}, Lnet/fortuna/ical4j/data/ContentHandler;->startComponent(Ljava/lang/String;)V

    .line 331
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DTSTART:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "DTSTART"

    invoke-direct {p0, v5, v6, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 332
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DTEND:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "DTEND"

    invoke-direct {p0, v5, v6, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 333
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DURATION:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "DURATION"

    invoke-direct {p0, v5, v6, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 334
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_SUMMARY:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "SUMMARY"

    invoke-direct {p0, v5, v6, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 335
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_UID:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "UID"

    invoke-direct {p0, v5, v6, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 336
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DTSTAMP:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "DTSTAMP"

    invoke-direct {p0, v5, v6, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 337
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_CATEGORY:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElements(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 338
    .local v2, "categories":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 339
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 340
    .local v3, "category":Lorg/w3c/dom/Element;
    const-string v5, "CATEGORIES"

    invoke-direct {p0, v3, v5, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    goto :goto_0

    .line 342
    .end local v3    # "category":Lorg/w3c/dom/Element;
    :cond_1
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_LOCATION:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "LOCATION"

    invoke-direct {p0, v5, v6, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 343
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_URL:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "URL"

    invoke-direct {p0, v5, v6, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 344
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DESCRIPTION:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "DESCRIPTION"

    invoke-direct {p0, v5, v6, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 345
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_LAST_MODIFIED:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "LAST-MODIFIED"

    invoke-direct {p0, v5, v6, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 346
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_STATUS:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "STATUS"

    invoke-direct {p0, v5, v6, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 347
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_CLASS:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "CLASS"

    invoke-direct {p0, v5, v6, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 348
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_ATTENDEE:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElements(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 349
    .local v1, "attendees":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 350
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 351
    .local v0, "attendee":Lorg/w3c/dom/Element;
    const-string v5, "ATTENDEE"

    invoke-direct {p0, v0, v5, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    goto :goto_1

    .line 353
    .end local v0    # "attendee":Lorg/w3c/dom/Element;
    :cond_2
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_CONTACT:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "CONTACT"

    invoke-direct {p0, v5, v6, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 354
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_ORGANIZER:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "ORGANIZER"

    invoke-direct {p0, v5, v6, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 355
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_SEQUENCE:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "SEQUENCE"

    invoke-direct {p0, v5, v6, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 356
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_ATTACH:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v5, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "ATTACH"

    invoke-direct {p0, v5, v6, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 358
    const-string v5, "VEVENT"

    invoke-interface {p2, v5}, Lnet/fortuna/ical4j/data/ContentHandler;->endComponent(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 10
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "handler"    # Lnet/fortuna/ical4j/data/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 362
    if-nez p1, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    sget-object v6, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 366
    sget-object v6, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Building property "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 368
    :cond_2
    invoke-static {p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->className(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "className":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "elementName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 372
    .local v5, "value":Ljava/lang/String;
    const-string v6, "abbr"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 377
    const-string v6, "title"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 378
    invoke-static {v5}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 379
    new-instance v6, Lnet/fortuna/ical4j/data/ParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Abbr element \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' requires a non-empty title"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v9}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 380
    :cond_3
    sget-object v6, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 381
    sget-object v6, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting value \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' from title attribute"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 421
    :cond_4
    :goto_1
    invoke-static {v5}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 422
    sget-object v6, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 423
    sget-object v6, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    const-string v7, "Skipping property with empty value"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 382
    :cond_5
    invoke-static {v3}, Lnet/fortuna/ical4j/data/HCalendarParser;->isHeaderElement(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 384
    const-string v6, "title"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 385
    invoke-static {v5}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 386
    sget-object v6, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 387
    sget-object v6, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting value \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' from title attribute"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    .line 389
    :cond_6
    invoke-static {p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->getTextContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v5

    .line 390
    sget-object v6, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 391
    sget-object v6, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting value \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' from text content"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    .line 393
    :cond_7
    const-string v6, "a"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->isUrlProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 394
    const-string v6, "href"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 395
    invoke-static {v5}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 396
    new-instance v6, Lnet/fortuna/ical4j/data/ParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "A element \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' requires a non-empty href"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v9}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 397
    :cond_8
    sget-object v6, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 398
    sget-object v6, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting value \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' from href attribute"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 399
    :cond_9
    const-string v6, "img"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 400
    invoke-static {p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->isUrlProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 401
    const-string v6, "src"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 402
    invoke-static {v5}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 403
    new-instance v6, Lnet/fortuna/ical4j/data/ParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Img element \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' requires a non-empty src"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v9}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 404
    :cond_a
    sget-object v6, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 405
    sget-object v6, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting value \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' from src attribute"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 407
    :cond_b
    const-string v6, "alt"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 408
    invoke-static {v5}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 409
    new-instance v6, Lnet/fortuna/ical4j/data/ParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Img element \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' requires a non-empty alt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v9}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 410
    :cond_c
    sget-object v6, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 411
    sget-object v6, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting value \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' from alt attribute"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 414
    :cond_d
    invoke-static {p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->getTextContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v5

    .line 415
    invoke-static {v5}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 416
    sget-object v6, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 417
    sget-object v6, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting value \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' from text content"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 427
    :cond_e
    invoke-interface {p3, p2}, Lnet/fortuna/ical4j/data/ContentHandler;->startProperty(Ljava/lang/String;)V

    .line 431
    invoke-static {p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->isDateProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 433
    :try_start_0
    invoke-static {v5}, Lnet/fortuna/ical4j/data/HCalendarParser;->icalDate(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v1

    .line 434
    .local v1, "date":Lnet/fortuna/ical4j/model/Date;
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Date;->toString()Ljava/lang/String;

    move-result-object v5

    .line 436
    instance-of v6, v1, Lnet/fortuna/ical4j/model/DateTime;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_f

    .line 438
    :try_start_1
    const-string v6, "VALUE"

    sget-object v7, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/parameter/Value;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p3, v6, v7}, Lnet/fortuna/ical4j/data/ContentHandler;->parameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 446
    .end local v1    # "date":Lnet/fortuna/ical4j/model/Date;
    :cond_f
    :goto_2
    invoke-static {p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->isTextProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 447
    const-string v6, "http://www.w3.org/XML/1998/namespace"

    const-string v7, "lang"

    invoke-interface {p1, v6, v7}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 448
    .local v4, "lang":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 450
    :try_start_2
    const-string v6, "LANGUAGE"

    invoke-interface {p3, v6, v4}, Lnet/fortuna/ical4j/data/ContentHandler;->parameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 458
    .end local v4    # "lang":Ljava/lang/String;
    :cond_10
    :goto_3
    :try_start_3
    invoke-interface {p3, v5}, Lnet/fortuna/ical4j/data/ContentHandler;->propertyValue(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 467
    invoke-interface {p3, p2}, Lnet/fortuna/ical4j/data/ContentHandler;->endProperty(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 441
    :catch_0
    move-exception v2

    .line 442
    .local v2, "e":Ljava/text/ParseException;
    new-instance v6, Lnet/fortuna/ical4j/data/ParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed date value for element \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v9, v2}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v6

    .line 459
    .end local v2    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v2

    .line 460
    .local v2, "e":Ljava/net/URISyntaxException;
    new-instance v6, Lnet/fortuna/ical4j/data/ParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed URI value for element \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v9, v2}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v6

    .line 461
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :catch_2
    move-exception v2

    .line 462
    .local v2, "e":Ljava/text/ParseException;
    new-instance v6, Lnet/fortuna/ical4j/data/ParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed value for element \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v9, v2}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v6

    .line 463
    .end local v2    # "e":Ljava/text/ParseException;
    :catch_3
    move-exception v2

    .line 464
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Lnet/fortuna/ical4j/model/CalendarException;

    invoke-direct {v6, v2}, Lnet/fortuna/ical4j/model/CalendarException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 451
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "lang":Ljava/lang/String;
    :catch_4
    move-exception v6

    goto :goto_3

    .line 439
    .end local v4    # "lang":Ljava/lang/String;
    .restart local v1    # "date":Lnet/fortuna/ical4j/model/Date;
    :catch_5
    move-exception v6

    goto/16 :goto_2
.end method

.method private static className(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "propName"    # Ljava/lang/String;

    .prologue
    .line 477
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;
    .locals 2
    .param p0, "expr"    # Ljava/lang/String;

    .prologue
    .line 195
    :try_start_0
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH:Ljavax/xml/xpath/XPath;

    invoke-interface {v1, p0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljavax/xml/xpath/XPathException;
    new-instance v1, Lnet/fortuna/ical4j/model/CalendarException;

    invoke-direct {v1, v0}, Lnet/fortuna/ical4j/model/CalendarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;
    .locals 2
    .param p0, "expr"    # Ljavax/xml/xpath/XPathExpression;
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-static {p0, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findNode(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 259
    .local v0, "n":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/w3c/dom/Element;

    if-nez v1, :cond_1

    .line 260
    :cond_0
    const/4 v0, 0x0

    .line 261
    .end local v0    # "n":Lorg/w3c/dom/Node;
    :goto_0
    return-object v0

    .restart local v0    # "n":Lorg/w3c/dom/Node;
    :cond_1
    check-cast v0, Lorg/w3c/dom/Element;

    goto :goto_0
.end method

.method private static findElements(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .param p0, "expr"    # Ljavax/xml/xpath/XPathExpression;
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {p0, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findNodes(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 248
    .local v3, "nodes":Lorg/w3c/dom/NodeList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v0, "elements":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 250
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 251
    .local v2, "n":Lorg/w3c/dom/Node;
    instance-of v4, v2, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_0

    .line 252
    check-cast v2, Lorg/w3c/dom/Element;

    .end local v2    # "n":Lorg/w3c/dom/Node;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_1
    return-object v0
.end method

.method private static findNode(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Node;
    .locals 4
    .param p0, "expr"    # Ljavax/xml/xpath/XPathExpression;
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 240
    :try_start_0
    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljavax/xml/xpath/XPathException;
    new-instance v1, Lnet/fortuna/ical4j/data/ParserException;

    const-string v2, "Unable to find node"

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3, v0}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method private static findNodes(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/NodeList;
    .locals 4
    .param p0, "expr"    # Ljavax/xml/xpath/XPathExpression;
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 232
    :try_start_0
    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/NodeList;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljavax/xml/xpath/XPathException;
    new-instance v1, Lnet/fortuna/ical4j/data/ParserException;

    const-string v2, "Unable to find nodes"

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3, v0}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method private static getTextContent(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 5
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 266
    :try_start_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 270
    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Lorg/w3c/dom/DOMException;
    new-instance v2, Lnet/fortuna/ical4j/data/ParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get text content for element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4, v1}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2
.end method

.method private static icalDate(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Date;
    .locals 8
    .param p0, "original"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2d

    const/4 v6, -0x1

    .line 507
    const/16 v3, 0x54

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 512
    const/16 v3, 0x2d

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 513
    new-instance v0, Lnet/fortuna/ical4j/model/Date;

    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :goto_0
    return-object v0

    .line 514
    :catch_0
    move-exception v3

    .line 516
    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/model/Date;

    sget-object v3, Lnet/fortuna/ical4j/data/HCalendarParser;->HCAL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-direct {v0, v3}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/util/Date;)V

    goto :goto_0

    .line 520
    :cond_1
    :try_start_1
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 521
    :catch_1
    move-exception v3

    .line 527
    const/4 v1, 0x0

    .line 529
    .local v1, "normalized":Ljava/lang/String;
    sget-object v3, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 530
    sget-object v3, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "normalizing date-time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 533
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_3

    .line 534
    const-string v3, "Z"

    const-string v4, "GMT-00:00"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    :goto_1
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    sget-object v3, Lnet/fortuna/ical4j/data/HCalendarParser;->HCAL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-direct {v0, v3}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 554
    .local v0, "dt":Lnet/fortuna/ical4j/model/DateTime;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    goto :goto_0

    .line 537
    .end local v0    # "dt":Lnet/fortuna/ical4j/model/DateTime;
    :cond_3
    const-string v3, "GMT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 538
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_5

    .line 539
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GMT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x6

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, "tzId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x6

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 541
    goto :goto_1

    .line 543
    .end local v2    # "tzId":Ljava/lang/String;
    :cond_5
    move-object v1, p0

    goto :goto_1
.end method

.method private static isDateProperty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 487
    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DTEND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DTSTAMP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LAST-MODIFIED"

    .line 488
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 487
    :goto_0
    return v0

    .line 488
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHeaderElement(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 481
    const-string v0, "h1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "h2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "h3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "h4"

    .line 482
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "h5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "h6"

    .line 483
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 481
    :goto_0
    return v0

    .line 483
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTextProperty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 496
    const-string v0, "SUMMARY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LOCATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CATEGORIES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DESCRIPTION"

    .line 497
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ATTENDEE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CONTACT"

    .line 498
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ORGANIZER"

    .line 499
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 496
    :goto_0
    return v0

    .line 499
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUrlProperty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 492
    const-string v0, "URL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private parse(Lorg/xml/sax/InputSource;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 6
    .param p1, "in"    # Lorg/xml/sax/InputSource;
    .param p2, "handler"    # Lnet/fortuna/ical4j/data/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 217
    :try_start_0
    sget-object v3, Lnet/fortuna/ical4j/data/HCalendarParser;->BUILDER_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 218
    .local v0, "d":Lorg/w3c/dom/Document;
    invoke-direct {p0, v0, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildCalendar(Lorg/w3c/dom/Document;Lnet/fortuna/ical4j/data/ContentHandler;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    return-void

    .line 219
    .end local v0    # "d":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v3, Lnet/fortuna/ical4j/model/CalendarException;

    invoke-direct {v3, v1}, Lnet/fortuna/ical4j/model/CalendarException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 221
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v1

    .line 222
    .local v1, "e":Lorg/xml/sax/SAXException;
    instance-of v3, v1, Lorg/xml/sax/SAXParseException;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 223
    check-cast v2, Lorg/xml/sax/SAXParseException;

    .line 224
    .local v2, "pe":Lorg/xml/sax/SAXParseException;
    new-instance v3, Lnet/fortuna/ical4j/data/ParserException;

    const-string v4, "Could not parse XML"

    invoke-virtual {v2}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v5

    invoke-direct {v3, v4, v5, v1}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v3

    .line 226
    .end local v2    # "pe":Lorg/xml/sax/SAXParseException;
    :cond_0
    new-instance v3, Lnet/fortuna/ical4j/data/ParserException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5, v1}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Lnet/fortuna/ical4j/data/ContentHandler;)V
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
    .line 205
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->parse(Lorg/xml/sax/InputSource;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 206
    return-void
.end method

.method public parse(Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "handler"    # Lnet/fortuna/ical4j/data/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->parse(Lorg/xml/sax/InputSource;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 213
    return-void
.end method
