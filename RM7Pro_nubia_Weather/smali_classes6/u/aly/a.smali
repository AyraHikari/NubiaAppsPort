.class public Lu/aly/a;
.super Ljava/lang/Object;
.source "CCSQLManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lu/aly/i;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 181
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 182
    const-string v1, "key"

    invoke-virtual {p0}, Lu/aly/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, "label"

    invoke-virtual {p0}, Lu/aly/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "count"

    invoke-virtual {p0}, Lu/aly/i;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 185
    const-string v1, "value"

    invoke-virtual {p0}, Lu/aly/i;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    const-string v1, "totalTimestamp"

    invoke-virtual {p0}, Lu/aly/i;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    const-string v1, "timeWindowNum"

    invoke-virtual {p0}, Lu/aly/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 379
    .line 382
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 383
    const-string v0, "aggregated_cache"

    invoke-static {p0, v0}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 384
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 397
    if-eqz v1, :cond_0

    .line 398
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 402
    :goto_0
    return-object v0

    .line 386
    :cond_1
    :try_start_1
    const-string v0, "select * from aggregated_cache"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 387
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 389
    const-string v0, "timeWindowNum"

    .line 390
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 392
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 397
    if-eqz v2, :cond_2

    .line 398
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 394
    :goto_2
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryLastTimeWindowNumFromCache error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 397
    if-eqz v2, :cond_3

    .line 398
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 397
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_4

    .line 398
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 397
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 393
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Lu/aly/f;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/aly/f;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lu/aly/av$f;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 464
    .line 466
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 467
    const-string v0, "system"

    invoke-static {p1, v0}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 468
    const-string v0, "select * from system"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 471
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    const-string v0, "key"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 475
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 477
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :goto_1
    new-instance v5, Lu/aly/av$f;

    invoke-direct {v5}, Lu/aly/av$f;-><init>()V

    .line 482
    const-string v6, "timeStamp"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lu/aly/av$f;->b:J

    .line 483
    const-string v6, "count"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v5, Lu/aly/av$f;->a:I

    .line 484
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    :goto_2
    :try_start_2
    const-string v3, "faild"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lu/aly/f;->a(Ljava/lang/Object;Z)V

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAllSystemDataForUpload error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 493
    if-eqz v1, :cond_0

    .line 494
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 497
    :cond_0
    :goto_3
    return-object v2

    .line 479
    :cond_1
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 493
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_2

    .line 494
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move-object v0, v1

    .line 493
    :goto_5
    if-eqz v0, :cond_4

    .line 494
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v2, v3

    goto :goto_3

    .line 493
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 489
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_5
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JJ)V
    .locals 4

    .prologue
    .line 254
    :try_start_0
    const-string v0, "system"

    invoke-static {p0, v0}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    .line 255
    invoke-static {}, Lu/aly/n;->a()Lu/aly/n;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/n;->c()I

    move-result v1

    .line 256
    if-ge v0, v1, :cond_0

    .line 257
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 258
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "timeStamp"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 260
    const-string v1, "count"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    const-string v1, "system"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 274
    :goto_0
    return-void

    .line 262
    :cond_0
    if-ne v0, v1, :cond_1

    .line 263
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 264
    const-string v1, "key"

    const-string v2, "__meta_ve_of"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 266
    const-string v1, "count"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    const-string v1, "system"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    goto :goto_0

    .line 270
    :cond_1
    const-string v0, "__meta_ve_of"

    invoke-static {p0, v0}, Lu/aly/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Lu/aly/f;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/k;",
            ">;",
            "Lu/aly/f;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 333
    .line 335
    :try_start_0
    const-string v0, "__ag_of"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/k;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    if-nez v0, :cond_1

    .line 365
    if-eqz v1, :cond_0

    .line 366
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    :try_start_1
    const-string v5, "system where key=\"__ag_of\""

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 344
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-wide v2, v6

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_3

    .line 346
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_2

    .line 347
    const-string v2, "count"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 348
    const-string v2, "timeStamp"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 350
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 344
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 362
    :catch_0
    move-exception v0

    .line 363
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save to system table error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    if-eqz v1, :cond_0

    .line 366
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 354
    :cond_3
    :try_start_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 355
    const-string v5, "key"

    invoke-virtual {v0}, Lu/aly/k;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v9, "count"

    if-nez v4, :cond_5

    .line 357
    invoke-virtual {v0}, Lu/aly/k;->e()J

    move-result-wide v4

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 356
    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 358
    const-string v4, "timeStamp"

    cmp-long v5, v2, v6

    if-nez v5, :cond_4

    .line 359
    invoke-virtual {v0}, Lu/aly/k;->d()J

    move-result-wide v2

    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 358
    invoke-virtual {v8, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 360
    const-string v0, "system"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 361
    const-string v0, "success"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lu/aly/f;->a(Ljava/lang/Object;Z)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 365
    if-eqz v1, :cond_0

    .line 366
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 357
    :cond_5
    int-to-long v4, v4

    :try_start_4
    invoke-virtual {v0}, Lu/aly/k;->e()J
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v10

    add-long/2addr v4, v10

    goto :goto_2

    .line 365
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    .line 366
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;ZLu/aly/f;)V
    .locals 2

    .prologue
    .line 238
    const-string v0, "system"

    invoke-static {p0, v0}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 239
    const-string v0, "aggregated"

    invoke-static {p0, v0}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 241
    if-nez p1, :cond_0

    .line 242
    const-string v0, "limitedck"

    invoke-static {p0, v0}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 243
    const-string v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lu/aly/f;->a(Ljava/lang/Object;Z)V

    .line 245
    :cond_0
    return-void
