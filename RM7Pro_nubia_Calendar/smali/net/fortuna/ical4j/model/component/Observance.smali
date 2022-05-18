.class public abstract Lnet/fortuna/ical4j/model/component/Observance;
.super Lnet/fortuna/ical4j/model/Component;
.source "Observance.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final DAYLIGHT:Ljava/lang/String; = "DAYLIGHT"

.field public static final STANDARD:Ljava/lang/String; = "STANDARD"

.field private static final UTC_FORMAT:Ljava/text/DateFormat;

.field private static final UTC_PATTERN:Ljava/lang/String; = "yyyyMMdd\'T\'HHmmss"

.field private static final serialVersionUID:J = 0x2304ab9d3c2c846aL


# instance fields
.field private initialOnset:Lnet/fortuna/ical4j/model/Date;

.field private onsetLimit:Lnet/fortuna/ical4j/model/Date;

.field private onsets:Ljava/util/Map;

.field private onsetsDates:[Lnet/fortuna/ical4j/model/DateTime;

.field private onsetsMillisec:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/component/Observance;->UTC_FORMAT:Ljava/text/DateFormat;

    .line 103
    sget-object v0, Lnet/fortuna/ical4j/model/component/Observance;->UTC_FORMAT:Ljava/text/DateFormat;

    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getUtcTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 104
    sget-object v0, Lnet/fortuna/ical4j/model/component/Observance;->UTC_FORMAT:Ljava/text/DateFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 105
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/Component;-><init>(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsets:Ljava/util/Map;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;

    .line 116
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/model/Component;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 92
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsets:Ljava/util/Map;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;

    .line 125
    return-void
.end method

.method private applyOffsetFrom(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/DateTime;
    .locals 6
    .param p1, "orig"    # Lnet/fortuna/ical4j/model/DateTime;

    .prologue
    .line 350
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Z)V

    .line 351
    .local v0, "withOffset":Lnet/fortuna/ical4j/model/DateTime;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateTime;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Observance;->getOffsetFrom()Lnet/fortuna/ical4j/model/property/TzOffsetFrom;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/TzOffsetFrom;->getOffset()Lnet/fortuna/ical4j/model/UtcOffset;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/UtcOffset;->getOffset()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lnet/fortuna/ical4j/model/DateTime;->setTime(J)V

    .line 352
    return-object v0
.end method

.method private calculateOnset(Ljava/lang/String;)Lnet/fortuna/ical4j/model/DateTime;
    .locals 5
    .param p1, "dateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 339
    sget-object v4, Lnet/fortuna/ical4j/model/component/Observance;->UTC_FORMAT:Ljava/text/DateFormat;

    monitor-enter v4

    .line 340
    :try_start_0
    sget-object v1, Lnet/fortuna/ical4j/model/component/Observance;->UTC_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 341
    .local v2, "utcOnset":J
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Z)V

    .line 345
    .local v0, "onset":Lnet/fortuna/ical4j/model/DateTime;
    invoke-virtual {v0, v2, v3}, Lnet/fortuna/ical4j/model/DateTime;->setTime(J)V

    .line 346
    return-object v0

    .line 341
    .end local v0    # "onset":Lnet/fortuna/ical4j/model/DateTime;
    .end local v2    # "utcOnset":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private calculateOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/DateTime;
    .locals 1
    .param p1, "date"    # Lnet/fortuna/ical4j/model/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;->calculateOnset(Ljava/lang/String;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    return-object v0
.end method

.method private getCachedOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/DateTime;
    .locals 6
    .param p1, "date"    # Lnet/fortuna/ical4j/model/Date;

    .prologue
    .line 272
    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsMillisec:[J

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Date;->getTime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 273
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 274
    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsDates:[Lnet/fortuna/ical4j/model/DateTime;

    aget-object v2, v2, v0

    .line 277
    :goto_0
    return-object v2

    .line 276
    :cond_0
    neg-int v2, v0

    add-int/lit8 v1, v2, -0x1

    .line 277
    .local v1, "insertionIndex":I
    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsDates:[Lnet/fortuna/ical4j/model/DateTime;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 309
    check-cast p1, Lnet/fortuna/ical4j/model/component/Observance;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/component/Observance;->compareTo(Lnet/fortuna/ical4j/model/component/Observance;)I

    move-result v0

    return v0
.end method

.method public final compareTo(Lnet/fortuna/ical4j/model/component/Observance;)I
    .locals 4
    .param p1, "arg0"    # Lnet/fortuna/ical4j/model/component/Observance;

    .prologue
    .line 320
    const-string v2, "DTSTART"

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/component/Observance;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 321
    .local v0, "dtStart":Lnet/fortuna/ical4j/model/property/DtStart;
    const-string v2, "DTSTART"

    invoke-virtual {p1, v2}, Lnet/fortuna/ical4j/model/component/Observance;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 322
    .local v1, "dtStart0":Lnet/fortuna/ical4j/model/property/DtStart;
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v2

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    return v2
.end method

.method public final getLatestOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Date;
    .locals 24
    .param p1, "date"    # Lnet/fortuna/ical4j/model/Date;

    .prologue
    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 169
    :try_start_0
    const-string v20, "DTSTART"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/component/Observance;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v20

    check-cast v20, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-virtual/range {v20 .. v20}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/component/Observance;->calculateOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/component/Observance;->applyOffsetFrom(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Date;->before(Ljava/util/Date;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 180
    const/4 v12, 0x0

    .line 263
    :cond_1
    :goto_0
    return-object v12

    .line 170
    :catch_0
    move-exception v7

    .line 171
    .local v7, "e":Ljava/text/ParseException;
    const-class v20, Lnet/fortuna/ical4j/model/component/Observance;

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v11

    .line 172
    .local v11, "log":Lorg/apache/commons/logging/Log;
    const-string v20, "Unexpected error calculating initial onset"

    move-object/from16 v0, v20

    invoke-interface {v11, v0, v7}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 174
    const/4 v12, 0x0

    goto :goto_0

    .line 183
    .end local v7    # "e":Ljava/text/ParseException;
    .end local v11    # "log":Lorg/apache/commons/logging/Log;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsMillisec:[J

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/fortuna/ical4j/model/component/Observance;->onsetLimit:Lnet/fortuna/ical4j/model/Date;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/fortuna/ical4j/model/component/Observance;->onsetLimit:Lnet/fortuna/ical4j/model/Date;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Date;->before(Ljava/util/Date;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 184
    :cond_3
    invoke-direct/range {p0 .. p1}, Lnet/fortuna/ical4j/model/component/Observance;->getCachedOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v12

    goto :goto_0

    .line 187
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;

    .line 193
    .local v12, "onset":Lnet/fortuna/ical4j/model/Date;
    :try_start_1
    const-string v20, "DTSTART"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/component/Observance;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v20

    check-cast v20, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-virtual/range {v20 .. v20}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/component/Observance;->calculateOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/DateTime;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 201
    .local v9, "initialOnsetUTC":Lnet/fortuna/ical4j/model/Date;
    new-instance v5, Lnet/fortuna/ical4j/model/DateList;

    invoke-direct {v5}, Lnet/fortuna/ical4j/model/DateList;-><init>()V

    .line 202
    .local v5, "cacheableOnsets":Lnet/fortuna/ical4j/model/DateList;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lnet/fortuna/ical4j/model/DateList;->setUtc(Z)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    .line 206
    const-string v20, "RDATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/component/Observance;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v15

    .line 207
    .local v15, "rdates":Lnet/fortuna/ical4j/model/PropertyList;
    invoke-virtual {v15}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 208
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/fortuna/ical4j/model/property/RDate;

    .line 209
    .local v13, "rdate":Lnet/fortuna/ical4j/model/property/RDate;
    invoke-virtual {v13}, Lnet/fortuna/ical4j/model/property/RDate;->getDates()Lnet/fortuna/ical4j/model/DateList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "j":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 211
    :try_start_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnet/fortuna/ical4j/model/Date;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/component/Observance;->calculateOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/component/Observance;->applyOffsetFrom(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v14

    .line 212
    .local v14, "rdateOnset":Lnet/fortuna/ical4j/model/DateTime;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lnet/fortuna/ical4j/model/DateTime;->after(Ljava/util/Date;)Z

    move-result v20

    if-nez v20, :cond_6

    invoke-virtual {v14, v12}, Lnet/fortuna/ical4j/model/DateTime;->after(Ljava/util/Date;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 213
    move-object v12, v14

    .line 219
    :cond_6
    invoke-virtual {v5, v14}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 220
    .end local v14    # "rdateOnset":Lnet/fortuna/ical4j/model/DateTime;
    :catch_1
    move-exception v7

    .line 221
    .restart local v7    # "e":Ljava/text/ParseException;
    const-class v20, Lnet/fortuna/ical4j/model/component/Observance;

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v11

    .line 222
    .restart local v11    # "log":Lorg/apache/commons/logging/Log;
    const-string v20, "Unexpected error calculating onset"

    move-object/from16 v0, v20

    invoke-interface {v11, v0, v7}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 194
    .end local v5    # "cacheableOnsets":Lnet/fortuna/ical4j/model/DateList;
    .end local v7    # "e":Ljava/text/ParseException;
    .end local v8    # "i":Ljava/util/Iterator;
    .end local v9    # "initialOnsetUTC":Lnet/fortuna/ical4j/model/Date;
    .end local v10    # "j":Ljava/util/Iterator;
    .end local v11    # "log":Lorg/apache/commons/logging/Log;
    .end local v13    # "rdate":Lnet/fortuna/ical4j/model/property/RDate;
    .end local v15    # "rdates":Lnet/fortuna/ical4j/model/PropertyList;
    :catch_2
    move-exception v7

    .line 195
    .restart local v7    # "e":Ljava/text/ParseException;
    const-class v20, Lnet/fortuna/ical4j/model/component/Observance;

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v11

    .line 196
    .restart local v11    # "log":Lorg/apache/commons/logging/Log;
    const-string v20, "Unexpected error calculating initial onset"

    move-object/from16 v0, v20

    invoke-interface {v11, v0, v7}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 198
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 228
    .end local v7    # "e":Ljava/text/ParseException;
    .end local v11    # "log":Lorg/apache/commons/logging/Log;
    .restart local v5    # "cacheableOnsets":Lnet/fortuna/ical4j/model/DateList;
    .restart local v8    # "i":Ljava/util/Iterator;
    .restart local v9    # "initialOnsetUTC":Lnet/fortuna/ical4j/model/Date;
    .restart local v15    # "rdates":Lnet/fortuna/ical4j/model/PropertyList;
    :cond_7
    const-string v20, "RRULE"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/component/Observance;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v19

    .line 229
    .local v19, "rrules":Lnet/fortuna/ical4j/model/PropertyList;
    invoke-virtual/range {v19 .. v19}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 230
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lnet/fortuna/ical4j/model/property/RRule;

    .line 232
    .local v17, "rrule":Lnet/fortuna/ical4j/model/property/RRule;
    invoke-static/range {p1 .. p1}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    move-result-object v6

    .line 233
    .local v6, "cal":Ljava/util/Calendar;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 234
    const/16 v20, 0x1

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 235
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    sget-object v21, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static/range {v20 .. v21}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/fortuna/ical4j/model/component/Observance;->onsetLimit:Lnet/fortuna/ical4j/model/Date;

    .line 236
    invoke-virtual/range {v17 .. v17}, Lnet/fortuna/ical4j/model/property/RRule;->getRecur()Lnet/fortuna/ical4j/model/Recur;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/fortuna/ical4j/model/component/Observance;->onsetLimit:Lnet/fortuna/ical4j/model/Date;

    move-object/from16 v21, v0

    sget-object v22, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v9, v1, v2}, Lnet/fortuna/ical4j/model/Recur;->getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v16

    .line 238
    .local v16, "recurrenceDates":Lnet/fortuna/ical4j/model/DateList;
    invoke-virtual/range {v16 .. v16}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "j":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 239
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnet/fortuna/ical4j/model/DateTime;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/component/Observance;->applyOffsetFrom(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v18

    .line 240
    .local v18, "rruleOnset":Lnet/fortuna/ical4j/model/DateTime;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->after(Ljava/util/Date;)Z

    move-result v20

    if-nez v20, :cond_9

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lnet/fortuna/ical4j/model/DateTime;->after(Ljava/util/Date;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 241
    move-object/from16 v12, v18

    .line 247
    :cond_9
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_2

    .line 252
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v10    # "j":Ljava/util/Iterator;
    .end local v16    # "recurrenceDates":Lnet/fortuna/ical4j/model/DateList;
    .end local v17    # "rrule":Lnet/fortuna/ical4j/model/property/RRule;
    .end local v18    # "rruleOnset":Lnet/fortuna/ical4j/model/DateTime;
    :cond_a
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 253
    const/4 v4, 0x0

    .line 254
    .local v4, "cacheableOnset":Lnet/fortuna/ical4j/model/DateTime;
    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/DateList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/fortuna/ical4j/model/component/Observance;->onsetsMillisec:[J

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsMillisec:[J

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [Lnet/fortuna/ical4j/model/DateTime;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/fortuna/ical4j/model/component/Observance;->onsetsDates:[Lnet/fortuna/ical4j/model/DateTime;

    .line 257
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsMillisec:[J

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_1

    .line 258
    invoke-virtual {v5, v8}, Lnet/fortuna/ical4j/model/DateList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cacheableOnset":Lnet/fortuna/ical4j/model/DateTime;
    check-cast v4, Lnet/fortuna/ical4j/model/DateTime;

    .line 259
    .restart local v4    # "cacheableOnset":Lnet/fortuna/ical4j/model/DateTime;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsMillisec:[J

    move-object/from16 v20, v0

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/DateTime;->getTime()J

    move-result-wide v22

    aput-wide v22, v20, v8

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsDates:[Lnet/fortuna/ical4j/model/DateTime;

    move-object/from16 v20, v0

    aput-object v4, v20, v8

    .line 257
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method public final getOffsetFrom()Lnet/fortuna/ical4j/model/property/TzOffsetFrom;
    .locals 1

    .prologue
    .line 294
    const-string v0, "TZOFFSETFROM"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/TzOffsetFrom;

    return-object v0
.end method

.method public final getOffsetTo()Lnet/fortuna/ical4j/model/property/TzOffsetTo;
    .locals 1

    .prologue
    .line 302
    const-string v0, "TZOFFSETTO"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/TzOffsetTo;

    return-object v0
.end method

.method public final getStartDate()Lnet/fortuna/ical4j/model/property/DtStart;
    .locals 1

    .prologue
    .line 286
    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStart;

    return-object v0
.end method

.method public final validate(Z)V
    .locals 3
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "TZOFFSETFROM"

    .line 136
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Observance;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 135
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 141
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "TZOFFSETTO"

    .line 142
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Observance;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 141
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 147
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTSTART"

    .line 148
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Observance;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 147
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 154
    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Observance;->validateProperties()V

    .line 157
    :cond_0
    return-void
.end method
