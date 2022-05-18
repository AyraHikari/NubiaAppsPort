.class public Lnet/fortuna/vcal4j/model/frequence/FrequenceFactory;
.super Ljava/lang/Object;
.source "FrequenceFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateFrequence(Ljava/lang/String;)Lnet/fortuna/vcal4j/model/frequence/Frequence;
    .locals 1
    .param p0, "strFrequence"    # Ljava/lang/String;

    .prologue
    .line 5
    invoke-static {}, Lnet/fortuna/vcal4j/model/frequence/Daily;->getFrequenceFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lnet/fortuna/vcal4j/model/frequence/Daily;

    invoke-direct {v0}, Lnet/fortuna/vcal4j/model/frequence/Daily;-><init>()V

    .line 18
    :goto_0
    return-object v0

    .line 7
    :cond_0
    invoke-static {}, Lnet/fortuna/vcal4j/model/frequence/Weekly;->getFrequenceFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lnet/fortuna/vcal4j/model/frequence/Weekly;

    invoke-direct {v0}, Lnet/fortuna/vcal4j/model/frequence/Weekly;-><init>()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lnet/fortuna/vcal4j/model/frequence/MonthlyByMonthDay;->getFrequenceFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    new-instance v0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByMonthDay;

    invoke-direct {v0}, Lnet/fortuna/vcal4j/model/frequence/MonthlyByMonthDay;-><init>()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {}, Lnet/fortuna/vcal4j/model/frequence/Weekly;->getFrequenceFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    new-instance v0, Lnet/fortuna/vcal4j/model/frequence/YearlyByDay;

    invoke-direct {v0}, Lnet/fortuna/vcal4j/model/frequence/YearlyByDay;-><init>()V

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {}, Lnet/fortuna/vcal4j/model/frequence/YearlyByMonth;->getFrequenceFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    new-instance v0, Lnet/fortuna/vcal4j/model/frequence/YearlyByMonth;

    invoke-direct {v0}, Lnet/fortuna/vcal4j/model/frequence/YearlyByMonth;-><init>()V

    goto :goto_0

    .line 15
    :cond_4
    invoke-static {}, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday;->getFrequenceFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    new-instance v0, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday;

    invoke-direct {v0}, Lnet/fortuna/vcal4j/model/frequence/MonthlyByWeekday;-><init>()V

    goto :goto_0

    .line 18
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
