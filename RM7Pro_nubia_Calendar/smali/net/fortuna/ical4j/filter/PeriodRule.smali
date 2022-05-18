.class public Lnet/fortuna/ical4j/filter/PeriodRule;
.super Lnet/fortuna/ical4j/filter/ComponentRule;
.source "PeriodRule.java"


# instance fields
.field private period:Lnet/fortuna/ical4j/model/Period;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/Period;)V
    .locals 0
    .param p1, "period"    # Lnet/fortuna/ical4j/model/Period;

    .prologue
    .line 54
    invoke-direct {p0}, Lnet/fortuna/ical4j/filter/ComponentRule;-><init>()V

    .line 55
    iput-object p1, p0, Lnet/fortuna/ical4j/filter/PeriodRule;->period:Lnet/fortuna/ical4j/model/Period;

    .line 56
    return-void
.end method


# virtual methods
.method public final match(Lnet/fortuna/ical4j/model/Component;)Z
    .locals 2
    .param p1, "component"    # Lnet/fortuna/ical4j/model/Component;

    .prologue
    .line 81
    iget-object v1, p0, Lnet/fortuna/ical4j/filter/PeriodRule;->period:Lnet/fortuna/ical4j/model/Period;

    invoke-virtual {p1, v1}, Lnet/fortuna/ical4j/model/Component;->calculateRecurrenceSet(Lnet/fortuna/ical4j/model/Period;)Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v0

    .line 82
    .local v0, "recurrenceSet":Lnet/fortuna/ical4j/model/PeriodList;
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PeriodList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
