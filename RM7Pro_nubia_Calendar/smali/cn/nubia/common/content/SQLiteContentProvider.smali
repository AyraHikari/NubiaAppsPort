.class public abstract Lcn/nubia/common/content/SQLiteContentProvider;
.super Landroid/content/ContentProvider;
.source "SQLiteContentProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# static fields
.field private static final MAX_OPERATIONS_PER_YIELD_POINT:I = 0x1f4

.field private static final SLEEP_AFTER_YIELD_DELAY:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "SQLiteContentProvider"


# instance fields
.field private final mApplyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private volatile mNotifyChange:Z

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private applyingBatch()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v10, 0x0

    .line 205
    const/4 v6, 0x0

    .line 206
    .local v6, "ypCount":I
    const/4 v2, 0x0

    .line 207
    .local v2, "opCount":I
    iget-object v7, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 208
    iget-object v7, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 210
    :try_start_0
    iget-object v7, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 211
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 212
    .local v1, "numOperations":I
    new-array v4, v1, [Landroid/content/ContentProviderResult;

    .line 213
    .local v4, "results":[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 214
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcn/nubia/common/content/SQLiteContentProvider;->getMaxOperationsPerYield()I

    move-result v7

    if-le v2, v7, :cond_0

    .line 215
    new-instance v7, Landroid/content/OperationApplicationException;

    const-string v8, "Too many content provider operations between yield points. The maximum number of operations per yield point is 500"

    invoke-direct {v7, v8, v6}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local v0    # "i":I
    .end local v1    # "numOperations":I
    .end local v4    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 237
    iget-object v8, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 238
    invoke-virtual {p0}, Lcn/nubia/common/content/SQLiteContentProvider;->onEndTransaction()V

    .line 239
    throw v7

    .line 220
    .restart local v0    # "i":I
    .restart local v1    # "numOperations":I
    .restart local v4    # "results":[Landroid/content/ContentProviderResult;
    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    .line 221
    .local v3, "operation":Landroid/content/ContentProviderOperation;
    if-lez v0, :cond_1

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 222
    const/4 v2, 0x0

    .line 223
    iget-boolean v5, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mNotifyChange:Z

    .line 224
    .local v5, "savedNotifyChange":Z
    iget-object v7, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-wide/16 v8, 0xfa0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 225
    iget-object v7, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 226
    iput-boolean v5, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mNotifyChange:Z

    .line 227
    add-int/lit8 v6, v6, 0x1

    .line 231
    .end local v5    # "savedNotifyChange":Z
    :cond_1
    invoke-virtual {v3, p0, v4, v0}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v7

    aput-object v7, v4, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    .end local v3    # "operation":Landroid/content/ContentProviderOperation;
    :cond_2
    iget-object v7, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    iget-object v7, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 237
    iget-object v7, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 238
    invoke-virtual {p0}, Lcn/nubia/common/content/SQLiteContentProvider;->onEndTransaction()V

    .line 234
    return-object v4
.end method

.method protected beforeTransactionCommit()V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 123
    array-length v1, p2

    .line 124
    .local v1, "numValues":I
    iget-object v5, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    iget-object v5, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 128
    :try_start_0
    aget-object v5, p2, v0

    invoke-virtual {p0, p1, v5}, Lcn/nubia/common/content/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 129
    .local v2, "result":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 130
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mNotifyChange:Z

    .line 132
    :cond_0
    iget-boolean v4, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mNotifyChange:Z

    .line 133
    .local v4, "savedNotifyChange":Z
    iget-object v3, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 134
    .local v3, "savedDb":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 135
    iput-object v3, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 136
    iput-boolean v4, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mNotifyChange:Z

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v2    # "result":Landroid/net/Uri;
    .end local v3    # "savedDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "savedNotifyChange":Z
    :cond_1
    iget-object v5, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v5, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 143
    invoke-virtual {p0}, Lcn/nubia/common/content/SQLiteContentProvider;->onEndTransaction()V

    .line 144
    return v1

    .line 140
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 141
    throw v5
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 177
    const/4 v1, 0x0

    .line 178
    .local v1, "count":I
    invoke-direct {p0}, Lcn/nubia/common/content/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 179
    .local v0, "applyingBatch":Z
    if-nez v0, :cond_2

    .line 180
    iget-object v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 181
    iget-object v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 183
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/common/content/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 184
    if-lez v1, :cond_0

    .line 185
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mNotifyChange:Z

    .line 187
    :cond_0
    iget-object v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    iget-object v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 192
    invoke-virtual {p0}, Lcn/nubia/common/content/SQLiteContentProvider;->onEndTransaction()V

    .line 199
    :cond_1
    :goto_0
    return v1

    .line 189
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 190
    throw v2

    .line 194
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/common/content/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 195
    if-lez v1, :cond_1

    .line 196
    iput-boolean v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method protected abstract getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method public getMaxOperationsPerYield()I
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x1f4

    return v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x1

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "result":Landroid/net/Uri;
    invoke-direct {p0}, Lcn/nubia/common/content/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 98
    .local v0, "applyingBatch":Z
    if-nez v0, :cond_2

    .line 99
    iget-object v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 100
    iget-object v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 102
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/common/content/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_0

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mNotifyChange:Z

    .line 106
    :cond_0
    iget-object v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 111
    invoke-virtual {p0}, Lcn/nubia/common/content/SQLiteContentProvider;->onEndTransaction()V

    .line 118
    :cond_1
    :goto_0
    return-object v1

    .line 108
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 109
    throw v2

    .line 113
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcn/nubia/common/content/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_1

    .line 115
    iput-boolean v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected abstract notifyChange()V
.end method

.method public onBegin()V
    .locals 0

    .prologue
    .line 244
    invoke-virtual {p0}, Lcn/nubia/common/content/SQLiteContentProvider;->onBeginTransaction()V

    .line 245
    return-void
.end method

.method protected onBeginTransaction()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public onCommit()V
    .locals 0

    .prologue
    .line 249
    invoke-virtual {p0}, Lcn/nubia/common/content/SQLiteContentProvider;->beforeTransactionCommit()V

    .line 250
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcn/nubia/common/content/SQLiteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcn/nubia/common/content/SQLiteContentProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 63
    const/4 v1, 0x1

    return v1
.end method

.method protected onEndTransaction()V
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mNotifyChange:Z

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mNotifyChange:Z

    .line 266
    invoke-virtual {p0}, Lcn/nubia/common/content/SQLiteContentProvider;->notifyChange()V

    .line 268
    :cond_0
    return-void
.end method

.method public onRollback()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, "count":I
    invoke-direct {p0}, Lcn/nubia/common/content/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 151
    .local v0, "applyingBatch":Z
    if-nez v0, :cond_2

    .line 152
    iget-object v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 153
    iget-object v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 155
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/common/content/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 156
    if-lez v1, :cond_0

    .line 157
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mNotifyChange:Z

    .line 159
    :cond_0
    iget-object v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 164
    invoke-virtual {p0}, Lcn/nubia/common/content/SQLiteContentProvider;->onEndTransaction()V

    .line 172
    :cond_1
    :goto_0
    return v1

    .line 161
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 162
    throw v2

    .line 166
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/common/content/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 167
    if-lez v1, :cond_1

    .line 168
    iput-boolean v2, p0, Lcn/nubia/common/content/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
