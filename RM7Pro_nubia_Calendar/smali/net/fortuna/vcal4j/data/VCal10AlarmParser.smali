.class public Lnet/fortuna/vcal4j/data/VCal10AlarmParser;
.super Ljava/lang/Object;
.source "VCal10AlarmParser.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mBuffer:Ljava/lang/String;

.field private mVisiter:Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mVisiter:Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;

    .line 29
    const-string v0, "VCal10AlarmParser"

    iput-object v0, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private parseAudioContentOrDisplayMessage(I)I
    .locals 5
    .param p1, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 213
    .local v1, "theDelmPos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 214
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "strValue":Ljava/lang/String;
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mVisiter:Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;

    invoke-interface {v3, v0}, Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;->visitAudioContentOrDisplayString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v2

    .line 223
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v0    # "strValue":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    .restart local v0    # "strValue":Ljava/lang/String;
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mVisiter:Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;

    invoke-interface {v3, v0}, Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;->visitAudioContentOrDisplayString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0
.end method

.method private parseRepeatCount(I)I
    .locals 5
    .param p1, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 188
    .local v1, "theDelmPos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 189
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "strValue":Ljava/lang/String;
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mVisiter:Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;

    invoke-interface {v3, v0}, Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;->visitRepeatedCount(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v2

    .line 197
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "strValue":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .restart local v0    # "strValue":Ljava/lang/String;
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mVisiter:Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;

    invoke-interface {v3, v0}, Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;->visitRepeatedCount(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0
.end method

.method private parseRunTime(I)I
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 137
    .local v1, "theDelmPos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 138
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "strValue":Ljava/lang/String;
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mVisiter:Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;

    invoke-interface {v3, v0}, Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;->visitRunTime(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v2

    .line 147
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "strValue":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    .restart local v0    # "strValue":Ljava/lang/String;
    const-string v3, "VCal10AlarmParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2the RunTime String is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mVisiter:Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;

    invoke-interface {v3, v0}, Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;->visitRunTime(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0
.end method

.method private parseSnoozeTime(I)I
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 160
    .local v1, "theDelmPos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 161
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "strValue":Ljava/lang/String;
    const-string v3, "VCal10AlarmParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1the SnoozeTime String is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mVisiter:Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;

    invoke-interface {v3, v0}, Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;->visitSnoozeTime(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v2

    .line 171
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "strValue":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .restart local v0    # "strValue":Ljava/lang/String;
    const-string v3, "VCal10AlarmParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2the SnoozeTime String is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mVisiter:Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;

    invoke-interface {v3, v0}, Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;->visitSnoozeTime(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0
.end method

.method private removeWs(I)I
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 240
    const/4 v1, 0x0

    .local v1, "sum":I
    :goto_0
    iget-object v2, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 241
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_1
    return v1
.end method


# virtual methods
.method public parse(Ljava/lang/String;Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;)I
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "visiter"    # Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mVisiter:Lnet/fortuna/vcal4j/data/IAlarmPropertyValuesVisiter;

    .line 55
    const/4 v0, 0x0

    .line 59
    .local v0, "offset":I
    const/4 v2, 0x0

    .line 63
    .local v2, "sum":I
    const/4 v1, 0x0

    .line 66
    .local v1, "result":I
    invoke-direct {p0, v0}, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->removeWs(I)I

    move-result v1

    .line 68
    add-int/2addr v2, v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    iget-object v4, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_0

    move v3, v2

    .line 132
    .end local v2    # "sum":I
    .local v3, "sum":I
    :goto_0
    return v3

    .line 74
    .end local v3    # "sum":I
    .restart local v2    # "sum":I
    :cond_0
    invoke-direct {p0, v0}, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->parseRunTime(I)I

    move-result v1

    .line 76
    add-int/2addr v0, v1

    .line 77
    add-int/2addr v2, v1

    .line 78
    iget-object v4, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_1

    move v3, v2

    .line 79
    .end local v2    # "sum":I
    .restart local v3    # "sum":I
    goto :goto_0

    .line 82
    .end local v3    # "sum":I
    .restart local v2    # "sum":I
    :cond_1
    invoke-direct {p0, v0}, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->removeWs(I)I

    move-result v1

    .line 84
    add-int/2addr v2, v1

    .line 85
    add-int/2addr v0, v1

    .line 86
    iget-object v4, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_2

    move v3, v2

    .line 87
    .end local v2    # "sum":I
    .restart local v3    # "sum":I
    goto :goto_0

    .line 91
    .end local v3    # "sum":I
    .restart local v2    # "sum":I
    :cond_2
    invoke-direct {p0, v0}, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->parseSnoozeTime(I)I

    move-result v1

    .line 93
    add-int/2addr v0, v1

    .line 94
    add-int/2addr v2, v1

    .line 95
    iget-object v4, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_3

    move v3, v2

    .line 96
    .end local v2    # "sum":I
    .restart local v3    # "sum":I
    goto :goto_0

    .line 99
    .end local v3    # "sum":I
    .restart local v2    # "sum":I
    :cond_3
    invoke-direct {p0, v0}, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->removeWs(I)I

    move-result v1

    .line 101
    add-int/2addr v2, v1

    .line 102
    add-int/2addr v0, v1

    .line 103
    iget-object v4, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_4

    move v3, v2

    .line 104
    .end local v2    # "sum":I
    .restart local v3    # "sum":I
    goto :goto_0

    .line 108
    .end local v3    # "sum":I
    .restart local v2    # "sum":I
    :cond_4
    invoke-direct {p0, v0}, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->parseRepeatCount(I)I

    move-result v1

    .line 110
    add-int/2addr v0, v1

    .line 111
    add-int/2addr v2, v1

    .line 112
    iget-object v4, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_5

    move v3, v2

    .line 113
    .end local v2    # "sum":I
    .restart local v3    # "sum":I
    goto :goto_0

    .line 116
    .end local v3    # "sum":I
    .restart local v2    # "sum":I
    :cond_5
    invoke-direct {p0, v0}, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->removeWs(I)I

    move-result v1

    .line 118
    add-int/2addr v2, v1

    .line 119
    add-int/2addr v0, v1

    .line 120
    iget-object v4, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_6

    move v3, v2

    .line 121
    .end local v2    # "sum":I
    .restart local v3    # "sum":I
    goto :goto_0

    .line 125
    .end local v3    # "sum":I
    .restart local v2    # "sum":I
    :cond_6
    invoke-direct {p0, v0}, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->parseAudioContentOrDisplayMessage(I)I

    move-result v1

    .line 127
    add-int/2addr v0, v1

    .line 128
    add-int/2addr v2, v1

    .line 129
    iget-object v4, p0, Lnet/fortuna/vcal4j/data/VCal10AlarmParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_7

    move v3, v2

    .line 130
    .end local v2    # "sum":I
    .restart local v3    # "sum":I
    goto :goto_0

    .end local v3    # "sum":I
    .restart local v2    # "sum":I
    :cond_7
    move v3, v2

    .line 132
    .end local v2    # "sum":I
    .restart local v3    # "sum":I
    goto :goto_0
.end method
