.class public Lcom/android/calculator2/ExpressionDB;
.super Ljava/lang/Object;
.source "ExpressionDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/ExpressionDB$AsyncWriter;,
        Lcom/android/calculator2/ExpressionDB$AsyncEraser;,
        Lcom/android/calculator2/ExpressionDB$AsyncInitializer;,
        Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;,
        Lcom/android/calculator2/ExpressionDB$RowData;,
        Lcom/android/calculator2/ExpressionDB$ExpressionEntry;
    }
.end annotation


# static fields
.field private static final CONTINUE_WITH_BAD_DB:Z = false

.field private static final GAP:J = 0xbL

.field public static final MAXIMUM_MIN_INDEX:J = -0xaL

.field private static final SQL_CREATE_ENTRIES:Ljava/lang/String; = "CREATE TABLE expressions (_id INTEGER PRIMARY KEY,expression BLOB,flags INTEGER,timeStamp INTEGER)"

.field private static final SQL_CREATE_TIMESTAMP_INDEX:Ljava/lang/String; = "CREATE INDEX timestamp_index ON expressions(timeStamp)"

.field private static final SQL_DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS expressions"

.field private static final SQL_DROP_TIMESTAMP_INDEX:Ljava/lang/String; = "DROP INDEX IF EXISTS timestamp_index"

.field private static final SQL_GET_ALL:Ljava/lang/String; = "SELECT * FROM expressions WHERE _id <= ? AND _id >= ? ORDER BY _id DESC "

.field private static final SQL_GET_MAX:Ljava/lang/String; = "SELECT MAX(_id) FROM expressions"

.field private static final SQL_GET_MIN:Ljava/lang/String; = "SELECT MIN(_id) FROM expressions"

.field private static final SQL_GET_ROW:Ljava/lang/String; = "SELECT * FROM expressions WHERE _id = ?"

.field private static final TAG:Ljava/lang/String; = "ExpressionDB"


# instance fields
.field private databaseWarningIssued:Z

.field private mAllCursor:Landroid/database/AbstractWindowedCursor;

.field private mAllCursorBase:I

.field private mDBInitialized:Z

.field private mExpressionDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mExpressionDBHelper:Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;

.field private mIncompleteWrites:I

.field private final mLock:Ljava/lang/Object;

.field private mMaxAccessible:J

.field private mMaxIndex:J

.field private mMinAccessible:J

.field private mMinIndex:J

.field private mOpenCounts:I

.field private mWriteCountsLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, -0x989680

    .line 173
    iput-wide v0, p0, Lcom/android/calculator2/ExpressionDB;->mMinAccessible:J

    const-wide/32 v0, 0x989680

    .line 174
    iput-wide v0, p0, Lcom/android/calculator2/ExpressionDB;->mMaxAccessible:J

    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/ExpressionDB;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 430
    iput v0, p0, Lcom/android/calculator2/ExpressionDB;->mIncompleteWrites:I

    .line 431
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/calculator2/ExpressionDB;->mWriteCountsLock:Ljava/lang/Object;

    .line 209
    invoke-static {}, Lcom/android/calculator2/SystemUtil;->isNOrLater()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Expressions.db"

    .line 214
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ExpressionDB"

    const-string v2, "Failed to migrate database."

    .line 215
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object p1, v1

    .line 220
    :cond_1
    new-instance v1, Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;

    invoke-direct {v1, p1}, Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calculator2/ExpressionDB;->mExpressionDBHelper:Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;

    .line 221
    new-instance p1, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;-><init>(Lcom/android/calculator2/ExpressionDB;Lcom/android/calculator2/ExpressionDB$1;)V

    .line 224
    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;

    iget-object p0, p0, Lcom/android/calculator2/ExpressionDB;->mExpressionDBHelper:Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;

    aput-object p0, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/android/calculator2/ExpressionDB$AsyncInitializer;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$100(Lcom/android/calculator2/ExpressionDB;)Ljava/lang/Object;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/calculator2/ExpressionDB;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/calculator2/ExpressionDB;J)J
    .locals 0

    .line 53
    iput-wide p1, p0, Lcom/android/calculator2/ExpressionDB;->mMaxAccessible:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/calculator2/ExpressionDB;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/calculator2/ExpressionDB;->writeCompleted()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calculator2/ExpressionDB;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/calculator2/ExpressionDB;->mExpressionDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/calculator2/ExpressionDB;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/calculator2/ExpressionDB;->mExpressionDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/calculator2/ExpressionDB;)J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/android/calculator2/ExpressionDB;->mMinIndex:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/calculator2/ExpressionDB;J)J
    .locals 0

    .line 53
    iput-wide p1, p0, Lcom/android/calculator2/ExpressionDB;->mMinIndex:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/calculator2/ExpressionDB;)J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/android/calculator2/ExpressionDB;->mMaxIndex:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/calculator2/ExpressionDB;J)J
    .locals 0

    .line 53
    iput-wide p1, p0, Lcom/android/calculator2/ExpressionDB;->mMaxIndex:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/calculator2/ExpressionDB;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/calculator2/ExpressionDB;->mAllCursorBase:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/calculator2/ExpressionDB;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/android/calculator2/ExpressionDB;->mAllCursorBase:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/calculator2/ExpressionDB;)Landroid/database/AbstractWindowedCursor;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/calculator2/ExpressionDB;->mAllCursor:Landroid/database/AbstractWindowedCursor;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/calculator2/ExpressionDB;Landroid/database/AbstractWindowedCursor;)Landroid/database/AbstractWindowedCursor;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/calculator2/ExpressionDB;->mAllCursor:Landroid/database/AbstractWindowedCursor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/calculator2/ExpressionDB;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/calculator2/ExpressionDB;->setBadDB()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/calculator2/ExpressionDB;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/calculator2/ExpressionDB;->mDBInitialized:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/calculator2/ExpressionDB;J)J
    .locals 0

    .line 53
    iput-wide p1, p0, Lcom/android/calculator2/ExpressionDB;->mMinAccessible:J

    return-wide p1
