.class Lnet/fortuna/vcal4j/data/FrequenceVisister;
.super Ljava/lang/Object;
.source "FrequenceVisitor.java"

# interfaces
.implements Lnet/fortuna/vcal4j/data/IFrequenceVisister;


# instance fields
.field feq:Lnet/fortuna/vcal4j/model/frequence/Frequence;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeq()Lnet/fortuna/vcal4j/model/frequence/Frequence;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lnet/fortuna/vcal4j/data/FrequenceVisister;->feq:Lnet/fortuna/vcal4j/model/frequence/Frequence;

    return-object v0
.end method

.method public visitDuration(Ljava/lang/String;)V
    .locals 3
    .param p1, "strDuration"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "duration":Ljava/lang/String;
    iget-object v1, p0, Lnet/fortuna/vcal4j/data/FrequenceVisister;->feq:Lnet/fortuna/vcal4j/model/frequence/Frequence;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/fortuna/vcal4j/model/frequence/Frequence;->setDuration(I)V

    .line 36
    return-void
.end method

.method public visitFrequencies(Ljava/lang/String;)V
    .locals 1
    .param p1, "strFreq"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p1}, Lnet/fortuna/vcal4j/model/frequence/FrequenceFactory;->CreateFrequence(Ljava/lang/String;)Lnet/fortuna/vcal4j/model/frequence/Frequence;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/vcal4j/data/FrequenceVisister;->feq:Lnet/fortuna/vcal4j/model/frequence/Frequence;

    .line 20
    return-void
.end method

.method public visitFrequencyModifier(Ljava/lang/String;)V
    .locals 1
    .param p1, "strModifier"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lnet/fortuna/vcal4j/data/FrequenceVisister;->feq:Lnet/fortuna/vcal4j/model/frequence/Frequence;

    invoke-virtual {v0, p1}, Lnet/fortuna/vcal4j/model/frequence/Frequence;->addModifier(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public visitInterval(Ljava/lang/String;)V
    .locals 2
    .param p1, "strInterval"    # Ljava/lang/String;

    .prologue
    .line 24
    iget-object v0, p0, Lnet/fortuna/vcal4j/data/FrequenceVisister;->feq:Lnet/fortuna/vcal4j/model/frequence/Frequence;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/fortuna/vcal4j/model/frequence/Frequence;->setInterval(I)V

    .line 25
    return-void
.end method
