.class public Lnet/fortuna/ical4j/filter/DateInRangeRule;
.super Lnet/fortuna/ical4j/filter/AbstractDateRule;
.source "DateInRangeRule.java"


# instance fields
.field private final inclusiveMask:I

.field private final range:Lnet/fortuna/ical4j/model/DateRange;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/DateRange;I)V
    .locals 0
    .param p1, "range"    # Lnet/fortuna/ical4j/model/DateRange;
    .param p2, "inclusiveMask"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Lnet/fortuna/ical4j/filter/AbstractDateRule;-><init>()V

    .line 53
    iput-object p1, p0, Lnet/fortuna/ical4j/filter/DateInRangeRule;->range:Lnet/fortuna/ical4j/model/DateRange;

    .line 54
    iput p2, p0, Lnet/fortuna/ical4j/filter/DateInRangeRule;->inclusiveMask:I

    .line 55
    return-void
.end method


# virtual methods
.method protected match(Ljava/util/Date;)Z
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 61
    iget-object v0, p0, Lnet/fortuna/ical4j/filter/DateInRangeRule;->range:Lnet/fortuna/ical4j/model/DateRange;

    iget v1, p0, Lnet/fortuna/ical4j/filter/DateInRangeRule;->inclusiveMask:I

    invoke-virtual {v0, p1, v1}, Lnet/fortuna/ical4j/model/DateRange;->includes(Ljava/util/Date;I)Z

    move-result v0

    return v0
.end method
