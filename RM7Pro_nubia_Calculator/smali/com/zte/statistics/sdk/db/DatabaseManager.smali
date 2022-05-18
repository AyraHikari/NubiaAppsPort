.class public Lcom/zte/statistics/sdk/db/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# static fields
.field private static instance:Lcom/zte/statistics/sdk/db/DatabaseManager;

.field private static mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/zte/statistics/sdk/db/DatabaseManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/zte/statistics/sdk/db/DatabaseManager;
    .locals 4

    const-class v0, Lcom/zte/statistics/sdk/db/DatabaseManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/zte/statistics/sdk/db/DatabaseManager;->instance:Lcom/zte/statistics/sdk/db/DatabaseManager;

    if-eqz v1, :cond_0

    .line 31
    sget-object v1, Lcom/zte/statistics/sdk/db/DatabaseManager;->instance:Lcom/zte/statistics/sdk/db/DatabaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 26
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/zte/statistics/sdk/db/DatabaseManager;

    .line 27
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not initialized, call initializeInstance(..) method first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initializeInstance(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/zte/statistics/sdk/db/DatabaseManager;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/zte/statistics/sdk/db/DatabaseManager;->instance:Lcom/zte/statistics/sdk/db/DatabaseManager;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/zte/statistics/sdk/db/DatabaseManager;

    invoke-direct {v1}, Lcom/zte/statistics/sdk/db/DatabaseManager;-><init>()V

    sput-object v1, Lcom/zte/statistics/sdk/db/DatabaseManager;->instance:Lcom/zte/statistics/sdk/db/DatabaseManager;

    .line 20
    new-instance v1, Lcom/zte/statistics/sdk/db/DBHelper;

    invoke-direct {v1, p0}, Lcom/zte/statistics/sdk/db/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/zte/statistics/sdk/db/DatabaseManager;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized closeDatabase()V
    .locals 1

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/zte/statistics/sdk/db/DatabaseManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/zte/statistics/sdk/db/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 49
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 43
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/zte/statistics/sdk/db/DatabaseManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 37
    sget-object v0, Lcom/zte/statistics/sdk/db/DatabaseManager;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/statistics/sdk/db/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/zte/statistics/sdk/db/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 34
    monitor-exit p0

    throw v0
.end method
