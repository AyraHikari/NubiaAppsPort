.class public Lnet/fortuna/ical4j/model/Recur;
.super Ljava/lang/Object;
.source "Recur.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final BYDAY:Ljava/lang/String; = "BYDAY"

.field private static final BYHOUR:Ljava/lang/String; = "BYHOUR"

.field private static final BYMINUTE:Ljava/lang/String; = "BYMINUTE"

.field private static final BYMONTH:Ljava/lang/String; = "BYMONTH"

.field private static final BYMONTHDAY:Ljava/lang/String; = "BYMONTHDAY"

.field private static final BYSECOND:Ljava/lang/String; = "BYSECOND"

.field private static final BYSETPOS:Ljava/lang/String; = "BYSETPOS"

.field private static final BYWEEKNO:Ljava/lang/String; = "BYWEEKNO"

.field private static final BYYEARDAY:Ljava/lang/String; = "BYYEARDAY"

.field private static final COUNT:Ljava/lang/String; = "COUNT"

.field public static final DAILY:Ljava/lang/String; = "DAILY"

.field private static final FREQ:Ljava/lang/String; = "FREQ"

.field public static final HOURLY:Ljava/lang/String; = "HOURLY"

.field private static final INTERVAL:Ljava/lang/String; = "INTERVAL"

.field public static final KEY_MAX_INCREMENT_COUNT:Ljava/lang/String; = "net.fortuna.ical4j.recur.maxincrementcount"

.field public static final MINUTELY:Ljava/lang/String; = "MINUTELY"

.field public static final MONTHLY:Ljava/lang/String; = "MONTHLY"

.field public static final SECONDLY:Ljava/lang/String; = "SECONDLY"

.field private static final UNTIL:Ljava/lang/String; = "UNTIL"

.field public static final WEEKLY:Ljava/lang/String; = "WEEKLY"

.field private static final WKST:Ljava/lang/String; = "WKST"

.field public static final YEARLY:Ljava/lang/String; = "YEARLY"

.field private static maxIncrementCount:I = 0x0

.field private static final serialVersionUID:J = -0x65c4dabb6cbd4da6L


# instance fields
.field private calIncField:I

.field private count:I

.field private dayList:Lnet/fortuna/ical4j/model/WeekDayList;

.field private experimentalValues:Ljava/util/Map;

.field private frequency:Ljava/lang/String;

.field private hourList:Lnet/fortuna/ical4j/model/NumberList;

.field private interval:I

.field private transient log:Lorg/apache/commons/logging/Log;

.field private minuteList:Lnet/fortuna/ical4j/model/NumberList;

.field private monthDayList:Lnet/fortuna/ical4j/model/NumberList;

.field private monthList:Lnet/fortuna/ical4j/model/NumberList;

.field private secondList:Lnet/fortuna/ical4j/model/NumberList;

.field private setPosList:Lnet/fortuna/ical4j/model/NumberList;

.field private until:Lnet/fortuna/ical4j/model/Date;

.field private weekNoList:Lnet/fortuna/ical4j/model/NumberList;

.field private weekStartDay:Ljava/lang/String;

.field private yearDayList:Lnet/fortuna/ical4j/model/NumberList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 137
    const-string v1, "net.fortuna.ical4j.recur.maxincrementcount"

    invoke-static {v1}, Lnet/fortuna/ical4j/util/Configurator;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lnet/fortuna/ical4j/model/Recur;->maxIncrementCount:I

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    const/16 v1, 0x3e8

    sput v1, Lnet/fortuna/ical4j/model/Recur;->maxIncrementCount:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .param p1, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x16e

    const/16 v8, 0x3b

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const-class v3, Lnet/fortuna/ical4j/model/Recur;

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v3

    iput-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    .line 151
    iput v4, p0, Lnet/fortuna/ical4j/model/Recur;->count:I

    .line 153
    iput v4, p0, Lnet/fortuna/ical4j/model/Recur;->interval:I

    .line 175
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->experimentalValues:Ljava/util/Map;

    .line 186
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v3, ";="

    invoke-direct {v0, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .local v0, "t":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 188
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "token":Ljava/lang/String;
    const-string v3, "FREQ"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_0
    const-string v3, "UNTIL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "untilString":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 195
    new-instance v3, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v3, v2}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    .line 197
    iget-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    check-cast v3, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v3, v6}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    goto :goto_0

    .line 200
    :cond_1
    new-instance v3, Lnet/fortuna/ical4j/model/Date;

    invoke-direct {v3, v2}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    goto :goto_0

    .line 203
    .end local v2    # "untilString":Ljava/lang/String;
    :cond_2
    const-string v3, "COUNT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 204
    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lnet/fortuna/ical4j/model/Recur;->count:I

    goto :goto_0

    .line 206
    :cond_3
    const-string v3, "INTERVAL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 207
    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lnet/fortuna/ical4j/model/Recur;->interval:I

    goto :goto_0

    .line 209
    :cond_4
    const-string v3, "BYSECOND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 210
    new-instance v3, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v7, v8, v7}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->secondList:Lnet/fortuna/ical4j/model/NumberList;

    goto :goto_0

    .line 212
    :cond_5
    const-string v3, "BYMINUTE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 213
    new-instance v3, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v7, v8, v7}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    .line 215
    :cond_6
    const-string v3, "BYHOUR"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 216
    new-instance v3, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x17

    invoke-direct {v3, v4, v7, v5, v7}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->hourList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    .line 218
    :cond_7
    const-string v3, "BYDAY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 219
    new-instance v3, Lnet/fortuna/ical4j/model/WeekDayList;

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/fortuna/ical4j/model/WeekDayList;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    goto/16 :goto_0

    .line 221
    :cond_8
    const-string v3, "BYMONTHDAY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 222
    new-instance v3, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f

    invoke-direct {v3, v4, v6, v5, v6}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    .line 224
    :cond_9
    const-string v3, "BYYEARDAY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 225
    new-instance v3, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6, v9, v6}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    .line 227
    :cond_a
    const-string v3, "BYWEEKNO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 228
    new-instance v3, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x35

    invoke-direct {v3, v4, v6, v5, v6}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    .line 230
    :cond_b
    const-string v3, "BYMONTH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 231
    new-instance v3, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    invoke-direct {v3, v4, v6, v5, v7}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    .line 233
    :cond_c
    const-string v3, "BYSETPOS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 234
    new-instance v3, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6, v9, v6}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    .line 236
    :cond_d
    const-string v3, "WKST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 237
    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Ljava/lang/String;

    goto/16 :goto_0

    .line 241
    :cond_e
    iget-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->experimentalValues:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 244
    .end local v1    # "token":Ljava/lang/String;
    :cond_f
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;->validateFrequency()V

    .line 245
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "frequency"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    const/4 v1, -0x1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const-class v0, Lnet/fortuna/ical4j/model/Recur;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    .line 151
    iput v1, p0, Lnet/fortuna/ical4j/model/Recur;->count:I

    .line 153
    iput v1, p0, Lnet/fortuna/ical4j/model/Recur;->interval:I

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->experimentalValues:Ljava/util/Map;

    .line 271
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Ljava/lang/String;

    .line 272
    iput p2, p0, Lnet/fortuna/ical4j/model/Recur;->count:I

    .line 273
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;->validateFrequency()V

    .line 274
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/Date;)V
    .locals 2
    .param p1, "frequency"    # Ljava/lang/String;
    .param p2, "until"    # Lnet/fortuna/ical4j/model/Date;

    .prologue
    const/4 v1, -0x1

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const-class v0, Lnet/fortuna/ical4j/model/Recur;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    .line 151
    iput v1, p0, Lnet/fortuna/ical4j/model/Recur;->count:I

    .line 153
    iput v1, p0, Lnet/fortuna/ical4j/model/Recur;->interval:I

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->experimentalValues:Ljava/util/Map;

    .line 261
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Ljava/lang/String;

    .line 262
    iput-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    .line 263
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;->validateFrequency()V

    .line 264
    return-void
