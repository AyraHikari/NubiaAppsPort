.class public Lnet/fortuna/vcal4j/model/frequence/YearlyByDay;
.super Lnet/fortuna/vcal4j/model/frequence/Frequence;
.source "YearlyByDay.java"


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
    .line 7
    invoke-direct {p0}, Lnet/fortuna/vcal4j/model/frequence/Frequence;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/vcal4j/model/frequence/YearlyByDay;->mArrayListOccurDay:Ljava/util/List;

    return-void
.end method

.method static getFrequenceFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "YD"

    return-object v0
.end method


# virtual methods
.method public addModifier(Ljava/lang/String;)V
    .locals 3
    .param p1, "strModifier"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 18
    .local v0, "occurDay":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x16f

    if-ge v1, v2, :cond_0

    .line 19
    iget-object v1, p0, Lnet/fortuna/vcal4j/model/frequence/YearlyByDay;->mArrayListOccurDay:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_0
    return-void
.end method

.method public getArrayListOccurDay()Ljava/util/List;
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
    .line 10
    iget-object v0, p0, Lnet/fortuna/vcal4j/model/frequence/YearlyByDay;->mArrayListOccurDay:Ljava/util/List;

    return-object v0
.end method
