.class public Lnet/fortuna/vcal4j/model/frequence/Weekly;
.super Lnet/fortuna/vcal4j/model/frequence/Frequence;
.source "Weekly.java"


# instance fields
.field mArrayListOccurDay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/fortuna/ical4j/model/WeekDay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lnet/fortuna/vcal4j/model/frequence/Frequence;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/vcal4j/model/frequence/Weekly;->mArrayListOccurDay:Ljava/util/List;

    return-void
.end method

.method static getFrequenceFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string v0, "W"

    return-object v0
.end method


# virtual methods
.method public addModifier(Ljava/lang/String;)V
    .locals 2
    .param p1, "strModifier"    # Ljava/lang/String;

    .prologue
    .line 18
    iget-object v0, p0, Lnet/fortuna/vcal4j/model/frequence/Weekly;->mArrayListOccurDay:Ljava/util/List;

    new-instance v1, Lnet/fortuna/ical4j/model/WeekDay;

    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/WeekDay;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public getOccurList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/fortuna/ical4j/model/WeekDay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lnet/fortuna/vcal4j/model/frequence/Weekly;->mArrayListOccurDay:Ljava/util/List;

    return-object v0
.end method
