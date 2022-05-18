.class public Lnet/fortuna/ical4j/data/HCalendarParserFactory;
.super Lnet/fortuna/ical4j/data/CalendarParserFactory;
.source "HCalendarParserFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lnet/fortuna/ical4j/data/CalendarParserFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createParser()Lnet/fortuna/ical4j/data/CalendarParser;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lnet/fortuna/ical4j/data/HCalendarParser;

    invoke-direct {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;-><init>()V

    return-object v0
.end method
