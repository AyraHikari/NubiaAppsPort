.class public Lnet/fortuna/ical4j/data/DefaultCalendarParserFactory;
.super Lnet/fortuna/ical4j/data/CalendarParserFactory;
.source "DefaultCalendarParserFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lnet/fortuna/ical4j/data/CalendarParserFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createParser()Lnet/fortuna/ical4j/data/CalendarParser;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarParserImpl;

    invoke-direct {v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;-><init>()V

    return-object v0
.end method
