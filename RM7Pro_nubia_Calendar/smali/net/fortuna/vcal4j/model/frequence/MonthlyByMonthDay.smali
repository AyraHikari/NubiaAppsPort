.class public Lnet/fortuna/vcal4j/model/frequence/MonthlyByMonthDay;
.super Lnet/fortuna/vcal4j/model/frequence/Frequence;
.source "MonthlyByMonthDay.java"


# instance fields
.field mArrayListOccurDay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lnet/fortuna/vcal4j/model/frequence/Frequence;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByMonthDay;->mArrayListOccurDay:Ljava/util/List;

    return-void
.end method

.method static getFrequenceFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "MD"

    return-object v0
.end method


# virtual methods
.method public addModifier(Ljava/lang/String;)V
    .locals 3
    .param p1, "strModifier"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 19
    .local v0, "occurDay":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v2, :cond_1

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 21
    :cond_1
    iget-object v1, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByMonthDay;->mArrayListOccurDay:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_2
    return-void
.end method

.method public getOccurDays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByMonthDay;->mArrayListOccurDay:Ljava/util/List;

    return-object v0
.end method
