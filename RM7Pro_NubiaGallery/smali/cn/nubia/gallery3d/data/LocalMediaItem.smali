.class public abstract Lcn/nubia/gallery3d/data/LocalMediaItem;
.super Lcn/nubia/gallery3d/data/MediaItem;
.source "LocalMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalMediaItem"


# instance fields
.field public bucketId:I

.field public bucketName:Ljava/lang/String;

.field public caption:Ljava/lang/String;

.field public dateAddedInSec:J

.field public dateModifiedInSec:J

.field public dateTakenInMs:J

.field public duration:I

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public height:I

.field public id:I

.field public latitude:D

.field public longitude:D

.field protected final mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field protected mFakeUnMark:Z

.field protected mIsMarked:Z

.field protected mSourceType:I

.field public mimeType:Ljava/lang/String;

.field private setFavorJob:Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;

.field public width:I


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;J)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p3, p4}, Lcn/nubia/gallery3d/data/MediaItem;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    const-wide/16 p3, 0x0

    .line 59
    iput-wide p3, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->latitude:D

    .line 60
    iput-wide p3, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->longitude:D

    const/4 p1, -0x1

    .line 67
    iput p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->width:I

    .line 68
    iput p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->height:I

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mFakeUnMark:Z

    .line 76
    iput p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mSourceType:I

    .line 80
    iput-object p2, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/gallery3d/data/LocalMediaItem;Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;)Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->setFavorJob:Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;

    return-object p1
.end method

