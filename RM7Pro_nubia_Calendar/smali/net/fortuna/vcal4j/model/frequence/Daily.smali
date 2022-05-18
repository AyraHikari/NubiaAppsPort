.class public Lnet/fortuna/vcal4j/model/frequence/Daily;
.super Lnet/fortuna/vcal4j/model/frequence/Frequence;
.source "Daily.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lnet/fortuna/vcal4j/model/frequence/Frequence;-><init>()V

    return-void
.end method

.method static getFrequenceFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    const-string v0, "D"

    return-object v0
.end method


# virtual methods
.method public addModifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "strModifier"    # Ljava/lang/String;

    .prologue
    .line 11
    return-void
.end method
