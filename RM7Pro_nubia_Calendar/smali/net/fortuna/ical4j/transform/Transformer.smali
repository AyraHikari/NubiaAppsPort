.class public abstract Lnet/fortuna/ical4j/transform/Transformer;
.super Ljava/lang/Object;
.source "Transformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
.end method

.method public final transform(Lnet/fortuna/ical4j/model/Component;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 1
    .param p1, "component"    # Lnet/fortuna/ical4j/model/Component;

    .prologue
    .line 62
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Calendars;->wrap(Lnet/fortuna/ical4j/model/Component;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/transform/Transformer;->transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object v0

    return-object v0
.end method
