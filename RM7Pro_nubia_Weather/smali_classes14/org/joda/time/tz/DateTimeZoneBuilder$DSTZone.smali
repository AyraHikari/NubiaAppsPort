.class final Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;
.super Lorg/joda/time/DateTimeZone;
.source "DateTimeZoneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/DateTimeZoneBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DSTZone"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x605522c6413e57d1L


# instance fields
.field final iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

.field final iStandardOffset:I

.field final iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;


# direct methods
.method constructor <init>(Ljava/lang/String;ILorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;)V
    .locals 0

    .prologue
    .line 1208
    invoke-direct {p0, p1}, Lorg/joda/time/DateTimeZone;-><init>(Ljava/lang/String;)V

    .line 1209
    iput p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    .line 1210
    iput-object p3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1211
    iput-object p4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1212
    return-void
.end method

.method private findMatchingRecurrence(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;
    .locals 7

    .prologue
    .line 1336
    iget v4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    .line 1337
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1338
    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1343
    :try_start_0
    invoke-virtual {v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v2

    invoke-virtual {v0, p1, p2, v4, v2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->next(JII)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 1354
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v5

    invoke-virtual {v1, p1, p2, v4, v5}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->next(JII)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide p1

    .line 1364
    :goto_1
    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    :goto_2
    return-object v0

    .line 1345
    :catch_0
    move-exception v2

    move-wide v2, p1

    .line 1351
    goto :goto_0

    .line 1348
    :catch_1
    move-exception v2

    move-wide v2, p1

    .line 1350
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1364
    goto :goto_2

    .line 1359
    :catch_2
    move-exception v4

    goto :goto_1

    .line 1356
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method static readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1198
    new-instance v0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readMillis(Ljava/io/DataInput;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->readFrom(Ljava/io/DataInput;)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    move-result-object v2

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->readFrom(Ljava/io/DataInput;)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;-><init>(Ljava/lang/String;ILorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1315
    if-ne p0, p1, :cond_1

    .line 1326
    :cond_0
    :goto_0
    return v0

    .line 1318
    :cond_1
    instance-of v2, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    if-eqz v2, :cond_3

    .line 1319
    check-cast p1, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    .line 1320
    invoke-virtual {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    iget v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    iget-object v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v2, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    iget-object v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v2, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1326
    goto :goto_0
.end method

.method public getNameKey(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1215
    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->findMatchingRecurrence(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getNameKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOffset(J)I
    .locals 3

    .prologue
    .line 1219
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->findMatchingRecurrence(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getStandardOffset(J)I
    .locals 1

    .prologue
    .line 1223
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    return v0
.end method

.method public isFixed()Z
    .locals 1

    .prologue
    .line 1227
    const/4 v0, 0x0

    return v0
.end method

.method public nextTransition(J)J
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    .line 1231
    iget v4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    .line 1232
    iget-object v5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1233
    iget-object v6, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1238
    :try_start_0
    invoke-virtual {v6}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v0

    invoke-virtual {v5, p1, p2, v4, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->next(JII)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 1240
    cmp-long v2, p1, v8

    if-lez v2, :cond_0

    cmp-long v2, v0, v8

    if-gez v2, :cond_0

    move-wide v0, p1

    :cond_0
    move-wide v2, v0

    .line 1253
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v0

    invoke-virtual {v6, p1, p2, v4, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->next(JII)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v0

    .line 1255
    cmp-long v4, p1, v8

    if-lez v4, :cond_2

    cmp-long v4, v0, v8

    if-gez v4, :cond_2

    :goto_1
    move-wide v0, p1

    .line 1267
    :goto_2
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    :goto_3
    return-wide v0

    .line 1244
    :catch_0
    move-exception v0

    move-wide v2, p1

    .line 1250
    goto :goto_0

    .line 1247
    :catch_1
    move-exception v0

    move-wide v2, p1

    .line 1249
    goto :goto_0

    .line 1259
    :catch_2
    move-exception v0

    move-wide v0, p1

    .line 1265
    goto :goto_2

    .line 1262
    :catch_3
    move-exception v0

    move-wide v0, p1

    .line 1264
    goto :goto_2

    :cond_1
    move-wide v0, v2

    .line 1267
    goto :goto_3

    :cond_2
    move-wide p1, v0

    goto :goto_1
.end method

.method public previousTransition(J)J
    .locals 9

    .prologue
    .line 1273
    const-wide/16 v0, 0x1

    add-long v2, p1, v0

    .line 1275
    iget v6, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    .line 1276
    iget-object v7, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1277
    iget-object v8, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1282
    :try_start_0
    invoke-virtual {v8}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v0

    invoke-virtual {v7, v2, v3, v6, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->previous(JII)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 1284
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    move-wide v0, v2

    :cond_0
    move-wide v4, v0

    .line 1297
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v0

    invoke-virtual {v8, v2, v3, v6, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->previous(JII)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v0

    .line 1299
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    :goto_1
    move-wide v0, v2

    .line 1311
    :goto_2
    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    move-wide v0, v4

    :cond_1
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0

    .line 1288
    :catch_0
    move-exception v0

    move-wide v4, v2

    .line 1294
    goto :goto_0

    .line 1291
    :catch_1
    move-exception v0

    move-wide v4, v2

    .line 1293
    goto :goto_0

    .line 1303
    :catch_2
    move-exception v0

    move-wide v0, v2

    .line 1309
    goto :goto_2

    .line 1306
    :catch_3
    move-exception v0

    move-wide v0, v2

    .line 1308
    goto :goto_2

    :cond_2
    move-wide v2, v0

    goto :goto_1
.end method

.method public writeTo(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1330
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeMillis(Ljava/io/DataOutput;J)V

    .line 1331
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->writeTo(Ljava/io/DataOutput;)V

    .line 1332
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->writeTo(Ljava/io/DataOutput;)V

    .line 1333
    return-void
.end method