.end method

.method private applySetPosRules(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 6
    .param p1, "dates"    # Lnet/fortuna/ical4j/model/DateList;

    .prologue
    .line 821
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getSetPosList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v5

    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 838
    .end local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :goto_0
    return-object p1

    .line 825
    .restart local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 826
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v3

    .line 827
    .local v3, "setPosDates":Lnet/fortuna/ical4j/model/DateList;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->size()I

    move-result v4

    .line 828
    .local v4, "size":I
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getSetPosList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v5

    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/NumberList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 829
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 830
    .local v2, "setPos":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 831
    .local v1, "pos":I
    if-lez v1, :cond_2

    if-gt v1, v4, :cond_2

    .line 832
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1, v5}, Lnet/fortuna/ical4j/model/DateList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/fortuna/ical4j/model/DateList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 834
    :cond_2
    if-gez v1, :cond_1

    neg-int v5, v4

    if-lt v1, v5, :cond_1

    .line 835
    add-int v5, v4, v1

    invoke-virtual {p1, v5}, Lnet/fortuna/ical4j/model/DateList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/fortuna/ical4j/model/DateList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "pos":I
    .end local v2    # "setPos":Ljava/lang/Integer;
    :cond_3
    move-object p1, v3

    .line 838
    goto :goto_0
.end method

.method private getAbsWeekDays(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/WeekDay;)Ljava/util/List;
    .locals 9
    .param p1, "date"    # Lnet/fortuna/ical4j/model/Date;
    .param p2, "type"    # Lnet/fortuna/ical4j/model/parameter/Value;
    .param p3, "weekDay"    # Lnet/fortuna/ical4j/model/WeekDay;

    .prologue
    .line 988
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    move-result-object v0

    .line 990
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v2, 0x2

    .line 991
    .local v2, "calendarWeekStartDay":I
    iget-object v7, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 992
    new-instance v7, Lnet/fortuna/ical4j/model/WeekDay;

    iget-object v8, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Ljava/lang/String;

    invoke-direct {v7, v8}, Lnet/fortuna/ical4j/model/WeekDay;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lnet/fortuna/ical4j/model/WeekDay;->getCalendarDay(Lnet/fortuna/ical4j/model/WeekDay;)I

    move-result v2

    .line 994
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 995
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 997
    new-instance v3, Lnet/fortuna/ical4j/model/DateList;

    invoke-direct {v3, p2}, Lnet/fortuna/ical4j/model/DateList;-><init>(Lnet/fortuna/ical4j/model/parameter/Value;)V

    .line 998
    .local v3, "days":Lnet/fortuna/ical4j/model/DateList;
    instance-of v7, p1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v7, :cond_1

    move-object v7, p1

    .line 999
    check-cast v7, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1000
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lnet/fortuna/ical4j/model/DateList;->setUtc(Z)V

    .line 1006
    .end local p1    # "date":Lnet/fortuna/ical4j/model/Date;
    :cond_1
    :goto_0
    invoke-static {p3}, Lnet/fortuna/ical4j/model/WeekDay;->getCalendarDay(Lnet/fortuna/ical4j/model/WeekDay;)I

    move-result v1

    .line 1007
    .local v1, "calDay":I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_3

    .line 1053
    .end local v3    # "days":Lnet/fortuna/ical4j/model/DateList;
    :goto_1
    return-object v3

    .line 1003
    .end local v1    # "calDay":I
    .restart local v3    # "days":Lnet/fortuna/ical4j/model/DateList;
    .restart local p1    # "date":Lnet/fortuna/ical4j/model/Date;
    :cond_2
    check-cast p1, Lnet/fortuna/ical4j/model/DateTime;

    .end local p1    # "date":Lnet/fortuna/ical4j/model/Date;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v7

    invoke-virtual {v3, v7}, Lnet/fortuna/ical4j/model/DateList;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0

    .line 1011
    .restart local v1    # "calDay":I
    :cond_3
    const-string v7, "DAILY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1012
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v7, v1, :cond_4

    .line 1013
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-static {v7, p2}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    .line 1053
    :cond_4
    :goto_2
    invoke-virtual {p3}, Lnet/fortuna/ical4j/model/WeekDay;->getOffset()I

    move-result v7

    invoke-direct {p0, v3, v7}, Lnet/fortuna/ical4j/model/Recur;->getOffsetDates(Lnet/fortuna/ical4j/model/DateList;I)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 1016
    :cond_5
    const-string v7, "WEEKLY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getWeekNoList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v7

    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 1017
    :cond_6
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1019
    .local v5, "weekNo":I
    const/4 v7, 0x7

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 1020
    :goto_3
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v7, v1, :cond_7

    .line 1021
    const/4 v7, 0x7

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_3

    .line 1024
    :cond_7
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v7, v5, :cond_4

    .line 1025
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-static {v7, p2}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_2

    .line 1029
    .end local v5    # "weekNo":I
    :cond_8
    const-string v7, "MONTHLY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMonthList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v7

    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    .line 1030
    :cond_9
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1032
    .local v4, "month":I
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 1033
    :goto_4
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v7, v1, :cond_a

    .line 1034
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_4

    .line 1036
    :cond_a
    :goto_5
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v7, v4, :cond_4

    .line 1037
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-static {v7, p2}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    .line 1038
    const/4 v7, 0x5

    const/4 v8, 0x7

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_5

    .line 1041
    .end local v4    # "month":I
    :cond_b
    const-string v7, "YEARLY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1042
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1044
    .local v6, "year":I
    const/4 v7, 0x6

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 1045
    :goto_6
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v7, v1, :cond_c

    .line 1046
    const/4 v7, 0x6

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_6

    .line 1048
    :cond_c
    :goto_7
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v7, v6, :cond_4

    .line 1049
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-static {v7, p2}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    .line 1050
    const/4 v7, 0x6

    const/4 v8, 0x7

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_7
.end method

