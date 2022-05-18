.class public Lcn/nubia/notepad/cloud/NotePadDirtyIterator;
.super Ljava/lang/Object;
.source "NotePadDirtyIterator.java"

# interfaces
.implements Lcn/nubia/cloud/sync/common/SyncDataIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/sync/common/SyncDataIterator",
        "<",
        "Lcn/nubia/notepad/cloud/NotePadSyncItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mCursor:Landroid/database/Cursor;

.field private mIndex:I

.field private mLabelList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRawNotesSync:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/notepad/cloud/NotePadSyncItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mContext:Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCursor:Landroid/database/Cursor;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mRawNotesSync:Ljava/util/List;

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mLabelList:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {p0}, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->queryDirtyNotePad()V

    .line 30
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCursor:Landroid/database/Cursor;

    .line 57
    :cond_0
    return-void
.end method

.method public getCount()J
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getNext(I)Ljava/util/List;
    .locals 10
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/notepad/cloud/NotePadSyncItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "dirtyNotePad":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/notepad/cloud/NotePadSyncItem;>;"
    :try_start_0
    iget-object v2, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez p1, :cond_1

    .line 72
    iget-object v2, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    .line 73
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 72
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 74
    .local v8, "localId":I
    iget-object v2, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCursor:Landroid/database/Cursor;

    const-string v9, "server_id"

    .line 75
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 74
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 76
    .local v4, "serverId":J
    iget-object v2, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCursor:Landroid/database/Cursor;

    const-string v9, "deleted"

    .line 77
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 76
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 78
    .local v6, "isDeleted":I
    new-instance v1, Lcn/nubia/notepad/cloud/NotePadSyncItem;

    int-to-long v2, v8

    invoke-direct/range {v1 .. v6}, Lcn/nubia/notepad/cloud/NotePadSyncItem;-><init>(JJI)V

    .line 80
    .local v1, "syncItem":Lcn/nubia/notepad/cloud/NotePadSyncItem;
    invoke-virtual {v1}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 81
    iget-object v2, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mLabelList:Landroid/util/SparseArray;

    invoke-static {v2, v3, v1, v8, v9}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->getNoteSyncItem(Landroid/content/Context;Landroid/database/Cursor;Lcn/nubia/notepad/cloud/NotePadSyncItem;ILandroid/util/SparseArray;)Lcn/nubia/notepad/cloud/NotePadSyncItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_1
    invoke-virtual {v1}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mRawNotesSync:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 90
    iget v2, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mIndex:I

    .line 91
    iget-object v2, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v1    # "syncItem":Lcn/nubia/notepad/cloud/NotePadSyncItem;
    .end local v4    # "serverId":J
    .end local v6    # "isDeleted":I
    .end local v8    # "localId":I
    :catch_0
    move-exception v7

    .line 95
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v0

    .line 84
    .restart local v1    # "syncItem":Lcn/nubia/notepad/cloud/NotePadSyncItem;
    .restart local v4    # "serverId":J
    .restart local v6    # "isDeleted":I
    .restart local v8    # "localId":I
    :cond_2
    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getRawSync()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/notepad/cloud/NotePadSyncItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mRawNotesSync:Ljava/util/List;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mIndex:I

    iget v1, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryDirtyNotePad()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 33
    const-string v3, "modify = 1 AND attachment = 1 AND content != \"notepad_help_title_2\" AND content != \"notepad_help_title_3\" AND content != \"notepad_help_title_5\" AND content != \"notepad_help_title_6\""

    .line 39
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCursor:Landroid/database/Cursor;

    .line 41
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCount:I

    .line 43
    iget v0, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCount:I

    if-lez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mLabelList:Landroid/util/SparseArray;

    invoke-static {v0, v2, v1}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->getPresentLabels(Landroid/content/Context;Ljava/util/HashMap;Landroid/util/SparseArray;)V

    .line 45
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 48
    :cond_0
    return-void
.end method
