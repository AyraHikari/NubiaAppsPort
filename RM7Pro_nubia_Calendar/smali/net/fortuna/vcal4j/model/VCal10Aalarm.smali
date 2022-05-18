.class public Lnet/fortuna/vcal4j/model/VCal10Aalarm;
.super Lnet/fortuna/vcal4j/model/Property10;
.source "VCal10Aalarm.java"

# interfaces
.implements Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VCal10Aalarm"

.field private static final serialVersionUID:J = 0x174876e801L


# instance fields
.field private alarmContent:Ljava/lang/String;

.field parser:Lnet/fortuna/vcal4j/data/VCal10AlarmParser;

.field private repeateCount:I

.field private runTime:Lnet/fortuna/ical4j/model/DateTime;

.field private snoozeTime:Lnet/fortuna/ical4j/model/Dur;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 1
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p3, "factory"    # Lnet/fortuna/ical4j/model/PropertyFactory;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/vcal4j/model/Property10;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 69
    new-instance v0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;

    invoke-direct {v0}, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;-><init>()V

    iput-object v0, p0, Lnet/fortuna/vcal4j/model/VCal10Aalarm;->parser:Lnet/fortuna/vcal4j/data/VCal10AlarmParser;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 1
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "factory"    # Lnet/fortuna/ical4j/model/PropertyFactory;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lnet/fortuna/vcal4j/model/Property10;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 69
    new-instance v0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;

    invoke-direct {v0}, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;-><init>()V

    iput-object v0, p0, Lnet/fortuna/vcal4j/model/VCal10Aalarm;->parser:Lnet/fortuna/vcal4j/data/VCal10AlarmParser;

    .line 95
    return-void
.end method


# virtual methods
.method public getAlarmContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lnet/fortuna/vcal4j/model/VCal10Aalarm;->alarmContent:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeateCount()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lnet/fortuna/vcal4j/model/VCal10Aalarm;->repeateCount:I

    return v0
.end method

.method public getRunTime()Lnet/fortuna/ical4j/model/DateTime;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lnet/fortuna/vcal4j/model/VCal10Aalarm;->runTime:Lnet/fortuna/ical4j/model/DateTime;

    return-object v0
.end method

.method public getSnoozeTime()Lnet/fortuna/ical4j/model/Dur;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lnet/fortuna/vcal4j/model/VCal10Aalarm;->snoozeTime:Lnet/fortuna/ical4j/model/Dur;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lnet/fortuna/vcal4j/model/VCal10Aalarm;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 100
    const-string v0, "VCal10Aalarm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue: value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput-object p1, p0, Lnet/fortuna/vcal4j/model/VCal10Aalarm;->value:Ljava/lang/String;

    .line 102
    new-instance v0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;

    invoke-direct {v0}, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;-><init>()V

    iget-object v1, p0, Lnet/fortuna/vcal4j/model/VCal10Aalarm;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->parse(Ljava/lang/String;Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;)I

    .line 103
    return-void
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 107
    return-void
.end method

.method public visitAudioContentOrDisplayString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lnet/fortuna/vcal4j/model/VCal10Aalarm;->alarmContent:Ljava/lang/String;

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public visitRepeatedCount(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 146
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lnet/fortuna/vcal4j/model/VCal10Aalarm;->repeateCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 149
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public visitRunTime(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 117
    :try_start_0
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;)V

    iput-object v1, p0, Lnet/fortuna/vcal4j/model/VCal10Aalarm;->runTime:Lnet/fortuna/ical4j/model/DateTime;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 118
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 121
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public visitSnoozeTime(Ljava/lang/String;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 129
    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, "+-PWDTHMS"

    const/4 v5, 0x1

    invoke-direct {v1, p1, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 131
    .local v1, "t":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    new-instance v4, Lnet/fortuna/ical4j/model/Dur;

    invoke-direct {v4, p1}, Lnet/fortuna/ical4j/model/Dur;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lnet/fortuna/vcal4j/model/VCal10Aalarm;->snoozeTime:Lnet/fortuna/ical4j/model/Dur;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v1    # "t":Ljava/util/StringTokenizer;
    :goto_0
    return v2

    .restart local v1    # "t":Ljava/util/StringTokenizer;
    :cond_0
    move v2, v3

    .line 134
    goto :goto_0

    .line 136
    .end local v1    # "t":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v2, v3

    .line 138
    goto :goto_0
.end method
