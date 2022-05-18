.class public abstract Lnet/fortuna/ical4j/data/CalendarParserFactory;
.super Ljava/lang/Object;
.source "CalendarParserFactory.java"


# static fields
.field public static final KEY_FACTORY_CLASS:Ljava/lang/String; = "net.fortuna.ical4j.parser"

.field private static instance:Lnet/fortuna/ical4j/data/CalendarParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    :try_start_0
    const-string v2, "net.fortuna.ical4j.parser"

    .line 63
    invoke-static {v2}, Lnet/fortuna/ical4j/util/Configurator;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 64
    .local v1, "factoryClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/data/CalendarParserFactory;

    sput-object v2, Lnet/fortuna/ical4j/data/CalendarParserFactory;->instance:Lnet/fortuna/ical4j/data/CalendarParserFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lnet/fortuna/ical4j/data/DefaultCalendarParserFactory;

    invoke-direct {v2}, Lnet/fortuna/ical4j/data/DefaultCalendarParserFactory;-><init>()V

    sput-object v2, Lnet/fortuna/ical4j/data/CalendarParserFactory;->instance:Lnet/fortuna/ical4j/data/CalendarParserFactory;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/fortuna/ical4j/data/CalendarParserFactory;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lnet/fortuna/ical4j/data/CalendarParserFactory;->instance:Lnet/fortuna/ical4j/data/CalendarParserFactory;

    return-object v0
.end method


# virtual methods
.method public abstract createParser()Lnet/fortuna/ical4j/data/CalendarParser;
.end method
