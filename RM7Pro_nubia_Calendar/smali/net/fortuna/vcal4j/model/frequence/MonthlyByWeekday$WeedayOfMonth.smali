.class public Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;
.super Ljava/lang/Object;
.source "MonthlyByWeekday.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeedayOfMonth"
.end annotation


# instance fields
.field number:I

.field week:Lnet/fortuna/ical4j/model/WeekDay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;->number:I

    return v0
.end method

.method public getWeek()Lnet/fortuna/ical4j/model/WeekDay;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;->week:Lnet/fortuna/ical4j/model/WeekDay;

    return-object v0
.end method

.method public setNumber(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 63
    iput p1, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;->number:I

    .line 64
    return-void
.end method

.method public setWeek(Lnet/fortuna/ical4j/model/WeekDay;)V
    .locals 0
    .param p1, "week"    # Lnet/fortuna/ical4j/model/WeekDay;

    .prologue
    .line 69
    iput-object p1, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;->week:Lnet/fortuna/ical4j/model/WeekDay;

    .line 70
    return-void
.end method