.end method

.method public static a(Lu/aly/f;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/aly/f;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 307
    const-string v0, "limitedck"

    invoke-static {p1, v0}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 308
    const-string v0, "limitedck"

    invoke-static {p1, v0}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 311
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 312
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 313
    const-string v3, "ck"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v0, "limitedck"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertToLimitCKTable error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 323
    :goto_1
    return-void

    .line 316
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 317
    const-string v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lu/aly/f;->a(Ljava/lang/Object;Z)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 34
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drop table if exists "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v1, "delete table faild!"

    invoke-static {v1}, Lu/aly/bl;->e(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 39
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Lu/aly/i;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 104
    const-string v0, "aggregated_cache"

    invoke-static {p0, v0}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 105
    const-string v0, "aggregated_cache"

    invoke-static {p0, v0}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 107
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/i;

    .line 108
    invoke-static {v0}, Lu/aly/a;->a(Lu/aly/i;)Landroid/content/ContentValues;

    move-result-object v0

    .line 109
    const-string v2, "aggregated_cache"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    :try_start_1
    const-string v0, "insert to Aggregated cache table faild!"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 118
    :goto_1
    return v0

    .line 111
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 118
    const/4 v0, 0x1

    goto :goto_1

    .line 116
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lu/aly/f;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 150
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 151
    const-string v1, "aggregated_cache"

    invoke-static {p0, v1}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 152
    const-string v1, "faild"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lu/aly/f;->a(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 173
    :goto_0
    return v0

    .line 155
    :cond_0
    :try_start_1
    const-string v1, "insert into aggregated(key, count, value, totalTimestamp, timeWindowNum, label) select key, count, value, totalTimestamp, timeWindowNum, label from aggregated_cache"

    .line 162
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 164
    const-string v1, "aggregated_cache"

    invoke-static {p0, v1}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 165
    const-string v1, "success"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lu/aly/f;->a(Ljava/lang/Object;Z)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 173
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    const/4 v2, 0x0

    :try_start_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lu/aly/f;->a(Ljava/lang/Object;Z)V

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheToAggregatedTable happen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static a(Lu/aly/f;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/aly/f;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Lu/aly/i;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 124
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 125
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/i;

    .line 126
    invoke-static {v0}, Lu/aly/a;->a(Lu/aly/i;)Landroid/content/ContentValues;

    move-result-object v0

    .line 127
    const-string v3, "aggregated"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    :try_start_1
    const-string v0, "insert to Aggregated cache table faild!"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    .line 138
    :goto_1
    return v0

    .line 129
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 130
    const-string v0, "aggregated_cache"

    invoke-static {p1, v0}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 131
    const-string v0, "success"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lu/aly/f;->a(Ljava/lang/Object;Z)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 138
    const/4 v0, 0x1

    goto :goto_1

    .line 136
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lu/aly/av$e;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 412
    .line 414
    :try_start_0
    const-string v0, "aggregated"

    invoke-static {p0, v0}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 416
    const-string v0, "select * from aggregated"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 419
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 421
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    const-string v0, "key"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 425
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 427
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :goto_1
    new-instance v5, Lu/aly/av$e;

    invoke-direct {v5}, Lu/aly/av$e;-><init>()V

    .line 433
    const-string v6, "label"

    .line 434
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 433
    invoke-static {v6}, Lu/aly/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lu/aly/av$e;->e:Ljava/util/List;

    .line 436
    const-string v6, "value"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lu/aly/av$e;->a:J

    .line 437
    const-string v6, "totalTimestamp"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lu/aly/av$e;->b:J

    .line 438
    const-string v6, "timeWindowNum"

    .line 439
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 438
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lu/aly/av$e;->c:I

    .line 440
    const-string v6, "count"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v5, Lu/aly/av$e;->d:I

    .line 441
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    move-object v1, v3

    .line 448
    :goto_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAllAggregatedDataForUpload error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 450
    if-eqz v1, :cond_0

    .line 451
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_3
    move-object v0, v2

    .line 454
    :goto_4
    return-object v0

    .line 429
    :cond_1
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 450
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v3, :cond_2

    .line 451
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 450
    :cond_3
    if-eqz v3, :cond_4

    .line 451
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v1

    goto :goto_4

    .line 450
    :cond_5
    if-eqz v2, :cond_0

    .line 451
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 450
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_5

    .line 447
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 52
    :try_start_0
    invoke-static {p0, p1}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanTableData faild!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Lu/aly/f;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 196
    .line 200
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    const-string v2, "select * from aggregated_cache"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 202
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    new-instance v2, Lu/aly/i;

    invoke-direct {v2}, Lu/aly/i;-><init>()V

    .line 204
    const-string v3, "key"

    .line 205
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lu/aly/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 204
    invoke-virtual {v2, v3}, Lu/aly/i;->a(Ljava/util/List;)V

    .line 206
    const-string v3, "label"

    .line 207
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lu/aly/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 206
    invoke-virtual {v2, v3}, Lu/aly/i;->b(Ljava/util/List;)V

    .line 208
    const-string v3, "count"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lu/aly/i;->c(J)V

    .line 209
    const-string v3, "value"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lu/aly/i;->b(J)V

    .line 210
    const-string v3, "timeWindowNum"

    .line 211
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-virtual {v2, v3}, Lu/aly/i;->b(Ljava/lang/String;)V

    .line 212
    const-string v3, "totalTimestamp"

    .line 213
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 212
    invoke-virtual {v2, v4, v5}, Lu/aly/i;->a(J)V

    .line 214
    const-string v3, "key"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lu/aly/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lu/aly/f;->a(Ljava/lang/Object;Z)V

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheToMemory happen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    if-eqz v1, :cond_0

    .line 227
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 230
    :cond_0
    :goto_1
    return v6

    .line 217
    :cond_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 218
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lu/aly/f;->a(Ljava/lang/Object;Z)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    :goto_2
    if-eqz v1, :cond_0

    .line 227
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 220
    :cond_2
    :try_start_3
    const-string v0, "faild"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lu/aly/f;->a(Ljava/lang/Object;Z)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 226
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 227
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 75
    const/4 v0, 0x0

    .line 78
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 79
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 83
    if-eqz v2, :cond_0

    .line 84
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    if-eqz v2, :cond_0

    .line 84
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    .line 84
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public static c(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 508
    .line 510
    :try_start_0
    const-string v0, "limitedck"

    invoke-static {p0, v0}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 511
    const-string v0, "select * from limitedck"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 512
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 515
    const-string v3, "ck"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 516
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadLimitCKFromDB error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 523
    if-eqz v2, :cond_0

    .line 524
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    move-object v0, v1

    .line 527
    :cond_1
    :goto_3
    return-object v0

    .line 523
    :cond_2
    if-eqz v2, :cond_1

    .line 524
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 523
    :cond_3
    if-eqz v1, :cond_0

    .line 524
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 523
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_4

    .line 524
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 523
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 520
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_1
.end method

.method private static d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 283
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update system set count=count+1 where key like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    if-eqz p0, :cond_0

    .line 292
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 291
    if-eqz p0, :cond_0

    .line 292
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 292
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1
    throw v0
.end method
