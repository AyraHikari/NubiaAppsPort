.class public Lcn/nubia/music/app/model/MetadataCheck;
.super Ljava/lang/Object;
.source "MetadataCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/app/model/MetadataCheck$Metadata;
    }
.end annotation


# static fields
.field public static final ID3V1_ONLY:I = 0x0

.field public static final ID3V2_ONLY:I = 0x1

.field public static final ID3_MIXED_3V1_FIRST:I = 0x3

.field public static final ID3_MIXED_3V2_FIRST:I = 0x2

.field public static final TAG:Ljava/lang/String; = "check metadata"

.field private static sInstance:Lcn/nubia/music/app/model/MetadataCheck;


# instance fields
.field private mCheckHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mIsChecking:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/app/model/MetadataCheck;->mIsChecking:Z

    .line 55
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "metadata_check"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/nubia/music/app/model/MetadataCheck;->mCheckHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/app/model/MetadataCheck;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/music/app/model/MetadataCheck;->startCheckMetadata(I)V

    return-void
.end method

.method static synthetic access$102(Lcn/nubia/music/app/model/MetadataCheck;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcn/nubia/music/app/model/MetadataCheck;->mIsChecking:Z

    return p1
.end method

.method public static adjustMetaData(Lcn/nubia/music/app/scan/MediaInfo;I)Lcn/nubia/music/app/scan/MediaInfo;
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 148
    iget-object v9, p0, Lcn/nubia/music/app/scan/MediaInfo;->mPath:Ljava/lang/String;

    .line 149
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-object p0

    .line 165
    :cond_1
    :try_start_0
    new-instance v6, Lcom/mpatric/mp3agic/s;

    invoke-direct {v6, v9}, Lcom/mpatric/mp3agic/s;-><init>(Ljava/lang/String;)V

    .line 166
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lcom/mpatric/mp3agic/s;->e()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 168
    invoke-virtual {v6}, Lcom/mpatric/mp3agic/s;->f()Lcom/mpatric/mp3agic/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/mpatric/mp3agic/i;->d()Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-virtual {v6}, Lcom/mpatric/mp3agic/s;->f()Lcom/mpatric/mp3agic/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/mpatric/mp3agic/i;->e()Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {v6}, Lcom/mpatric/mp3agic/s;->f()Lcom/mpatric/mp3agic/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/mpatric/mp3agic/i;->c()Ljava/lang/String;

    move-result-object v1

    move v8, v7

    .line 173
    :goto_1
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lcom/mpatric/mp3agic/s;->c()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 175
    invoke-virtual {v6}, Lcom/mpatric/mp3agic/s;->d()Lcom/mpatric/mp3agic/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/mpatric/mp3agic/g;->d()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-virtual {v6}, Lcom/mpatric/mp3agic/s;->d()Lcom/mpatric/mp3agic/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/mpatric/mp3agic/g;->e()Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-virtual {v6}, Lcom/mpatric/mp3agic/s;->d()Lcom/mpatric/mp3agic/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/mpatric/mp3agic/g;->c()Ljava/lang/String;

    move-result-object v0

    move v6, v7

    .line 180
    :goto_2
    if-eqz v8, :cond_3

    if-nez v6, :cond_3

    .line 181
    iput-object v5, p0, Lcn/nubia/music/app/scan/MediaInfo;->mTitle:Ljava/lang/String;

    .line 182
    iput-object v3, p0, Lcn/nubia/music/app/scan/MediaInfo;->mAlbum:Ljava/lang/String;

    .line 183
    iput-object v1, p0, Lcn/nubia/music/app/scan/MediaInfo;->mArtist:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 216
    :cond_2
    :goto_3
    :try_start_1
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaInfo;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const/16 v0, 0x2f

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    const/4 v1, 0x0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 219
    iput-object v0, p0, Lcn/nubia/music/app/scan/MediaInfo;->mTitle:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :cond_3
    if-eqz v6, :cond_4

    if-nez v8, :cond_4

    .line 185
    :try_start_2
    iput-object v4, p0, Lcn/nubia/music/app/scan/MediaInfo;->mTitle:Ljava/lang/String;

    .line 186
    iput-object v2, p0, Lcn/nubia/music/app/scan/MediaInfo;->mAlbum:Ljava/lang/String;

    .line 187
    iput-object v0, p0, Lcn/nubia/music/app/scan/MediaInfo;->mArtist:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 212
    :catch_1
    move-exception v0

    .line 213
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 188
    :cond_4
    if-eqz v6, :cond_2

    if-eqz v8, :cond_2

    .line 189
    if-nez p1, :cond_5

    .line 190
    :try_start_3
    iput-object v4, p0, Lcn/nubia/music/app/scan/MediaInfo;->mTitle:Ljava/lang/String;

    .line 191
    iput-object v2, p0, Lcn/nubia/music/app/scan/MediaInfo;->mAlbum:Ljava/lang/String;

    .line 192
    iput-object v0, p0, Lcn/nubia/music/app/scan/MediaInfo;->mArtist:Ljava/lang/String;

    goto :goto_3

    .line 212
    :catch_2
    move-exception v0

    goto :goto_4

    .line 193
    :cond_5
    if-ne p1, v7, :cond_6

    .line 194
    iput-object v5, p0, Lcn/nubia/music/app/scan/MediaInfo;->mTitle:Ljava/lang/String;

    .line 195
    iput-object v3, p0, Lcn/nubia/music/app/scan/MediaInfo;->mAlbum:Ljava/lang/String;

    .line 196
    iput-object v1, p0, Lcn/nubia/music/app/scan/MediaInfo;->mArtist:Ljava/lang/String;

    goto/16 :goto_3

    .line 197
    :cond_6
    const/4 v6, 0x2

    if-ne p1, v6, :cond_a

    .line 198
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    :goto_5
    iput-object v5, p0, Lcn/nubia/music/app/scan/MediaInfo;->mTitle:Ljava/lang/String;

    .line 199
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    :goto_6
    iput-object v3, p0, Lcn/nubia/music/app/scan/MediaInfo;->mAlbum:Ljava/lang/String;

    .line 200
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    :goto_7
    iput-object v1, p0, Lcn/nubia/music/app/scan/MediaInfo;->mArtist:Ljava/lang/String;

    goto/16 :goto_3

    :cond_7
    move-object v5, v4

    .line 198
    goto :goto_5

    :cond_8
    move-object v3, v2

    .line 199
    goto :goto_6

    :cond_9
    move-object v1, v0

    .line 200
    goto :goto_7

    .line 201
    :cond_a
    const/4 v6, 0x3

    if-ne p1, v6, :cond_e

    .line 202
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    :goto_8
    iput-object v4, p0, Lcn/nubia/music/app/scan/MediaInfo;->mTitle:Ljava/lang/String;

    .line 203
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    :goto_9
    iput-object v2, p0, Lcn/nubia/music/app/scan/MediaInfo;->mAlbum:Ljava/lang/String;

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    :goto_a
    iput-object v0, p0, Lcn/nubia/music/app/scan/MediaInfo;->mArtist:Ljava/lang/String;

    goto/16 :goto_3

    :cond_b
    move-object v4, v5

    .line 202
    goto :goto_8

    :cond_c
    move-object v2, v3

    .line 203
    goto :goto_9

    :cond_d
    move-object v0, v1

    .line 204
    goto :goto_a

    .line 206
    :cond_e
    iput-object v5, p0, Lcn/nubia/music/app/scan/MediaInfo;->mTitle:Ljava/lang/String;

    .line 207
    iput-object v3, p0, Lcn/nubia/music/app/scan/MediaInfo;->mAlbum:Ljava/lang/String;

    .line 208
    iput-object v1, p0, Lcn/nubia/music/app/scan/MediaInfo;->mArtist:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    :cond_f
    move v6, v0

    move-object v4, v2

    move-object v0, v2

    goto/16 :goto_2

    :cond_10
    move v8, v0

    move-object v1, v2

    move-object v3, v2

    move-object v5, v2

    goto/16 :goto_1
.end method

.method public static getInstance()Lcn/nubia/music/app/model/MetadataCheck;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcn/nubia/music/app/model/MetadataCheck;->sInstance:Lcn/nubia/music/app/model/MetadataCheck;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcn/nubia/music/app/model/MetadataCheck;

    invoke-direct {v0}, Lcn/nubia/music/app/model/MetadataCheck;-><init>()V

    sput-object v0, Lcn/nubia/music/app/model/MetadataCheck;->sInstance:Lcn/nubia/music/app/model/MetadataCheck;

    .line 64
    :cond_0
    sget-object v0, Lcn/nubia/music/app/model/MetadataCheck;->sInstance:Lcn/nubia/music/app/model/MetadataCheck;

    return-object v0
.end method

.method private insertMetadata(Ljava/lang/String;Lcn/nubia/music/app/model/MetadataCheck$Metadata;)V
    .locals 6

    .prologue
    .line 327
    monitor-enter p0

    .line 328
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcn/nubia/music/app/model/MetadataCheck;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 329
    :cond_0
    monitor-exit p0

    .line 346
    :goto_0
    return-void

    .line 331
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 332
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v1, "title"

    iget-object v2, p2, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v1, "album"

    iget-object v2, p2, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->album:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v1, "artist"

    iget-object v2, p2, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcn/nubia/music/app/model/MetadataCheck;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/music/app/db/DataSQLiteHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/music/app/db/DataSQLiteHelper;

    move-result-object v1

    .line 337
    invoke-virtual {v1}, Lcn/nubia/music/app/db/DataSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_3

    .line 339
    const-string v2, "metadata"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 340
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": occurs error while insert metadata into database"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 343
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 345
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static parseMetaData(Ljava/lang/String;I)Lcn/nubia/music/app/model/MetadataCheck$Metadata;
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 68
    new-instance v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;

    invoke-direct {v1}, Lcn/nubia/music/app/model/MetadataCheck$Metadata;-><init>()V

    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 144
    :goto_0
    return-object v0

    .line 85
    :cond_0
    :try_start_0
    new-instance v7, Lcom/mpatric/mp3agic/s;

    invoke-direct {v7, p0}, Lcom/mpatric/mp3agic/s;-><init>(Ljava/lang/String;)V

    .line 86
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Lcom/mpatric/mp3agic/s;->e()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 88
    invoke-virtual {v7}, Lcom/mpatric/mp3agic/s;->f()Lcom/mpatric/mp3agic/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/mpatric/mp3agic/i;->d()Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual {v7}, Lcom/mpatric/mp3agic/s;->f()Lcom/mpatric/mp3agic/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/mpatric/mp3agic/i;->e()Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {v7}, Lcom/mpatric/mp3agic/s;->f()Lcom/mpatric/mp3agic/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/mpatric/mp3agic/i;->c()Ljava/lang/String;

    move-result-object v2

    move v9, v8

    .line 93
    :goto_1
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/mpatric/mp3agic/s;->c()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 95
    invoke-virtual {v7}, Lcom/mpatric/mp3agic/s;->d()Lcom/mpatric/mp3agic/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/mpatric/mp3agic/g;->d()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual {v7}, Lcom/mpatric/mp3agic/s;->d()Lcom/mpatric/mp3agic/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/mpatric/mp3agic/g;->e()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {v7}, Lcom/mpatric/mp3agic/s;->d()Lcom/mpatric/mp3agic/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/mpatric/mp3agic/g;->c()Ljava/lang/String;

    move-result-object v0

    move v7, v8

    .line 100
    :goto_2
    if-eqz v9, :cond_3

    if-nez v7, :cond_3

    .line 101
    iput-object v6, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->title:Ljava/lang/String;

    .line 102
    iput-object v4, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->album:Ljava/lang/String;

    .line 103
    iput-object v2, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->artist:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    :cond_1
    :goto_3
    :try_start_1
    iget-object v0, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    const/4 v2, 0x0

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 139
    iput-object v0, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->title:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_4
    move-object v0, v1

    .line 144
    goto :goto_0

    .line 104
    :cond_3
    if-eqz v7, :cond_4

    if-nez v9, :cond_4

    .line 105
    :try_start_2
    iput-object v5, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->title:Ljava/lang/String;

    .line 106
    iput-object v3, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->album:Ljava/lang/String;

    .line 107
    iput-object v0, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->artist:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 132
    :catch_0
    move-exception v0

    .line 133
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 108
    :cond_4
    if-eqz v7, :cond_1

    if-eqz v9, :cond_1

    .line 109
    if-nez p1, :cond_5

    .line 110
    :try_start_3
    iput-object v5, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->title:Ljava/lang/String;

    .line 111
    iput-object v3, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->album:Ljava/lang/String;

    .line 112
    iput-object v0, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->artist:Ljava/lang/String;

    goto :goto_3

    .line 132
    :catch_1
    move-exception v0

    goto :goto_5

    .line 113
    :cond_5
    if-ne p1, v8, :cond_6

    .line 114
    iput-object v6, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->title:Ljava/lang/String;

    .line 115
    iput-object v4, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->album:Ljava/lang/String;

    .line 116
    iput-object v2, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->artist:Ljava/lang/String;

    goto :goto_3

    .line 117
    :cond_6
    const/4 v7, 0x2

    if-ne p1, v7, :cond_a

    .line 118
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    :goto_6
    iput-object v6, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->title:Ljava/lang/String;

    .line 119
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    :goto_7
    iput-object v4, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->album:Ljava/lang/String;

    .line 120
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    iput-object v2, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->artist:Ljava/lang/String;

    goto/16 :goto_3

    :cond_7
    move-object v6, v5

    .line 118
    goto :goto_6

    :cond_8
    move-object v4, v3

    .line 119
    goto :goto_7

    :cond_9
    move-object v2, v0

    .line 120
    goto :goto_8

    .line 121
    :cond_a
    const/4 v7, 0x3

    if-ne p1, v7, :cond_e

    .line 122
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    :goto_9
    iput-object v5, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->title:Ljava/lang/String;

    .line 123
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    :goto_a
    iput-object v3, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->album:Ljava/lang/String;

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    :goto_b
    iput-object v0, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->artist:Ljava/lang/String;

    goto/16 :goto_3

    :cond_b
    move-object v5, v6

    .line 122
    goto :goto_9

    :cond_c
    move-object v3, v4

    .line 123
    goto :goto_a

    :cond_d
    move-object v0, v2

    .line 124
    goto :goto_b

    .line 126
    :cond_e
    iput-object v6, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->title:Ljava/lang/String;

    .line 127
    iput-object v4, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->album:Ljava/lang/String;

    .line 128
    iput-object v2, v1, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->artist:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 141
    :catch_2
    move-exception v0

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_f
    move v7, v0

    move-object v5, v3

    move-object v0, v3

    goto/16 :goto_2

    :cond_10
    move v9, v0

    move-object v2, v3

    move-object v4, v3

    move-object v6, v3

    goto/16 :goto_1
.end method

.method private startCheckMetadata(I)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 252
    const-string v0, "start check metadata"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 253
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 254
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "_data"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string v3, "title"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "album"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "artist"

    aput-object v3, v2, v0

    .line 260
    iget-object v0, p0, Lcn/nubia/music/app/model/MetadataCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "is_music = ?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v4, v6

    const-string v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 265
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v1, v6

    .line 267
    :goto_0
    if-ge v1, v3, :cond_1

    .line 268
    new-instance v0, Lcn/nubia/music/app/scan/MediaInfo;

    invoke-direct {v0, v2}, Lcn/nubia/music/app/scan/MediaInfo;-><init>(Landroid/database/Cursor;)V

    .line 269
    iget-object v4, v0, Lcn/nubia/music/app/scan/MediaInfo;->mPath:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcn/nubia/music/app/model/MetadataCheck;->getMetaData(Ljava/lang/String;)Lcn/nubia/music/app/model/MetadataCheck$Metadata;

    move-result-object v4

    .line 270
    if-nez v4, :cond_0

    iget-object v4, v0, Lcn/nubia/music/app/scan/MediaInfo;->mPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " no metadata, just parse ---- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcn/nubia/music/app/scan/MediaInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 273
    :try_start_0
    iget-object v4, v0, Lcn/nubia/music/app/scan/MediaInfo;->mPath:Ljava/lang/String;

    invoke-static {v4, p1}, Lcn/nubia/music/app/model/MetadataCheck;->parseMetaData(Ljava/lang/String;I)Lcn/nubia/music/app/model/MetadataCheck$Metadata;

    move-result-object v4

    .line 274
    iget-object v0, v0, Lcn/nubia/music/app/scan/MediaInfo;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcn/nubia/music/app/model/MetadataCheck;->insertMetadata(Ljava/lang/String;Lcn/nubia/music/app/model/MetadataCheck$Metadata;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 267
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseMetaData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 279
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " has metadata, just next ++++ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcn/nubia/music/app/scan/MediaInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 284
    :cond_1
    const-string v0, "end check metadata"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 285
    if-eqz v2, :cond_2

    .line 286
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_2
    return-void
.end method


# virtual methods
.method public addMetaData(Ljava/lang/String;Lcn/nubia/music/app/model/MetadataCheck$Metadata;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/app/model/MetadataCheck;->insertMetadata(Ljava/lang/String;Lcn/nubia/music/app/model/MetadataCheck$Metadata;)V

    .line 249
    return-void
.end method

.method public getMetaData(Ljava/lang/String;)Lcn/nubia/music/app/model/MetadataCheck$Metadata;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 291
    monitor-enter p0

    .line 293
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/app/model/MetadataCheck;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 294
    :cond_0
    monitor-exit p0

    move-object v0, v8

    .line 322
    :goto_0
    return-object v0

    .line 296
    :cond_1
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "artist"

    aput-object v1, v2, v0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    const-string v3, "\'\'"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 303
    iget-object v0, p0, Lcn/nubia/music/app/model/MetadataCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/music/app/db/DataSQLiteHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/music/app/db/DataSQLiteHelper;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lcn/nubia/music/app/db/DataSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 305
    if-nez v0, :cond_2

    .line 306
    monitor-exit p0

    move-object v0, v8

    goto :goto_0

    .line 308
    :cond_2
    const-string v1, "metadata"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 311
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 312
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 313
    new-instance v8, Lcn/nubia/music/app/model/MetadataCheck$Metadata;

    invoke-direct {v8}, Lcn/nubia/music/app/model/MetadataCheck$Metadata;-><init>()V

    .line 314
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->title:Ljava/lang/String;

    .line 315
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->album:Ljava/lang/String;

    .line 316
    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->artist:Ljava/lang/String;

    move-object v1, v8

    .line 318
    :goto_1
    if-eqz v2, :cond_3

    .line 319
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 321
    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 322
    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move-object v1, v8

    goto :goto_1
.end method

.method public startCheck(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 228
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcn/nubia/music/app/model/MetadataCheck;->mIsChecking:Z

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/app/model/MetadataCheck;->mIsChecking:Z

    .line 232
    iput-object p1, p0, Lcn/nubia/music/app/model/MetadataCheck;->mContext:Landroid/content/Context;

    .line 233
    iget-object v0, p0, Lcn/nubia/music/app/model/MetadataCheck;->mCheckHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/music/app/model/MetadataCheck$1;

    invoke-direct {v1, p0, p2}, Lcn/nubia/music/app/model/MetadataCheck$1;-><init>(Lcn/nubia/music/app/model/MetadataCheck;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
