.class public Lcom/huanju/ssp/base/core/report/db/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# static fields
.field private static instance:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

.field private static mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    new-instance v0, Lcom/huanju/ssp/base/core/report/db/AdSQLHelper;

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/core/report/db/AdSQLHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 19
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/huanju/ssp/base/core/report/db/DatabaseManager;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->instance:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->instance:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;

    .line 25
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->instance:Lcom/huanju/ssp/base/core/report/db/DatabaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized closeDatabase()V
    .locals 1

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 31
    sget-object v0, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/db/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
