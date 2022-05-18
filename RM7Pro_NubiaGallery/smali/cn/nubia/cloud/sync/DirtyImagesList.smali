.class public Lcn/nubia/cloud/sync/DirtyImagesList;
.super Ljava/lang/Object;
.source "DirtyImagesList.java"

# interfaces
.implements Lcn/nubia/cloud/common/sync/SyncDataIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/common/sync/SyncDataIterator<",
        "Lcn/nubia/cloud/sync/CloudGallerySyncItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final DIRTY_VALUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CloudGallery"

.field static final selection:Ljava/lang/String; = "dirty=1"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mCursor:Landroid/database/Cursor;

.field private mIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mContext:Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Lcn/nubia/cloud/sync/DirtyImagesList;->queryDirtyImages()V

    return-void
.end method

.method private queryDirtyImages()V
    .locals 3

    .line 32
    iget-object v0, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "dirty=1"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mCount:I

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCount ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudGallery"

    invoke-static {v1, v0}, Lcn/nubia/cloud/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget v0, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mCount:I

    if-lez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mCursor:Landroid/database/Cursor;

    :cond_0
    return-void
.end method

.method public getCount()J
    .locals 2

    .line 50
    iget v0, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getNext(I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/sync/CloudGallerySyncItem;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iget-object v1, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mCursor:Landroid/database/Cursor;

    const-string v2, "CloudGallery"

    if-eqz v1, :cond_0

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/DirtyImagesList;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    .line 58
    iget-object v1, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "localImageId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "getNext CloudTaskColumns.SERVER_ID=serverid"

    .line 60
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "try to get serverId"

    .line 63
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v4, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mCursor:Landroid/database/Cursor;

    const-string v5, "serverid"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 66
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v3

    .line 68
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNext serverId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :try_start_1
    iget-object v5, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mCursor:Landroid/database/Cursor;

    const-string v6, "deleted"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    .line 73
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    move v11, v3

    .line 75
    new-instance v3, Lcn/nubia/cloud/sync/CloudGallerySyncItem;

    int-to-long v7, v1

    int-to-long v9, v4

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcn/nubia/cloud/sync/CloudGallerySyncItem;-><init>(JJI)V

    .line 76
    iget-object v4, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v1}, Lcn/nubia/cloud/sync/CloudGalleryDbManager;->getImageSyncItem(Landroid/content/Context;Lcn/nubia/cloud/sync/CloudGallerySyncItem;I)Lcn/nubia/cloud/sync/CloudGallerySyncItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    .line 78
    iget v1, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mIndex:I

    .line 79
    iget-object v1, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DirtyImageList__getNext,size:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/nubia/cloud/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    const-string v0, "CloudGallery"

    const-string v1, "DirtyImageList__hastNext"

    .line 44
    invoke-static {v0, v1}, Lcn/nubia/cloud/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget v0, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mIndex:I

    iget v1, p0, Lcn/nubia/cloud/sync/DirtyImagesList;->mCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
