.class public Lnet/fortuna/vcal4j/data/FrequenceBuilder;
.super Ljava/lang/Object;
.source "FrequenceBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;Ljava/lang/String;)Lnet/fortuna/vcal4j/model/frequence/Frequence;
    .locals 2
    .param p0, "parser"    # Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;
    .param p1, "strRrule10"    # Ljava/lang/String;

    .prologue
    .line 6
    new-instance v0, Lnet/fortuna/vcal4j/data/FrequenceVisister;

    invoke-direct {v0}, Lnet/fortuna/vcal4j/data/FrequenceVisister;-><init>()V

    .line 7
    .local v0, "visiter":Lnet/fortuna/vcal4j/data/FrequenceVisister;
    invoke-virtual {p0, v0}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->accept(Lnet/fortuna/vcal4j/data/IFrequenceVisister;)V

    .line 8
    invoke-virtual {p0, p1}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->parse(Ljava/lang/String;)I

    .line 9
    invoke-virtual {v0}, Lnet/fortuna/vcal4j/data/FrequenceVisister;->getFeq()Lnet/fortuna/vcal4j/model/frequence/Frequence;

    move-result-object v1

    return-object v1
.end method
