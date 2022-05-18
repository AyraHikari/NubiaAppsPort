.class public Lcom/huanju/ssp/base/core/common/deviceid/IdCache;
.super Ljava/lang/Object;
.source "IdCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IdCache"


# instance fields
.field private mFlockTimeout:J

.field private mSPCommitNow:Z

.field private mSPMultiProcess:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->mSPCommitNow:Z

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->mSPMultiProcess:Z

    .line 26
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->mFlockTimeout:J

    return-void
.end method

.method private closeSafely(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "c"    # Ljava/io/Closeable;

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 251
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method enableSPMultiProcess(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->mSPMultiProcess:Z

    .line 36
    return-void
.end method

.method loadFromCursor(Landroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .param p4, "toClose"    # Z

    .prologue
    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "moveOk":Z
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    array-length v3, p2

    if-lez v3, :cond_1

    if-eqz p3, :cond_1

    array-length v3, p2

    array-length v4, p3

    if-ne v3, v4, :cond_1

    .line 168
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 170
    aget-object v3, p2, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    aget-object v3, p2, v1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 172
    .local v0, "ci":I
    if-ltz v0, :cond_0

    .line 174
    :try_start_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    .end local v0    # "ci":I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v1    # "i":I
    :catch_0
    move-exception v3

    .line 186
    :cond_1
    if-eqz p4, :cond_2

    if-eqz p1, :cond_2

    .line 187
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_2
    return v2

    .line 175
    .restart local v0    # "ci":I
    .restart local v1    # "i":I
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method loadFromFile(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "keys"    # [Ljava/lang/String;
    .param p4, "values"    # [Ljava/lang/String;

    .prologue
    .line 97
    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p3, :cond_2

    array-length v3, p3

    if-lez v3, :cond_2

    if-eqz p4, :cond_2

    array-length v3, p3

    array-length v4, p4

    if-ne v3, v4, :cond_2

    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 103
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 104
    .local v2, "p":Ljava/util/Properties;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_1

    .line 106
    aget-object v3, p3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 108
    :try_start_1
    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0, v1}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    .line 120
    .end local v0    # "i":I
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "p":Ljava/util/Properties;
    :cond_2
    :goto_2
    return-void

    .line 114
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 117
    invoke-direct {p0, v1}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v3

    invoke-direct {p0, v1}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    .line 118
    throw v3

    .line 109
    .restart local v0    # "i":I
    .restart local v2    # "p":Ljava/util/Properties;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method loadFromSP(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "keys"    # [Ljava/lang/String;
    .param p4, "values"    # [Ljava/lang/String;

    .prologue
    .line 44
    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p3, :cond_2

    array-length v3, p3

    if-lez v3, :cond_2

    if-eqz p4, :cond_2

    array-length v3, p3

    array-length v4, p4

    if-ne v3, v4, :cond_2

    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "mode":I
    iget-boolean v3, p0, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->mSPMultiProcess:Z

    if-eqz v3, :cond_0

    .line 48
    or-int/lit8 v1, v1, 0x4

    .line 50
    :cond_0
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 51
    .local v2, "sp":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_2

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_2

    .line 53
    aget-object v3, p3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 55
    :try_start_0
    aget-object v3, p3, v0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "i":I
    .end local v1    # "mode":I
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    return-void

    .line 56
    .restart local v0    # "i":I
    .restart local v1    # "mode":I
    .restart local v2    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method obtainFileLock(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x14

    const/4 v5, 0x0

    .line 199
    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 202
    const-wide/16 v0, 0x14

    .line 204
    .local v0, "RETRY_INTERVAL_MS":J
    iget-wide v8, p0, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->mFlockTimeout:J

    div-long v6, v8, v10

    .line 205
    .local v6, "maxRetryCount":J
    const/4 v2, 0x0

    .line 207
    .local v2, "count":I
    :cond_0
    new-instance v4, Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;

    invoke-direct {v4, v5}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;-><init>(Lcom/huanju/ssp/base/core/common/deviceid/IdCache$1;)V

    .line 209
    .local v4, "holder":Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ".lock_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v8, v4, Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;->fos:Ljava/io/FileOutputStream;

    .line 210
    iget-object v8, v4, Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v8

    iput-object v8, v4, Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;->flock:Ljava/nio/channels/FileLock;

    .line 211
    iget-object v8, v4, Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;->flock:Ljava/nio/channels/FileLock;

    if-eqz v8, :cond_1

    iget-object v8, v4, Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;->flock:Ljava/nio/channels/FileLock;

    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 230
    .end local v0    # "RETRY_INTERVAL_MS":J
    .end local v2    # "count":I
    .end local v4    # "holder":Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;
    .end local v6    # "maxRetryCount":J
    :goto_0
    return-object v4

    .line 214
    .restart local v0    # "RETRY_INTERVAL_MS":J
    .restart local v2    # "count":I
    .restart local v4    # "holder":Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;
    .restart local v6    # "maxRetryCount":J
    :catch_0
    move-exception v3

    .line 215
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "IdCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to obtain file lock "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->releaseFileLock(Ljava/lang/Object;)V

    .line 220
    int-to-long v8, v2

    const-wide/16 v10, 0x1

    sub-long v10, v6, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 222
    const-wide/16 v8, 0x14

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    int-to-long v8, v2

    cmp-long v8, v8, v6

    if-ltz v8, :cond_0

    .line 228
    const-string v8, "IdCache"

    const-string v9, "Can\'t obtain file lock, timeout !"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "RETRY_INTERVAL_MS":J
    .end local v2    # "count":I
    .end local v4    # "holder":Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;
    .end local v6    # "maxRetryCount":J
    :cond_3
    move-object v4, v5

    .line 230
    goto :goto_0

    .line 223
    .restart local v0    # "RETRY_INTERVAL_MS":J
    .restart local v2    # "count":I
    .restart local v4    # "holder":Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;
    .restart local v6    # "maxRetryCount":J
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method releaseFileLock(Ljava/lang/Object;)V
    .locals 2
    .param p1, "holder"    # Ljava/lang/Object;

    .prologue
    .line 234
    instance-of v1, p1, Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 235
    check-cast v0, Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;

    .line 236
    .local v0, "h":Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;
    iget-object v1, v0, Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;->flock:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_0

    .line 238
    :try_start_0
    iget-object v1, v0, Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;->flock:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;->fos:Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    .line 246
    .end local v0    # "h":Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;
    :cond_1
    return-void

    .line 239
    .restart local v0    # "h":Lcom/huanju/ssp/base/core/common/deviceid/IdCache$FlockHolder;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method saveToFile(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "keys"    # [Ljava/lang/String;
    .param p4, "values"    # [Ljava/lang/String;

    .prologue
    .line 125
    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz p3, :cond_3

    array-length v5, p3

    if-lez v5, :cond_3

    if-eqz p4, :cond_3

    array-length v5, p3

    array-length v6, p4

    if-ne v5, v6, :cond_3

    .line 128
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 129
    .local v4, "p":Ljava/util/Properties;
    const/4 v2, 0x0

    .line 131
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 132
    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-direct {p0, v2}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    .line 138
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, p3

    if-ge v1, v5, :cond_2

    .line 139
    aget-object v5, p3, v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 141
    :try_start_1
    aget-object v5, p4, v1

    if-eqz v5, :cond_1

    .line 142
    aget-object v5, p3, v1

    aget-object v6, p4, v1

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    .end local v1    # "i":I
    :catch_0
    move-exception v5

    .line 136
    invoke-direct {p0, v2}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-direct {p0, v2}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    .line 137
    throw v5

    .line 144
    .restart local v1    # "i":I
    :cond_1
    :try_start_2
    aget-object v5, p3, v1

    invoke-virtual {v4, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 146
    :catch_1
    move-exception v5

    goto :goto_2

    .line 151
    :cond_2
    const/4 v3, 0x0

    .line 153
    .local v3, "os":Ljava/io/OutputStream;
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 154
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 158
    invoke-direct {p0, v3}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    .line 161
    .end local v1    # "i":I
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "p":Ljava/util/Properties;
    :cond_3
    :goto_3
    return-void

    .line 155
    .restart local v1    # "i":I
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "p":Ljava/util/Properties;
    :catch_2
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "IdCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to save to file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 158
    invoke-direct {p0, v3}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    invoke-direct {p0, v3}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    .line 159
    throw v5
.end method

.method saveToSP(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "keys"    # [Ljava/lang/String;
    .param p4, "values"    # [Ljava/lang/String;

    .prologue
    .line 68
    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p3, :cond_3

    array-length v4, p3

    if-lez v4, :cond_3

    if-eqz p4, :cond_3

    array-length v4, p3

    array-length v5, p4

    if-ne v4, v5, :cond_3

    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, "mode":I
    iget-boolean v4, p0, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->mSPMultiProcess:Z

    if-eqz v4, :cond_0

    .line 72
    or-int/lit8 v1, v1, 0x4

    .line 74
    :cond_0
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 75
    .local v2, "sp":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_3

    .line 76
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 77
    .local v3, "spe":Landroid/content/SharedPreferences$Editor;
    if-eqz v3, :cond_3

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p3

    if-ge v0, v4, :cond_2

    .line 79
    aget-object v4, p3, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 80
    aget-object v4, p3, v0

    aget-object v5, p4, v0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_2
    iget-boolean v4, p0, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->mSPCommitNow:Z

    if-eqz v4, :cond_4

    .line 85
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    if-nez v4, :cond_3

    .line 86
    const-string v4, "IdCache"

    const-string v5, "Failed to commit prefs"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "i":I
    .end local v1    # "mode":I
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "spe":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :goto_1
    return-void

    .line 89
    .restart local v0    # "i":I
    .restart local v1    # "mode":I
    .restart local v2    # "sp":Landroid/content/SharedPreferences;
    .restart local v3    # "spe":Landroid/content/SharedPreferences$Editor;
    :cond_4
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method setFlockTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->mFlockTimeout:J

    .line 41
    return-void
.end method

.method setSPCommitNow(Z)V
    .locals 0
    .param p1, "commitNow"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->mSPCommitNow:Z

    .line 31
    return-void
.end method
