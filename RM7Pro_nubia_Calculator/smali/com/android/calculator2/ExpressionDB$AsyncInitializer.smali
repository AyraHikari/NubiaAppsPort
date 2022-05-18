.class Lcom/android/calculator2/ExpressionDB$AsyncInitializer;
.super Landroid/os/AsyncTask;
.source "ExpressionDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/ExpressionDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncInitializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;",
        "Ljava/lang/Void;",
        "Landroid/database/sqlite/SQLiteDatabase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/ExpressionDB;


# direct methods
.method private constructor <init>(Lcom/android/calculator2/ExpressionDB;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calculator2/ExpressionDB;Lcom/android/calculator2/ExpressionDB$1;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;-><init>(Lcom/android/calculator2/ExpressionDB;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 269
    :try_start_0
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 270
    iget-object v2, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {v2}, Lcom/android/calculator2/ExpressionDB;->access$100(Lcom/android/calculator2/ExpressionDB;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    const-string v3, "ExpressionDB"

    const-string v4, "Aaron: AsyncInitializer start."

    .line 271
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v3, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {v3, p1}, Lcom/android/calculator2/ExpressionDB;->access$202(Lcom/android/calculator2/ExpressionDB;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-wide/16 v3, -0xa

    :try_start_2
    const-string v5, "SELECT MIN(_id) FROM expressions"

    .line 273
    invoke-virtual {p1, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 274
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_0

    .line 276
    iget-object v6, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {v6, v3, v4}, Lcom/android/calculator2/ExpressionDB;->access$302(Lcom/android/calculator2/ExpressionDB;J)J

    goto :goto_0

    .line 278
    :cond_0
    iget-object v6, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/android/calculator2/ExpressionDB;->access$302(Lcom/android/calculator2/ExpressionDB;J)J
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    move-object v7, v1

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    .line 280
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    if-eqz v5, :cond_3

    .line 282
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    .line 273
    :goto_1
    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v7

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    :goto_2
    if-eqz v5, :cond_2

    if-eqz v7, :cond_1

    .line 282
    :try_start_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_3

    :catch_2
    move-exception v5

    :try_start_8
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_3
    throw v6
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catch_3
    move-exception v5

    .line 283
    :try_start_9
    invoke-virtual {v5}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_3
    :goto_4
    const-string v5, "SELECT MAX(_id) FROM expressions"

    .line 285
    invoke-virtual {p1, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 286
    :try_start_a
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    const-wide/16 v7, 0x0

    if-nez v6, :cond_4

    .line 288
    iget-object v6, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {v6, v7, v8}, Lcom/android/calculator2/ExpressionDB;->access$402(Lcom/android/calculator2/ExpressionDB;J)J

    goto :goto_5

    .line 290
    :cond_4
    iget-object v6, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-static {v6, v9, v10}, Lcom/android/calculator2/ExpressionDB;->access$402(Lcom/android/calculator2/ExpressionDB;J)J
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_5
    if-eqz v5, :cond_5

    .line 292
    :try_start_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_5
    iget-object v5, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {v5}, Lcom/android/calculator2/ExpressionDB;->access$400(Lcom/android/calculator2/ExpressionDB;)J

    move-result-wide v5

    const-wide/32 v9, 0x7fffffff

    cmp-long v5, v5, v9

    if-gtz v5, :cond_8

    .line 296
    iget-object v5, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    iget-object v6, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {v6}, Lcom/android/calculator2/ExpressionDB;->access$400(Lcom/android/calculator2/ExpressionDB;)J

    move-result-wide v9

    long-to-int v6, v9

    invoke-static {v5, v6}, Lcom/android/calculator2/ExpressionDB;->access$502(Lcom/android/calculator2/ExpressionDB;I)I

    .line 297
    iget-object v5, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {v5}, Lcom/android/calculator2/ExpressionDB;->access$400(Lcom/android/calculator2/ExpressionDB;)J

    move-result-wide v5

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {v5}, Lcom/android/calculator2/ExpressionDB;->access$300(Lcom/android/calculator2/ExpressionDB;)J

    move-result-wide v7

    cmp-long v3, v7, v3

    if-eqz v3, :cond_7

    :cond_6
    const/4 v3, 0x2

    .line 299
    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    .line 300
    invoke-static {v4}, Lcom/android/calculator2/ExpressionDB;->access$500(Lcom/android/calculator2/ExpressionDB;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {v0}, Lcom/android/calculator2/ExpressionDB;->access$300(Lcom/android/calculator2/ExpressionDB;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    .line 301
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    const-string v4, "SELECT * FROM expressions WHERE _id <= ? AND _id >= ? ORDER BY _id DESC "

    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    check-cast v3, Landroid/database/AbstractWindowedCursor;

    invoke-static {v0, v3}, Lcom/android/calculator2/ExpressionDB;->access$602(Lcom/android/calculator2/ExpressionDB;Landroid/database/AbstractWindowedCursor;)Landroid/database/AbstractWindowedCursor;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 302
    :try_start_c
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {v0}, Lcom/android/calculator2/ExpressionDB;->access$600(Lcom/android/calculator2/ExpressionDB;)Landroid/database/AbstractWindowedCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/AbstractWindowedCursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7

    .line 303
    iget-object p1, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {p1}, Lcom/android/calculator2/ExpressionDB;->access$700(Lcom/android/calculator2/ExpressionDB;)V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 304
    :try_start_d
    monitor-exit v2

    return-object v1

    .line 312
    :cond_7
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {v0, v6}, Lcom/android/calculator2/ExpressionDB;->access$802(Lcom/android/calculator2/ExpressionDB;Z)Z

    .line 315
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {v0}, Lcom/android/calculator2/ExpressionDB;->access$100(Lcom/android/calculator2/ExpressionDB;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const-string v0, "ExpressionDB"

    const-string v3, "Aaron: AsyncInitializer end."

    .line 316
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 318
    :try_start_e
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-virtual {v0}, Lcom/android/calculator2/ExpressionDB;->getWriteableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 319
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    iget-object v2, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {v2}, Lcom/android/calculator2/ExpressionDB;->access$200(Lcom/android/calculator2/ExpressionDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/calculator2/ExpressionDB;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_7

    return-object p1

    :catch_4
    move-exception p1

    .line 307
    :try_start_f
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 308
    iget-object p1, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {p1}, Lcom/android/calculator2/ExpressionDB;->access$700(Lcom/android/calculator2/ExpressionDB;)V

    .line 309
    monitor-exit v2

    return-object v1

    .line 294
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Expression index absurdly large"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catchall_2
    move-exception p1

    move-object v0, v1

    goto :goto_6

    :catch_5
    move-exception p1

    .line 285
    :try_start_10
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catchall_3
    move-exception v0

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    :goto_6
    if-eqz v5, :cond_a

    if-eqz v0, :cond_9

    .line 292
    :try_start_11
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_7

    :catch_6
    move-exception v3

    :try_start_12
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_9
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_a
    :goto_7
    throw p1

    :catchall_4
    move-exception p1

    .line 317
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :try_start_13
    throw p1
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_7

    :catch_7
    move-exception p1

    const-string v0, "Calculator"

    const-string v2, "Database initialization failed.\n"

    .line 322
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    iget-object p1, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {p1}, Lcom/android/calculator2/ExpressionDB;->access$100(Lcom/android/calculator2/ExpressionDB;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 325
    :try_start_14
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {v0}, Lcom/android/calculator2/ExpressionDB;->access$700(Lcom/android/calculator2/ExpressionDB;)V

    .line 326
    iget-object p0, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {p0}, Lcom/android/calculator2/ExpressionDB;->access$100(Lcom/android/calculator2/ExpressionDB;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 327
    monitor-exit p1

    return-object v1

    :catchall_5
    move-exception p0

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    throw p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 263
    check-cast p1, [Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->doInBackground([Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    if-nez p1, :cond_0

    .line 336
    iget-object p0, p0, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-virtual {p0}, Lcom/android/calculator2/ExpressionDB;->displayDatabaseWarning()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 263
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->onPostExecute(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