.method private parseResolution(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x78

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, "215"

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-char v1, v1

    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    if-ne v0, v2, :cond_2

    move v0, v1

    :cond_2
    const/4 v1, 0x0

    .line 123
    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 125
    iput v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->width:I

    .line 126
    iput p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LocalMediaItem"

    .line 128
    invoke-static {v0, p1}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .line 104
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->bucketId:I

    return v0
.end method

.method public getDateInMs()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    return-wide v0
.end method

.method public getDetails()Lcn/nubia/gallery3d/data/MediaDetails;
    .locals 12

    .line 152
    invoke-super {p0}, Lcn/nubia/gallery3d/data/MediaItem;->getDetails()Lcn/nubia/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/16 v2, 0xc8

    invoke-virtual {v0, v2, v1}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 155
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 156
    iget v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 157
    iget v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 158
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 159
    iget-wide v3, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 160
    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->is24Hours(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_0

    .line 164
    new-instance v3, Ljava/util/Date;

    iget-wide v7, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0

    .line 166
    :cond_0
    new-instance v3, Ljava/util/Date;

    iget-wide v7, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 169
    :cond_1
    :goto_0
    iget-wide v3, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->latitude:D

    iget-wide v7, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v3, v4, v7, v8}, Lcn/nubia/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    new-array v1, v3, [D

    .line 170
    iget-wide v8, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->latitude:D

    aput-wide v8, v1, v7

    iget-wide v7, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->longitude:D

    aput-wide v7, v1, v2

    invoke-virtual {v0, v4, v1}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_3

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocalMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getMediaItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 173
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 174
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    move v9, v7

    .line 177
    :goto_1
    array-length v10, v8

    const/4 v11, 0x0

    if-ge v9, v10, :cond_5

    .line 178
    aget-char v10, v8, v9

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_3

    aget-char v10, v8, v9

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_4

    :cond_3
    if-lez v9, :cond_4

    .line 179
    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 180
    array-length v8, v8

    sub-int/2addr v8, v2

    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    move-object v1, v11

    :goto_2
    if-eqz v11, :cond_6

    if-eqz v1, :cond_6

    .line 185
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->latitude:D

    .line 186
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->longitude:D

    new-array v1, v3, [D

    .line 187
    iget-wide v10, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->latitude:D

    aput-wide v10, v1, v7

    aput-wide v8, v1, v2

    invoke-virtual {v0, v4, v1}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 192
    :cond_6
    :goto_3
    iget-wide v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->fileSize:J

    cmp-long v3, v1, v5

    if-lez v3, :cond_7

    const/16 v3, 0xa

    .line 193
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_7
    return-object v0
.end method

.method public getItemData(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 275
    :pswitch_1
    iget p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->duration:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 273
    :pswitch_2
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 271
    :pswitch_3
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 269
    :pswitch_4
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    return-object p1

    .line 267
    :pswitch_5
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->fileSize:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 265
    :pswitch_6
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 263
    :pswitch_7
    iget p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->bucketId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 261
    :pswitch_8
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    return-object p1

    .line 259
    :pswitch_9
    iget p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getLatLong([D)V
    .locals 3

    .line 95
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->latitude:D

    const/4 v2, 0x0

    aput-wide v0, p1, v2

    .line 96
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->longitude:D

    const/4 v2, 0x1

    aput-wide v0, p1, v2

    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    return-object v0
.end method

.method protected getResolution()V
    .locals 4

    .line 135
    :try_start_0
    new-instance v0, Lcn/nubia/video/editor/VideoItem;

    invoke-direct {v0}, Lcn/nubia/video/editor/VideoItem;-><init>()V

    .line 136
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/video/editor/VideoItem;->setDataSource(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 137
    invoke-virtual {v0}, Lcn/nubia/video/editor/VideoItem;->getWidth()I

    move-result v1

    .line 138
    invoke-virtual {v0}, Lcn/nubia/video/editor/VideoItem;->getHeight()I

    move-result v2

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {v0}, Lcn/nubia/video/editor/VideoItem;->release()V

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/data/LocalMediaItem;->parseResolution(Ljava/lang/String;)V

    .line 144
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/video/editor/VideoItem;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public getSize()J
    .locals 2

    .line 203
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->fileSize:J

    return-wide v0
.end method

.method public getSourceType()I
    .locals 1

    .line 286
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mSourceType:I

    return v0
.end method

.method protected abstract idToCursor(I)Landroid/database/Cursor;
.end method

.method public isMarked()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mIsMarked:Z

    return v0
.end method

.method protected removeCloudTaskRecordByFilePath()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->deleteCloudTaskRecordByFilePath(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public removeMarkFlag(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 231
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mFakeUnMark:Z

    .line 232
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mIsMarked:Z

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->setFavorJob:Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;

    if-nez p1, :cond_1

    .line 235
    new-instance p1, Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;

    invoke-direct {p1, p0, v0}, Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;-><init>(Lcn/nubia/gallery3d/data/LocalMediaItem;Z)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->setFavorJob:Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;

    .line 236
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->setFavorJob:Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;

    new-instance v1, Lcn/nubia/gallery3d/data/LocalMediaItem$2;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/data/LocalMediaItem$2;-><init>(Lcn/nubia/gallery3d/data/LocalMediaItem;)V

    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    :cond_1
    :goto_0
    return-void
.end method

.method public resetFakeUnMark()V
    .locals 1

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mFakeUnMark:Z

    return-void
.end method

.method public setMarkFlag()V
    .locals 3

    .line 212
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mFakeUnMark:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mFakeUnMark:Z

    .line 214
    iput-boolean v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mIsMarked:Z

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->setFavorJob:Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;

    if-nez v0, :cond_1

    .line 217
    new-instance v0, Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;-><init>(Lcn/nubia/gallery3d/data/LocalMediaItem;Z)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->setFavorJob:Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;

    .line 218
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->setFavorJob:Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;

    new-instance v2, Lcn/nubia/gallery3d/data/LocalMediaItem$1;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/data/LocalMediaItem$1;-><init>(Lcn/nubia/gallery3d/data/LocalMediaItem;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    :cond_1
    :goto_0
    return-void
.end method

.method public setSourceType(I)V
    .locals 0

    .line 282
    iput p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mSourceType:I

    return-void
.end method

.method public updateContent(Landroid/database/Cursor;)V
    .locals 2

    .line 108
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/LocalMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    invoke-static {}, Lcn/nubia/gallery3d/data/LocalMediaItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->mDataVersion:J

    :cond_0
    return-void
.end method

.method protected abstract updateFromCursor(Landroid/database/Cursor;)Z
.end method