.end method

.method private getRowDirect(J)Lcom/android/calculator2/ExpressionDB$RowData;
    .locals 6

    const/4 v0, 0x1

    .line 559
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    .line 560
    iget-object p1, p0, Lcom/android/calculator2/ExpressionDB;->mExpressionDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "SELECT * FROM expressions WHERE _id = ?"

    invoke-virtual {p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    .line 561
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 562
    invoke-direct {p0}, Lcom/android/calculator2/ExpressionDB;->setBadDB()V

    .line 563
    invoke-virtual {p0}, Lcom/android/calculator2/ExpressionDB;->makeBadRow()Lcom/android/calculator2/ExpressionDB$RowData;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 568
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p0

    .line 565
    :cond_1
    :try_start_1
    new-instance p0, Lcom/android/calculator2/ExpressionDB$RowData;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v0, 0x3

    .line 566
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calculator2/ExpressionDB$RowData;-><init>([BIJLcom/android/calculator2/ExpressionDB$1;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 568
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    move-object p2, p0

    .line 560
    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 568
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    throw p0
.end method

.method private getRowFromCursor(I)Lcom/android/calculator2/ExpressionDB$RowData;
    .locals 7

    .line 580
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/android/calculator2/ExpressionDB;->mAllCursor:Landroid/database/AbstractWindowedCursor;

    invoke-virtual {v1, p1}, Landroid/database/AbstractWindowedCursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Calculator"

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move cursor to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-direct {p0}, Lcom/android/calculator2/ExpressionDB;->setBadDB()V

    .line 584
    invoke-virtual {p0}, Lcom/android/calculator2/ExpressionDB;->makeBadRow()Lcom/android/calculator2/ExpressionDB$RowData;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 586
    :cond_0
    new-instance p1, Lcom/android/calculator2/ExpressionDB$RowData;

    iget-object v1, p0, Lcom/android/calculator2/ExpressionDB;->mAllCursor:Landroid/database/AbstractWindowedCursor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/AbstractWindowedCursor;->getBlob(I)[B

    move-result-object v2

    iget-object v1, p0, Lcom/android/calculator2/ExpressionDB;->mAllCursor:Landroid/database/AbstractWindowedCursor;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/database/AbstractWindowedCursor;->getInt(I)I

    move-result v3

    iget-object p0, p0, Lcom/android/calculator2/ExpressionDB;->mAllCursor:Landroid/database/AbstractWindowedCursor;

    const/4 v1, 0x3

    .line 587
    invoke-virtual {p0, v1}, Landroid/database/AbstractWindowedCursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/calculator2/ExpressionDB$RowData;-><init>([BIJLcom/android/calculator2/ExpressionDB$1;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    .line 588
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private inAccessibleRange(J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private isDBBad()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private setBadDB()V
    .locals 3

    const-string v0, "Calculator"

    const-string v1, "Database access failed"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Lcom/android/calculator2/ExpressionDB;->displayDatabaseWarning()V

    .line 254
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x1

    .line 255
    :try_start_0
    iput-wide v1, p0, Lcom/android/calculator2/ExpressionDB;->mMinAccessible:J

    const-wide/16 v1, -0x1

    .line 256
    iput-wide v1, p0, Lcom/android/calculator2/ExpressionDB;->mMaxAccessible:J

    .line 257
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private waitForDBInitialized()V
    .locals 5

    const-string v0, "ExpressionDB"

    const-string v1, "Aaron: in waitForDBInitialized()"

    .line 359
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "ExpressionDB"

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aaron: mDBInitialized = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/calculator2/ExpressionDB;->mDBInitialized:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    iget-boolean v2, p0, Lcom/android/calculator2/ExpressionDB;->mDBInitialized:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/calculator2/ExpressionDB;->isDBBad()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 366
    :try_start_1
    iget-object v2, p0, Lcom/android/calculator2/ExpressionDB;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 372
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 374
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private writeCompleted()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB;->mWriteCountsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 435
    :try_start_0
    iget v1, p0, Lcom/android/calculator2/ExpressionDB;->mIncompleteWrites:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/calculator2/ExpressionDB;->mIncompleteWrites:I

    if-nez v1, :cond_0

    .line 436
    iget-object p0, p0, Lcom/android/calculator2/ExpressionDB;->mWriteCountsLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 438
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private writeStarted()V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB;->mWriteCountsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 443
    :try_start_0
    iget v1, p0, Lcom/android/calculator2/ExpressionDB;->mIncompleteWrites:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calculator2/ExpressionDB;->mIncompleteWrites:I

    .line 444
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addRow(ZLcom/android/calculator2/ExpressionDB$RowData;)J
    .locals 5

    .line 514
    invoke-direct {p0}, Lcom/android/calculator2/ExpressionDB;->waitForDBInitialized()V

    .line 515
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x1

    if-eqz p1, :cond_0

    .line 517
    :try_start_0
    iget-wide v3, p0, Lcom/android/calculator2/ExpressionDB;->mMinIndex:J

    sub-long/2addr v3, v1

    .line 518
    iput-wide v3, p0, Lcom/android/calculator2/ExpressionDB;->mMinIndex:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 520
    :cond_0
    iget-wide v3, p0, Lcom/android/calculator2/ExpressionDB;->mMaxIndex:J

    add-long/2addr v3, v1

    .line 521
    iput-wide v3, p0, Lcom/android/calculator2/ExpressionDB;->mMaxIndex:J

    .line 523
    :goto_0
    invoke-direct {p0, v3, v4}, Lcom/android/calculator2/ExpressionDB;->inAccessibleRange(J)Z

    move-result p1

    if-nez p1, :cond_1

    .line 528
    monitor-exit v0

    return-wide v3

    .line 530
    :cond_1
    invoke-direct {p0}, Lcom/android/calculator2/ExpressionDB;->writeStarted()V

    .line 531
    invoke-virtual {p2}, Lcom/android/calculator2/ExpressionDB$RowData;->toContentValues()Landroid/content/ContentValues;

    move-result-object p1

    const-string p2, "_id"

    .line 532
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 533
    new-instance p2, Lcom/android/calculator2/ExpressionDB$AsyncWriter;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/android/calculator2/ExpressionDB$AsyncWriter;-><init>(Lcom/android/calculator2/ExpressionDB;Lcom/android/calculator2/ExpressionDB$1;)V

    .line 535
    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2, p0, v1}, Lcom/android/calculator2/ExpressionDB$AsyncWriter;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 536
    monitor-exit v0

    return-wide v3

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public close()V
    .locals 2

    .line 670
    iget v0, p0, Lcom/android/calculator2/ExpressionDB;->mOpenCounts:I

    if-gtz v0, :cond_0

    const-string v0, "ExpressionDB"

    const-string v1, "aaron close: mopconts=0"

    .line 671
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object p0, p0, Lcom/android/calculator2/ExpressionDB;->mExpressionDBHelper:Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;

    invoke-virtual {p0}, Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;->close()V

    :cond_0
    return-void
.end method

.method declared-synchronized closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    monitor-enter p0

    .line 661
    :try_start_0
    iget p1, p0, Lcom/android/calculator2/ExpressionDB;->mOpenCounts:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/calculator2/ExpressionDB;->mOpenCounts:I

    const-string p1, "ExpressionDB"

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aaron closeWritableDatabase:mOpenCounts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/calculator2/ExpressionDB;->mOpenCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 660
    monitor-exit p0

    throw p1
.end method

.method displayDatabaseWarning()V
    .locals 2

    .line 349
    iget-boolean v0, p0, Lcom/android/calculator2/ExpressionDB;->databaseWarningIssued:Z

    if-nez v0, :cond_0

    const-string v0, "Calculator"

    const-string v1, "Calculator restarting due to database error"

    .line 350
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 351
    iput-boolean v0, p0, Lcom/android/calculator2/ExpressionDB;->databaseWarningIssued:Z

    :cond_0
    return-void
.end method

.method public eraseAll()V
    .locals 3

    .line 419
    invoke-direct {p0}, Lcom/android/calculator2/ExpressionDB;->waitForDBInitialized()V

    .line 420
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 421
    :try_start_0
    iput-boolean v1, p0, Lcom/android/calculator2/ExpressionDB;->mDBInitialized:Z

    .line 422
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    new-instance v0, Lcom/android/calculator2/ExpressionDB$AsyncEraser;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/calculator2/ExpressionDB$AsyncEraser;-><init>(Lcom/android/calculator2/ExpressionDB;Lcom/android/calculator2/ExpressionDB$1;)V

    .line 424
    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Lcom/android/calculator2/ExpressionDB$AsyncEraser;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catchall_0
    move-exception p0

    .line 422
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getMaxIndex()J
    .locals 3

    const-string v0, "ExpressionDB"

    const-string v1, "Aaron: getMaxIndex."

    .line 644
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-direct {p0}, Lcom/android/calculator2/ExpressionDB;->waitForDBInitialized()V

    .line 646
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 647
    :try_start_0
    iget-wide v1, p0, Lcom/android/calculator2/ExpressionDB;->mMaxIndex:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 648
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMinIndex()J
    .locals 3

    .line 637
    invoke-direct {p0}, Lcom/android/calculator2/ExpressionDB;->waitForDBInitialized()V

    .line 638
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_0
    iget-wide v1, p0, Lcom/android/calculator2/ExpressionDB;->mMinIndex:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 640
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRow(J)Lcom/android/calculator2/ExpressionDB$RowData;
    .locals 5

    .line 597
    invoke-direct {p0}, Lcom/android/calculator2/ExpressionDB;->waitForDBInitialized()V

    .line 598
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/ExpressionDB;->inAccessibleRange(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/android/calculator2/ExpressionDB;->displayDatabaseWarning()V

    .line 603
    invoke-virtual {p0}, Lcom/android/calculator2/ExpressionDB;->makeBadRow()Lcom/android/calculator2/ExpressionDB$RowData;

    move-result-object p0

    return-object p0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_0
    iget v1, p0, Lcom/android/calculator2/ExpressionDB;->mAllCursorBase:I

    long-to-int v2, p1

    sub-int/2addr v1, v2

    .line 608
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    int-to-long v1, v1

    const-wide/16 v3, 0xb

    sub-long/2addr v1, v3

    long-to-int v1, v1

    :cond_1
    if-gez v1, :cond_2

    .line 616
    invoke-virtual {p0}, Lcom/android/calculator2/ExpressionDB;->makeBadRow()Lcom/android/calculator2/ExpressionDB$RowData;

    move-result-object p0

    return-object p0

    :cond_2
    if-gez v0, :cond_3

    .line 623
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_1
    iget-object v2, p0, Lcom/android/calculator2/ExpressionDB;->mAllCursor:Landroid/database/AbstractWindowedCursor;

    invoke-virtual {v2}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v2

    .line 625
    invoke-virtual {v2}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v3

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    add-int/2addr v3, v2

    .line 626
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v1, v3, :cond_3

    .line 628
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/ExpressionDB;->getRowDirect(J)Lcom/android/calculator2/ExpressionDB$RowData;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 626
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 633
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/calculator2/ExpressionDB;->getRowFromCursor(I)Lcom/android/calculator2/ExpressionDB$RowData;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    .line 608
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method declared-synchronized getWriteableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    monitor-enter p0

    .line 652
    :try_start_0
    iget v0, p0, Lcom/android/calculator2/ExpressionDB;->mOpenCounts:I

    if-nez v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB;->mExpressionDBHelper:Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;

    invoke-virtual {v0}, Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/ExpressionDB;->mExpressionDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 655
    :cond_0
    iget v0, p0, Lcom/android/calculator2/ExpressionDB;->mOpenCounts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calculator2/ExpressionDB;->mOpenCounts:I

    const-string v0, "ExpressionDB"

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aaron getWriteableDatabase:mOpenCounts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/calculator2/ExpressionDB;->mOpenCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB;->mExpressionDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 651
    monitor-exit p0

    throw v0
.end method

.method makeBadRow()Lcom/android/calculator2/ExpressionDB$RowData;
    .locals 7

    .line 546
    new-instance p0, Lcom/android/calculator2/CalculatorExpr;

    invoke-direct {p0}, Lcom/android/calculator2/CalculatorExpr;-><init>()V

    .line 549
    new-instance v6, Lcom/android/calculator2/ExpressionDB$RowData;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorExpr;->toBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/calculator2/ExpressionDB$RowData;-><init>([BZZJ)V

    return-object v6
.end method

.method public waitForWrites()V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB;->mWriteCountsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 456
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/android/calculator2/ExpressionDB;->mIncompleteWrites:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 458
    :try_start_1
    iget-object v2, p0, Lcom/android/calculator2/ExpressionDB;->mWriteCountsLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 464
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 466
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
