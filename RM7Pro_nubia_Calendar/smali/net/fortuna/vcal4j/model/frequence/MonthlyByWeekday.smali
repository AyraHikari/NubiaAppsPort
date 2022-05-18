.class public Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday;
.super Lnet/fortuna/vcal4j/model/frequence/Frequence;
.source "MonthlyByWeekday.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;
    }
.end annotation


# instance fields
.field bIsCreatingWeedayOfMonth:Z

.field curentItem:Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;

.field mArrayListOccurDay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lnet/fortuna/vcal4j/model/frequence/Frequence;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday;->bIsCreatingWeedayOfMonth:Z

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday;->curentItem:Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday;->mArrayListOccurDay:Ljava/util/List;

    return-void
.end method

.method static getFrequenceFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "MP"

    return-object v0
.end method


# virtual methods
.method public addModifier(Ljava/lang/String;)V
    .locals 3
    .param p1, "strModifier"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 26
    invoke-virtual {p0, p1}, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday;->isNumberic(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 32
    .local v0, "occurDay":Ljava/lang/Integer;
    iget-object v1, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday;->curentItem:Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;

    if-nez v1, :cond_2

    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v2, :cond_1

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 35
    :cond_1
    new-instance v1, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;

    invoke-direct {v1}, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;-><init>()V

    iput-object v1, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday;->curentItem:Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;

    .line 36
    iget-object v1, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday;->curentItem:Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;->number:I

    .line 49
    .end local v0    # "occurDay":Ljava/lang/Integer;
    :cond_2
    :goto_0
    return-void

    .line 43
    :cond_3
    iget-object v1, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday;->curentItem:Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;

    if-eqz v1, :cond_2

    .line 44
    iget-object v1, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday;->curentItem:Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;

    new-instance v2, Lnet/fortuna/ical4j/model/WeekDay;

    invoke-direct {v2, p1}, Lnet/fortuna/ical4j/model/WeekDay;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;->week:Lnet/fortuna/ical4j/model/WeekDay;

    .line 45
    iget-object v1, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday;->mArrayListOccurDay:Ljava/util/List;

    iget-object v2, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday;->curentItem:Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday;->curentItem:Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;

    goto :goto_0
.end method

.method public getArrayListOccurDay()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday$WeedayOfMonth;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday;->mArrayListOccurDay:Ljava/util/List;

    return-object v0
.end method

.method isNumberic(Ljava/lang/String;)Z
    .locals 3
    .param p1, "strValue"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 53
    .local v0, "ch":C
    const/16 v2, 0x30

    if-ge v0, v2, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