.method private getCandidates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;
    .locals 4
    .param p1, "date"    # Lnet/fortuna/ical4j/model/Date;
    .param p2, "value"    # Lnet/fortuna/ical4j/model/parameter/Value;

    .prologue
    .line 756
    new-instance v0, Lnet/fortuna/ical4j/model/DateList;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/DateList;-><init>(Lnet/fortuna/ical4j/model/parameter/Value;)V

    .line 757
    .local v0, "dates":Lnet/fortuna/ical4j/model/DateList;
    instance-of v1, p1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 758
    check-cast v1, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 759
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateList;->setUtc(Z)V

    .line 765
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    .line 766
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->getMonthVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 768
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 769
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dates after BYMONTH processing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 771
    :cond_1
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->getWeekNoVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 773
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 774
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dates after BYWEEKNO processing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 776
    :cond_2
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->getYearDayVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 778
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 779
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dates after BYYEARDAY processing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 781
    :cond_3
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->getMonthDayVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 783
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 784
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dates after BYMONTHDAY processing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 786
    :cond_4
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->getDayVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 788
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 789
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dates after BYDAY processing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 791
    :cond_5
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->getHourVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 793
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 794
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dates after BYHOUR processing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 796
    :cond_6
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->getMinuteVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 798
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 799
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dates after BYMINUTE processing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 801
    :cond_7
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->getSecondVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 803
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 804
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dates after BYSECOND processing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 806
    :cond_8
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->applySetPosRules(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 808
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 809
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dates after SETPOS processing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 811
    :cond_9
    return-object v0

    :cond_a
    move-object v1, p1

    .line 762
    check-cast v1, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateList;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto/16 :goto_0
.end method

.method private static final getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 2
    .param p0, "origList"    # Lnet/fortuna/ical4j/model/DateList;

    .prologue
    .line 1231
    new-instance v0, Lnet/fortuna/ical4j/model/DateList;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateList;-><init>(Lnet/fortuna/ical4j/model/parameter/Value;)V

    .line 1232
    .local v0, "list":Lnet/fortuna/ical4j/model/DateList;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->isUtc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1233
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateList;->setUtc(Z)V

    .line 1237
    :goto_0
    return-object v0

    .line 1235
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateList;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0
.end method

.method private getDayVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 7
    .param p1, "dates"    # Lnet/fortuna/ical4j/model/DateList;

    .prologue
    .line 955
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getDayList()Lnet/fortuna/ical4j/model/WeekDayList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/WeekDayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 977
    .end local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :goto_0
    return-object p1

    .line 958
    .restart local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v5

    .line 959
    .local v5, "weekDayDates":Lnet/fortuna/ical4j/model/DateList;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 960
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Date;

    .line 961
    .local v1, "date":Lnet/fortuna/ical4j/model/Date;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getDayList()Lnet/fortuna/ical4j/model/WeekDayList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/WeekDayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "j":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 962
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/fortuna/ical4j/model/WeekDay;

    .line 965
    .local v4, "weekDay":Lnet/fortuna/ical4j/model/WeekDay;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getYearDayList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMonthDayList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 966
    :cond_3
    invoke-static {v1}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    move-result-object v0

    .line 967
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 968
    invoke-static {v0}, Lnet/fortuna/ical4j/model/WeekDay;->getWeekDay(Ljava/util/Calendar;)Lnet/fortuna/ical4j/model/WeekDay;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnet/fortuna/ical4j/model/WeekDay;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 969
    invoke-virtual {v5, v1}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_1

    .line 973
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_4
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v6

    invoke-direct {p0, v1, v6, v4}, Lnet/fortuna/ical4j/model/Recur;->getAbsWeekDays(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/WeekDay;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/fortuna/ical4j/model/DateList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .end local v1    # "date":Lnet/fortuna/ical4j/model/Date;
    .end local v3    # "j":Ljava/util/Iterator;
    .end local v4    # "weekDay":Lnet/fortuna/ical4j/model/WeekDay;
    :cond_5
    move-object p1, v5

    .line 977
    goto :goto_0
.end method

.method private getHourVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 8
    .param p1, "dates"    # Lnet/fortuna/ical4j/model/DateList;

    .prologue
    .line 1086
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getHourList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1100
    .end local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :goto_0
    return-object p1

    .line 1089
    .restart local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v3

    .line 1090
    .local v3, "hourlyDates":Lnet/fortuna/ical4j/model/DateList;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1091
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Date;

    .line 1092
    .local v1, "date":Lnet/fortuna/ical4j/model/Date;
    invoke-static {v1}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    move-result-object v0

    .line 1093
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1094
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getHourList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/NumberList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "j":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1095
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1096
    .local v2, "hour":Ljava/lang/Integer;
    const/16 v6, 0xb

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 1097
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_1

    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "date":Lnet/fortuna/ical4j/model/Date;
    .end local v2    # "hour":Ljava/lang/Integer;
    .end local v5    # "j":Ljava/util/Iterator;
    :cond_2
    move-object p1, v3

    .line 1100
    goto :goto_0
.end method

.method private getMinuteVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 8
    .param p1, "dates"    # Lnet/fortuna/ical4j/model/DateList;

    .prologue
    .line 1110
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMinuteList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1124
    .end local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :goto_0
    return-object p1

    .line 1113
    .restart local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v5

    .line 1114
    .local v5, "minutelyDates":Lnet/fortuna/ical4j/model/DateList;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1115
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Date;

    .line 1116
    .local v1, "date":Lnet/fortuna/ical4j/model/Date;
    invoke-static {v1}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    move-result-object v0

    .line 1117
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1118
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMinuteList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/NumberList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "j":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1119
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1120
    .local v4, "minute":Ljava/lang/Integer;
    const/16 v6, 0xc

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 1121
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_1

    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "date":Lnet/fortuna/ical4j/model/Date;
    .end local v3    # "j":Ljava/util/Iterator;
    .end local v4    # "minute":Ljava/lang/Integer;
    :cond_2
    move-object p1, v5

    .line 1124
    goto :goto_0
.end method

.method private getMonthDayVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 11
    .param p1, "dates"    # Lnet/fortuna/ical4j/model/DateList;

    .prologue
    .line 922
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMonthDayList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v7

    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 945
    .end local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :goto_0
    return-object p1

    .line 925
    .restart local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v6

    .line 926
    .local v6, "monthDayDates":Lnet/fortuna/ical4j/model/DateList;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 927
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Date;

    .line 928
    .local v1, "date":Lnet/fortuna/ical4j/model/Date;
    invoke-static {v1}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    move-result-object v0

    .line 929
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setLenient(Z)V

    .line 930
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 931
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMonthDayList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v7

    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/NumberList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "j":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 932
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 934
    .local v5, "monthDay":Ljava/lang/Integer;
    const/4 v7, 0x5

    :try_start_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9}, Lnet/fortuna/ical4j/util/Dates;->getAbsMonthDay(Ljava/util/Date;I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 935
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 937
    :catch_0
    move-exception v3

    .line 938
    .local v3, "iae":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 939
    iget-object v7, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid day of month: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 940
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 939
    invoke-static {v9, v10}, Lnet/fortuna/ical4j/util/Dates;->getAbsMonthDay(Ljava/util/Date;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    goto :goto_1

    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "date":Lnet/fortuna/ical4j/model/Date;
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v4    # "j":Ljava/util/Iterator;
    .end local v5    # "monthDay":Ljava/lang/Integer;
    :cond_3
    move-object p1, v6

    .line 945
    goto/16 :goto_0
.end method

.method private getMonthVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 9
    .param p1, "dates"    # Lnet/fortuna/ical4j/model/DateList;

    .prologue
    const/4 v8, 0x2

    .line 848
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMonthList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 864
    .end local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :goto_0
    return-object p1

    .line 851
    .restart local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v5

    .line 852
    .local v5, "monthlyDates":Lnet/fortuna/ical4j/model/DateList;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 853
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Date;

    .line 854
    .local v1, "date":Lnet/fortuna/ical4j/model/Date;
    invoke-static {v1}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    move-result-object v0

    .line 855
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 856
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMonthList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/NumberList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "j":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 857
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 860
    .local v4, "month":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v8, v6}, Ljava/util/Calendar;->roll(II)V

    .line 861
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_1

    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "date":Lnet/fortuna/ical4j/model/Date;
    .end local v3    # "j":Ljava/util/Iterator;
    .end local v4    # "month":Ljava/lang/Integer;
    :cond_2
    move-object p1, v5

    .line 864
    goto :goto_0
.end method

.method private getOffsetDates(Lnet/fortuna/ical4j/model/DateList;I)Ljava/util/List;
    .locals 3
    .param p1, "dates"    # Lnet/fortuna/ical4j/model/DateList;
    .param p2, "offset"    # I

    .prologue
    .line 1065
    if-nez p2, :cond_0

    .line 1076
    .end local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :goto_0
    return-object p1

    .line 1068
    .restart local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 1069
    .local v0, "offsetDates":Ljava/util/List;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->size()I

    move-result v1

    .line 1070
    .local v1, "size":I
    if-gez p2, :cond_2

    neg-int v2, v1

    if-lt p2, v2, :cond_2

    .line 1071
    add-int v2, v1, p2

    invoke-virtual {p1, v2}, Lnet/fortuna/ical4j/model/DateList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    move-object p1, v0

    .line 1076
    goto :goto_0

    .line 1073
    :cond_2
    if-lez p2, :cond_1

    if-gt p2, v1, :cond_1

    .line 1074
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1, v2}, Lnet/fortuna/ical4j/model/DateList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getSecondVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 8
    .param p1, "dates"    # Lnet/fortuna/ical4j/model/DateList;

    .prologue
    .line 1134
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getSecondList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1148
    .end local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :goto_0
    return-object p1

    .line 1137
    .restart local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v5

    .line 1138
    .local v5, "secondlyDates":Lnet/fortuna/ical4j/model/DateList;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1139
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Date;

    .line 1140
    .local v1, "date":Lnet/fortuna/ical4j/model/Date;
    invoke-static {v1}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    move-result-object v0

    .line 1141
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1142
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getSecondList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/NumberList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "j":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1143
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1144
    .local v4, "second":Ljava/lang/Integer;
    const/16 v6, 0xd

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 1145
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_1

    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "date":Lnet/fortuna/ical4j/model/Date;
    .end local v3    # "j":Ljava/util/Iterator;
    .end local v4    # "second":Ljava/lang/Integer;
    :cond_2
    move-object p1, v5

    .line 1148
    goto :goto_0
.end method

.method private getWeekNoVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 9
    .param p1, "dates"    # Lnet/fortuna/ical4j/model/DateList;

    .prologue
    .line 874
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getWeekNoList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 888
    .end local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :goto_0
    return-object p1

    .line 877
    .restart local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v5

    .line 878
    .local v5, "weekNoDates":Lnet/fortuna/ical4j/model/DateList;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 879
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Date;

    .line 880
    .local v1, "date":Lnet/fortuna/ical4j/model/Date;
    invoke-static {v1}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    move-result-object v0

    .line 881
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 882
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getWeekNoList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/NumberList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "j":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 883
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 884
    .local v4, "weekNo":Ljava/lang/Integer;
    const/4 v6, 0x3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Lnet/fortuna/ical4j/util/Dates;->getAbsWeekNo(Ljava/util/Date;I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 885
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_1

    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "date":Lnet/fortuna/ical4j/model/Date;
    .end local v3    # "j":Ljava/util/Iterator;
    .end local v4    # "weekNo":Ljava/lang/Integer;
    :cond_2
    move-object p1, v5

    .line 888
    goto :goto_0
.end method

.method private getYearDayVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 9
    .param p1, "dates"    # Lnet/fortuna/ical4j/model/DateList;

    .prologue
    .line 898
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getYearDayList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 912
    .end local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :goto_0
    return-object p1

    .line 901
    .restart local p1    # "dates":Lnet/fortuna/ical4j/model/DateList;
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v5

    .line 902
    .local v5, "yearDayDates":Lnet/fortuna/ical4j/model/DateList;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 903
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Date;

    .line 904
    .local v1, "date":Lnet/fortuna/ical4j/model/Date;
    invoke-static {v1}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    move-result-object v0

    .line 905
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 906
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getYearDayList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/NumberList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "j":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 907
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 908
    .local v4, "yearDay":Ljava/lang/Integer;
    const/4 v6, 0x6

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Lnet/fortuna/ical4j/util/Dates;->getAbsYearDay(Ljava/util/Date;I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 909
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_1

    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "date":Lnet/fortuna/ical4j/model/Date;
    .end local v3    # "j":Ljava/util/Iterator;
    .end local v4    # "yearDay":Ljava/lang/Integer;
    :cond_2
    move-object p1, v5

    .line 912
    goto :goto_0
.end method

.method private increment(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x1

    .line 745
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getInterval()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getInterval()I

    move-result v0

    .line 746
    .local v0, "calInterval":I
    :cond_0
    iget v1, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 747
    return-void
.end method

.method private nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Ljava/util/StringTokenizer;
    .param p2, "lastToken"    # Ljava/lang/String;

    .prologue
    .line 249
    :try_start_0
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/util/NoSuchElementException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing expected token, last token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1220
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1221
    const-class v0, Lnet/fortuna/ical4j/model/Recur;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    .line 1222
    return-void
.end method

.method private validateFrequency()V
    .locals 3

    .prologue
    .line 1152
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A recurrence rule MUST contain a FREQ rule part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1156
    :cond_0
    const-string v0, "SECONDLY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1157
    const/16 v0, 0xd

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    .line 1181
    :goto_0
    return-void

    .line 1159
    :cond_1
    const-string v0, "MINUTELY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1160
    const/16 v0, 0xc

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    goto :goto_0

    .line 1162
    :cond_2
    const-string v0, "HOURLY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1163
    const/16 v0, 0xb

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    goto :goto_0

    .line 1165
    :cond_3
    const-string v0, "DAILY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1166
    const/4 v0, 0x6

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    goto :goto_0

    .line 1168
    :cond_4
    const-string v0, "WEEKLY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1169
    const/4 v0, 0x3

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    goto :goto_0

    .line 1171
    :cond_5
    const-string v0, "MONTHLY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1172
    const/4 v0, 0x2

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    goto :goto_0

    .line 1174
    :cond_6
    const-string v0, "YEARLY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1175
    const/4 v0, 0x1

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    goto :goto_0

    .line 1178
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid FREQ rule part \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in recurrence rule"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lnet/fortuna/ical4j/model/Recur;->count:I

    return v0
.end method

.method public final getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;
    .locals 6
    .param p1, "seed"    # Lnet/fortuna/ical4j/model/Date;
    .param p2, "periodStart"    # Lnet/fortuna/ical4j/model/Date;
    .param p3, "periodEnd"    # Lnet/fortuna/ical4j/model/Date;
    .param p4, "value"    # Lnet/fortuna/ical4j/model/parameter/Value;

    .prologue
    .line 545
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lnet/fortuna/ical4j/model/Recur;->getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;I)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    return-object v0
.end method

.method public final getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;I)Lnet/fortuna/ical4j/model/DateList;
    .locals 12
    .param p1, "seed"    # Lnet/fortuna/ical4j/model/Date;
    .param p2, "periodStart"    # Lnet/fortuna/ical4j/model/Date;
    .param p3, "periodEnd"    # Lnet/fortuna/ical4j/model/Date;
    .param p4, "value"    # Lnet/fortuna/ical4j/model/parameter/Value;
    .param p5, "maxCount"    # I

    .prologue
    .line 566
    new-instance v5, Lnet/fortuna/ical4j/model/DateList;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Lnet/fortuna/ical4j/model/DateList;-><init>(Lnet/fortuna/ical4j/model/parameter/Value;)V

    .line 567
    .local v5, "dates":Lnet/fortuna/ical4j/model/DateList;
    instance-of v10, p1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v10, :cond_0

    move-object v10, p1

    .line 568
    check-cast v10, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v10}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 569
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lnet/fortuna/ical4j/model/DateList;->setUtc(Z)V

    .line 575
    :cond_0
    :goto_0
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    move-result-object v1

    .line 576
    .local v1, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 580
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_2

    .line 581
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Calendar;

    .line 582
    .local v9, "seededCal":Ljava/util/Calendar;
    :goto_1
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 583
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 584
    invoke-direct {p0, v9}, Lnet/fortuna/ical4j/model/Recur;->increment(Ljava/util/Calendar;)V

    goto :goto_1

    .end local v1    # "cal":Ljava/util/Calendar;
    .end local v9    # "seededCal":Ljava/util/Calendar;
    :cond_1
    move-object v10, p1

    .line 572
    check-cast v10, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v10}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v10

    invoke-virtual {v5, v10}, Lnet/fortuna/ical4j/model/DateList;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0

    .line 588
    .restart local v1    # "cal":Ljava/util/Calendar;
    :cond_2
    const/4 v7, 0x0

    .line 589
    .local v7, "invalidCandidateCount":I
    const/4 v8, 0x0

    .line 590
    .local v8, "noCandidateIncrementCount":I
    const/4 v2, 0x0

    .line 591
    .local v2, "candidate":Lnet/fortuna/ical4j/model/Date;
    :goto_2
    if-ltz p5, :cond_3

    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/DateList;->size()I

    move-result v10

    move/from16 v0, p5

    if-ge v10, v0, :cond_4

    .line 592
    :cond_3
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-static {v10, v0}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v3

    .line 594
    .local v3, "candidateSeed":Lnet/fortuna/ical4j/model/Date;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    move-result-object v10

    if-eqz v10, :cond_5

    if-eqz v2, :cond_5

    .line 595
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    move-result-object v10

    invoke-virtual {v2, v10}, Lnet/fortuna/ical4j/model/Date;->after(Ljava/util/Date;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 651
    .end local v3    # "candidateSeed":Lnet/fortuna/ical4j/model/Date;
    :cond_4
    :goto_3
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 652
    return-object v5

    .line 599
    .restart local v3    # "candidateSeed":Lnet/fortuna/ical4j/model/Date;
    :cond_5
    if-eqz p3, :cond_6

    if-eqz v2, :cond_6

    .line 600
    invoke-virtual {v2, p3}, Lnet/fortuna/ical4j/model/Date;->after(Ljava/util/Date;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 604
    :cond_6
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v10

    const/4 v11, 0x1

    if-lt v10, v11, :cond_7

    .line 605
    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/DateList;->size()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 611
    :cond_7
    instance-of v10, v3, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v10, :cond_8

    .line 612
    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/DateList;->isUtc()Z

    move-result v10

    if-eqz v10, :cond_b

    move-object v10, v3

    .line 613
    check-cast v10, Lnet/fortuna/ical4j/model/DateTime;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 620
    :cond_8
    :goto_4
    move-object/from16 v0, p4

    invoke-direct {p0, v3, v0}, Lnet/fortuna/ical4j/model/Recur;->getCandidates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v4

    .line 621
    .local v4, "candidates":Lnet/fortuna/ical4j/model/DateList;
    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/DateList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_10

    .line 622
    const/4 v8, 0x0

    .line 624
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 625
    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i":Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 626
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "candidate":Lnet/fortuna/ical4j/model/Date;
    check-cast v2, Lnet/fortuna/ical4j/model/Date;

    .line 628
    .restart local v2    # "candidate":Lnet/fortuna/ical4j/model/Date;
    invoke-virtual {v2, p1}, Lnet/fortuna/ical4j/model/Date;->before(Ljava/util/Date;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 630
    invoke-virtual {v2, p2}, Lnet/fortuna/ical4j/model/Date;->before(Ljava/util/Date;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 631
    invoke-virtual {v2, p3}, Lnet/fortuna/ical4j/model/Date;->before(Ljava/util/Date;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 632
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .end local v4    # "candidates":Lnet/fortuna/ical4j/model/DateList;
    .end local v6    # "i":Ljava/util/Iterator;
    :cond_b
    move-object v10, v3

    .line 616
    check-cast v10, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/DateList;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v11

    invoke-virtual {v10, v11}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_4

    .line 633
    .restart local v4    # "candidates":Lnet/fortuna/ical4j/model/DateList;
    .restart local v6    # "i":Ljava/util/Iterator;
    :cond_c
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v10

    const/4 v11, 0x1

    if-lt v10, v11, :cond_e

    .line 634
    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/DateList;->size()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v11

    if-lt v10, v11, :cond_e

    .line 648
    .end local v6    # "i":Ljava/util/Iterator;
    :cond_d
    invoke-direct {p0, v1}, Lnet/fortuna/ical4j/model/Recur;->increment(Ljava/util/Calendar;)V

    goto/16 :goto_2

    .line 636
    .restart local v6    # "i":Ljava/util/Iterator;
    :cond_e
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 637
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    move-result-object v10

    invoke-virtual {v2, v10}, Lnet/fortuna/ical4j/model/Date;->after(Ljava/util/Date;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 638
    :cond_f
    invoke-virtual {v5, v2}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_5

    .line 643
    .end local v6    # "i":Ljava/util/Iterator;
    :cond_10
    add-int/lit8 v8, v8, 0x1

    .line 644
    sget v10, Lnet/fortuna/ical4j/model/Recur;->maxIncrementCount:I

    if-lez v10, :cond_d

    sget v10, Lnet/fortuna/ical4j/model/Recur;->maxIncrementCount:I

    if-le v8, v10, :cond_d

    goto/16 :goto_3
.end method

.method public final getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;
    .locals 6
    .param p1, "periodStart"    # Lnet/fortuna/ical4j/model/Date;
    .param p2, "periodEnd"    # Lnet/fortuna/ical4j/model/Date;
    .param p3, "value"    # Lnet/fortuna/ical4j/model/parameter/Value;

    .prologue
    .line 516
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lnet/fortuna/ical4j/model/Recur;->getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;I)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    return-object v0
.end method

.method public final getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;
    .locals 6
    .param p1, "seed"    # Lnet/fortuna/ical4j/model/Date;
    .param p2, "period"    # Lnet/fortuna/ical4j/model/Period;
    .param p3, "value"    # Lnet/fortuna/ical4j/model/parameter/Value;

    .prologue
    .line 528
    invoke-virtual {p2}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v2

    invoke-virtual {p2}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v3

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lnet/fortuna/ical4j/model/Recur;->getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;I)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    return-object v0
.end method

.method public final getDayList()Lnet/fortuna/ical4j/model/WeekDayList;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Lnet/fortuna/ical4j/model/WeekDayList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/WeekDayList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    .line 283
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    return-object v0
.end method

.method public final getExperimentalValues()Ljava/util/Map;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->experimentalValues:Ljava/util/Map;

    return-object v0
.end method

.method public final getFrequency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Ljava/lang/String;

    return-object v0
.end method

.method public final getHourList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 290
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->hourList:Lnet/fortuna/ical4j/model/NumberList;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    const/16 v1, 0x17

    invoke-direct {v0, v2, v1, v2}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->hourList:Lnet/fortuna/ical4j/model/NumberList;

    .line 293
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->hourList:Lnet/fortuna/ical4j/model/NumberList;

    return-object v0
.end method

.method public final getInterval()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lnet/fortuna/ical4j/model/Recur;->interval:I

    return v0
.end method

.method public final getMinuteList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    const/16 v1, 0x3b

    invoke-direct {v0, v2, v1, v2}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

    .line 303
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

    return-object v0
.end method

.method public final getMonthDayList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 310
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    const/16 v1, 0x1f

    invoke-direct {v0, v2, v1, v2}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 313
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

    return-object v0
.end method

.method public final getMonthList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 4

    .prologue
    .line 320
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    const/4 v1, 0x1

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    .line 323
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    return-object v0
.end method

.method public final getNextDate(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Date;
    .locals 12
    .param p1, "seed"    # Lnet/fortuna/ical4j/model/Date;
    .param p2, "startDate"    # Lnet/fortuna/ical4j/model/Date;

    .prologue
    const/4 v11, 0x1

    .line 667
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    move-result-object v0

    .line 668
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 672
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v9

    if-ge v9, v11, :cond_0

    .line 673
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Calendar;

    .line 674
    .local v7, "seededCal":Ljava/util/Calendar;
    :goto_0
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 675
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 676
    invoke-direct {p0, v7}, Lnet/fortuna/ical4j/model/Recur;->increment(Ljava/util/Calendar;)V

    goto :goto_0

    .line 680
    .end local v7    # "seededCal":Ljava/util/Calendar;
    :cond_0
    const/4 v5, 0x0

    .line 681
    .local v5, "invalidCandidateCount":I
    const/4 v6, 0x0

    .line 682
    .local v6, "noCandidateIncrementCount":I
    const/4 v1, 0x0

    .line 683
    .local v1, "candidate":Lnet/fortuna/ical4j/model/Date;
    instance-of v9, p1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v9, :cond_2

    sget-object v8, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 686
    .local v8, "value":Lnet/fortuna/ical4j/model/parameter/Value;
    :goto_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-static {v9, v8}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v2

    .line 688
    .local v2, "candidateSeed":Lnet/fortuna/ical4j/model/Date;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    move-result-object v9

    if-eqz v9, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    move-result-object v9

    invoke-virtual {v1, v9}, Lnet/fortuna/ical4j/model/Date;->after(Ljava/util/Date;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 736
    :cond_1
    :goto_2
    const/4 v9, 0x0

    :goto_3
    return-object v9

    .line 683
    .end local v2    # "candidateSeed":Lnet/fortuna/ical4j/model/Date;
    .end local v8    # "value":Lnet/fortuna/ical4j/model/parameter/Value;
    :cond_2
    sget-object v8, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    goto :goto_1

    .line 692
    .restart local v2    # "candidateSeed":Lnet/fortuna/ical4j/model/Date;
    .restart local v8    # "value":Lnet/fortuna/ical4j/model/parameter/Value;
    :cond_3
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 696
    :cond_4
    sget-object v9, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v9, v8}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, p1

    .line 697
    check-cast v9, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v9}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v2

    .line 698
    check-cast v9, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v9, v11}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 705
    :cond_5
    :goto_4
    invoke-direct {p0, v2, v8}, Lnet/fortuna/ical4j/model/Recur;->getCandidates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v3

    .line 706
    .local v3, "candidates":Lnet/fortuna/ical4j/model/DateList;
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/DateList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    .line 707
    const/4 v6, 0x0

    .line 709
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 711
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 712
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "candidate":Lnet/fortuna/ical4j/model/Date;
    check-cast v1, Lnet/fortuna/ical4j/model/Date;

    .line 714
    .restart local v1    # "candidate":Lnet/fortuna/ical4j/model/Date;
    invoke-virtual {v1, p1}, Lnet/fortuna/ical4j/model/Date;->before(Ljava/util/Date;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 717
    invoke-virtual {v1, p2}, Lnet/fortuna/ical4j/model/Date;->after(Ljava/util/Date;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 718
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .end local v3    # "candidates":Lnet/fortuna/ical4j/model/DateList;
    .end local v4    # "i":Ljava/util/Iterator;
    :cond_7
    move-object v9, v2

    .line 701
    check-cast v9, Lnet/fortuna/ical4j/model/DateTime;

    move-object v10, p1

    check-cast v10, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v10}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v10

    invoke-virtual {v9, v10}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_4

    .line 719
    .restart local v3    # "candidates":Lnet/fortuna/ical4j/model/DateList;
    .restart local v4    # "i":Ljava/util/Iterator;
    :cond_8
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v9

    if-lez v9, :cond_a

    .line 720
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v9

    if-lt v5, v9, :cond_a

    .line 734
    .end local v4    # "i":Ljava/util/Iterator;
    :cond_9
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->increment(Ljava/util/Calendar;)V

    goto/16 :goto_1

    .line 722
    .restart local v4    # "i":Ljava/util/Iterator;
    :cond_a
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 723
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    move-result-object v9

    invoke-virtual {v1, v9}, Lnet/fortuna/ical4j/model/Date;->after(Ljava/util/Date;)Z

    move-result v9

    if-nez v9, :cond_6

    :cond_b
    move-object v9, v1

    .line 724
    goto/16 :goto_3

    .line 729
    .end local v4    # "i":Ljava/util/Iterator;
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 730
    sget v9, Lnet/fortuna/ical4j/model/Recur;->maxIncrementCount:I

    if-lez v9, :cond_9

    sget v9, Lnet/fortuna/ical4j/model/Recur;->maxIncrementCount:I

    if-le v6, v9, :cond_9

    goto/16 :goto_2
.end method

.method public final getSecondList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->secondList:Lnet/fortuna/ical4j/model/NumberList;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    const/16 v1, 0x3b

    invoke-direct {v0, v2, v1, v2}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->secondList:Lnet/fortuna/ical4j/model/NumberList;

    .line 333
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->secondList:Lnet/fortuna/ical4j/model/NumberList;

    return-object v0
.end method

.method public final getSetPosList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 340
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    const/16 v1, 0x16e

    invoke-direct {v0, v2, v1, v2}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    .line 343
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    return-object v0
.end method

.method public final getUntil()Lnet/fortuna/ical4j/model/Date;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    return-object v0
.end method

.method public final getWeekNoList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 350
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    const/16 v1, 0x35

    invoke-direct {v0, v2, v1, v2}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    .line 353
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    return-object v0
.end method

.method public final getWeekStartDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Ljava/lang/String;

    return-object v0
.end method

.method public final getYearDayList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 360
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    const/16 v1, 0x16e

    invoke-direct {v0, v2, v1, v2}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 363
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    return-object v0
.end method

.method public final setCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 1187
    iput p1, p0, Lnet/fortuna/ical4j/model/Recur;->count:I

    .line 1188
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    .line 1189
    return-void
.end method

.method public final setFrequency(Ljava/lang/String;)V
    .locals 0
    .param p1, "frequency"    # Ljava/lang/String;

    .prologue
    .line 1195
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Ljava/lang/String;

    .line 1196
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;->validateFrequency()V

    .line 1197
    return-void
.end method

.method public final setInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 1203
    iput p1, p0, Lnet/fortuna/ical4j/model/Recur;->interval:I

    .line 1204
    return-void
.end method

.method public final setUntil(Lnet/fortuna/ical4j/model/Date;)V
    .locals 1
    .param p1, "until"    # Lnet/fortuna/ical4j/model/Date;

    .prologue
    .line 1210
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    .line 1211
    const/4 v0, -0x1

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->count:I

    .line 1212
    return-void
.end method

.method public final setWeekStartDay(Ljava/lang/String;)V
    .locals 0
    .param p1, "weekStartDay"    # Ljava/lang/String;

    .prologue
    .line 412
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x3b

    const/16 v2, 0x3d

    .line 419
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 420
    .local v0, "b":Ljava/lang/StringBuffer;
    const-string v1, "FREQ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 422
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 424
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 425
    const-string v1, "WKST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 427
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    :cond_0
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    if-eqz v1, :cond_1

    .line 430
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 431
    const-string v1, "UNTIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 434
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 436
    :cond_1
    iget v1, p0, Lnet/fortuna/ical4j/model/Recur;->count:I

    if-lt v1, v4, :cond_2

    .line 437
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 438
    const-string v1, "COUNT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 440
    iget v1, p0, Lnet/fortuna/ical4j/model/Recur;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 442
    :cond_2
    iget v1, p0, Lnet/fortuna/ical4j/model/Recur;->interval:I

    if-lt v1, v4, :cond_3

    .line 443
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 444
    const-string v1, "INTERVAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 446
    iget v1, p0, Lnet/fortuna/ical4j/model/Recur;->interval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 448
    :cond_3
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMonthList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 449
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 450
    const-string v1, "BYMONTH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 452
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 454
    :cond_4
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getWeekNoList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 455
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 456
    const-string v1, "BYWEEKNO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 458
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 460
    :cond_5
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getYearDayList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 461
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 462
    const-string v1, "BYYEARDAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 464
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 466
    :cond_6
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMonthDayList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 467
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 468
    const-string v1, "BYMONTHDAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 470
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 472
    :cond_7
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getDayList()Lnet/fortuna/ical4j/model/WeekDayList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/WeekDayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 473
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 474
    const-string v1, "BYDAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 476
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 478
    :cond_8
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getHourList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 479
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 480
    const-string v1, "BYHOUR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 482
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->hourList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 484
    :cond_9
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMinuteList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 486
    const-string v1, "BYMINUTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 488
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 490
    :cond_a
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getSecondList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 491
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 492
    const-string v1, "BYSECOND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 494
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->secondList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 496
    :cond_b
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getSetPosList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 497
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 498
    const-string v1, "BYSETPOS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 500
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 502
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
