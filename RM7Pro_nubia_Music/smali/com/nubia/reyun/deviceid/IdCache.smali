.class public Lcom/nubia/reyun/deviceid/IdCache;
.super Ljava/lang/Object;
.source "IdCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/reyun/deviceid/IdCache$FlockHolder;
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

    iput-boolean v0, p0, Lcom/nubia/reyun/deviceid/IdCache;->mSPCommitNow:Z

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nubia/reyun/deviceid/IdCache;->mSPMultiProcess:Z

    .line 26
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/nubia/reyun/deviceid/IdCache;->mFlockTimeout:J

    .line 18
    return-void
.end method

.method private closeSafely(Ljava/io/Closeable;)V
    .locals 1

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

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/nubia/reyun/deviceid/IdCache;->mSPMultiProcess:Z

    .line 36
    return-void
.end method

.method loadFromCursor(Landroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 164
    .line 165
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    if-eqz p3, :cond_0

    .line 166
    array-length v0, p2

    array-length v2, p3

    if-ne v0, v2, :cond_0

    .line 168
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    :goto_0
    :try_start_1
    array-length v2, p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lt v1, v2, :cond_2

    move v1, v0

    .line 186
    :cond_0
    :goto_1
    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    .line 187
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_1
    return v1

    .line 170
    :cond_2
    :try_start_2
    aget-object v2, p2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 171
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 172
    if-ltz v2, :cond_3

    .line 174
    :try_start_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 169
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_3

    .line 175
    :catch_2
    move-exception v2

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method loadFromFile(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 97
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 98
    if-eqz p4, :cond_0

    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 103
    :try_start_1
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 104
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 105
    const/4 v1, 0x0

    :goto_0
    array-length v3, p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lt v1, v3, :cond_1

    .line 117
    invoke-direct {p0, v0}, Lcom/nubia/reyun/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    .line 120
    :cond_0
    :goto_1
    return-void

    .line 106
    :cond_1
    :try_start_2
    aget-object v3, p3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-nez v3, :cond_2

    .line 108
    :try_start_3
    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 117
    invoke-direct {p0, v0}, Lcom/nubia/reyun/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_1

    .line 116
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 117
    :goto_3
    invoke-direct {p0, v1}, Lcom/nubia/reyun/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    .line 118
    throw v0

    .line 116
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 109
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method loadFromSP(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 44
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 45
    if-eqz p4, :cond_0

    array-length v0, p3

    array-length v2, p4

    if-ne v0, v2, :cond_0

    .line 47
    iget-boolean v0, p0, Lcom/nubia/reyun/deviceid/IdCache;->mSPMultiProcess:Z

    if-eqz v0, :cond_3

    .line 48
    const/4 v0, 0x4

    .line 50
    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    :goto_1
    array-length v2, p3

    if-lt v1, v2, :cond_1

    .line 63
    :cond_0
    return-void

    .line 53
    :cond_1
    aget-object v2, p3, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 55
    :try_start_0
    aget-object v2, p3, v1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    :catch_0
    move-exception v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method obtainFileLock(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10

    .prologue
    const-wide/16 v4, 0x14

    const/4 v2, 0x0

    .line 199
    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 204
    iget-wide v0, p0, Lcom/nubia/reyun/deviceid/IdCache;->mFlockTimeout:J

    div-long v4, v0, v4

    .line 205
    const/4 v0, 0x0

    .line 207
    :cond_0
    new-instance v1, Lcom/nubia/reyun/deviceid/IdCache$FlockHolder;

    invoke-direct {v1, v2}, Lcom/nubia/reyun/deviceid/IdCache$FlockHolder;-><init>(Lcom/nubia/reyun/deviceid/IdCache$FlockHolder;)V

    .line 209
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ".lock_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, v1, Lcom/nubia/reyun/deviceid/IdCache$FlockHolder;->fos:Ljava/io/FileOutputStream;

    .line 210
    iget-object v3, v1, Lcom/nubia/reyun/deviceid/IdCache$FlockHolder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v3

    iput-object v3, v1, Lcom/nubia/reyun/deviceid/IdCache$FlockHolder;->flock:Ljava/nio/channels/FileLock;

    .line 211
    iget-object v3, v1, Lcom/nubia/reyun/deviceid/IdCache$FlockHolder;->flock:Ljava/nio/channels/FileLock;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/nubia/reyun/deviceid/IdCache$FlockHolder;->flock:Ljava/nio/channels/FileLock;

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 230
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v3

    .line 215
    const-string v6, "IdCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to obtain file lock "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_1
    invoke-virtual {p0, v1}, Lcom/nubia/reyun/deviceid/IdCache;->releaseFileLock(Ljava/lang/Object;)V

    .line 220
    int-to-long v6, v0

    const-wide/16 v8, 0x1

    sub-long v8, v4, v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_2

    .line 222
    const-wide/16 v6, 0x14

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    int-to-long v6, v0

    .line 206
    cmp-long v1, v6, v4

    if-ltz v1, :cond_0

    .line 228
    const-string v0, "IdCache"

    const-string v1, "Can\'t obtain file lock, timeout !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v2

    .line 230
    goto :goto_0

    .line 223
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method releaseFileLock(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 234
    instance-of v0, p1, Lcom/nubia/reyun/deviceid/IdCache$FlockHolder;

    if-eqz v0, :cond_1

    .line 235
    check-cast p1, Lcom/nubia/reyun/deviceid/IdCache$FlockHolder;

    .line 236
    iget-object v0, p1, Lcom/nubia/reyun/deviceid/IdCache$FlockHolder;->flock:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    .line 238
    :try_start_0
    iget-object v0, p1, Lcom/nubia/reyun/deviceid/IdCache$FlockHolder;->flock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/nubia/reyun/deviceid/IdCache$FlockHolder;->fos:Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Lcom/nubia/reyun/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    .line 246
    :cond_1
    return-void

    .line 239
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method saveToFile(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 125
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    .line 126
    if-eqz p4, :cond_0

    array-length v1, p3

    array-length v3, p4

    if-ne v1, v3, :cond_0

    .line 128
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 131
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 132
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 136
    invoke-direct {p0, v1}, Lcom/nubia/reyun/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    .line 138
    :goto_0
    array-length v1, p3

    if-lt v0, v1, :cond_1

    .line 153
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 154
    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    invoke-direct {p0, v2}, Lcom/nubia/reyun/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    .line 161
    :cond_0
    :goto_1
    return-void

    .line 133
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 136
    :goto_2
    invoke-direct {p0, v1}, Lcom/nubia/reyun/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 136
    :goto_3
    invoke-direct {p0, v1}, Lcom/nubia/reyun/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    .line 137
    throw v0

    .line 139
    :cond_1
    aget-object v1, p3, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 141
    :try_start_3
    aget-object v1, p4, v0

    if-eqz v1, :cond_3

    .line 142
    aget-object v1, p3, v0

    aget-object v4, p4, v0

    invoke-virtual {v3, v1, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    :cond_2
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_3
    aget-object v1, p3, v0

    invoke-virtual {v3, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 146
    :catch_1
    move-exception v1

    goto :goto_4

    .line 155
    :catch_2
    move-exception v0

    .line 156
    :try_start_4
    const-string v1, "IdCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to save to file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 158
    invoke-direct {p0, v2}, Lcom/nubia/reyun/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_1

    .line 157
    :catchall_1
    move-exception v0

    .line 158
    invoke-direct {p0, v2}, Lcom/nubia/reyun/deviceid/IdCache;->closeSafely(Ljava/io/Closeable;)V

    .line 159
    throw v0

    .line 135
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 133
    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method saveToSP(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 68
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 69
    if-eqz p4, :cond_0

    array-length v0, p3

    array-length v2, p4

    if-ne v0, v2, :cond_0

    .line 71
    iget-boolean v0, p0, Lcom/nubia/reyun/deviceid/IdCache;->mSPMultiProcess:Z

    if-eqz v0, :cond_4

    .line 72
    const/4 v0, 0x4

    .line 74
    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    :goto_1
    array-length v2, p3

    if-lt v1, v2, :cond_1

    .line 83
    iget-boolean v1, p0, Lcom/nubia/reyun/deviceid/IdCache;->mSPCommitNow:Z

    if-eqz v1, :cond_3

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const-string v0, "IdCache"

    const-string v1, "Failed to commit prefs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    :goto_2
    return-void

    .line 79
    :cond_1
    aget-object v2, p3, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 80
    aget-object v2, p3, v1

    aget-object v3, p4, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method setFlockTimeout(J)V
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/nubia/reyun/deviceid/IdCache;->mFlockTimeout:J

    .line 41
    return-void
.end method

.method setSPCommitNow(Z)V
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/nubia/reyun/deviceid/IdCache;->mSPCommitNow:Z

    .line 31
    return-void
.end method
