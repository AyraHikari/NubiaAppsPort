.class public Lcn/nubia/notepad/cloud/NotePadCloudSync;
.super Ljava/lang/Object;
.source "NotePadCloudSync.java"


# static fields
.field private static final BATCH_READ_REMOTE_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "NotePadCloudSync"


# instance fields
.field private mAppDataDir:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private mDirtyNotes:Lcn/nubia/notepad/cloud/NotePadDirtyIterator;

.field private mSyncTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "mAppFilesDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "user-0"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mAppDataDir:Ljava/io/File;

    .line 52
    const-string v1, "NotePadCloudSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotePadCloudSync:context.getFilesDir().getAbsolutePath()= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mAppDataDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method private addNotePadDatas(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/cloud/NotePadSyncItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 304
    .local p2, "mLableList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p3, "mNewNotesData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/cloud/NotePadSyncItem;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v6, "mAddDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Lcn/nubia/notepad/cloud/BatchOperation;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-direct {v7, v13}, Lcn/nubia/notepad/cloud/BatchOperation;-><init>(Landroid/content/ContentResolver;)V

    .line 306
    .local v7, "operation":Lcn/nubia/notepad/cloud/BatchOperation;
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/notepad/cloud/NotePadSyncItem;

    .line 307
    .local v9, "syncItem":Lcn/nubia/notepad/cloud/NotePadSyncItem;
    invoke-virtual {v9}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getClassify()I

    move-result v3

    .line 308
    .local v3, "classify":I
    if-nez v3, :cond_0

    .line 312
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcn/nubia/notepad/utils/Util;->getKeyFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 313
    invoke-virtual {v9}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getmContent()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcn/nubia/notepad/utils/Util;->getKeyFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 314
    invoke-virtual {v9}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getResource()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcn/nubia/notepad/utils/Util;->getKeyFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "itemKey":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 319
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 323
    .local v12, "values":Landroid/content/ContentValues;
    const-string v13, "title"

    invoke-virtual {v9}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v13, "second_title"

    invoke-virtual {v9}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getSecondTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v13, "content"

    invoke-virtual {v9}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getmContent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v13, "created"

    invoke-virtual {v9}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getCreateData()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 327
    const-string v13, "classify"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    const-string v13, "resource"

    invoke-virtual {v9}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getResource()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v9}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getRemind()I

    move-result v8

    .line 330
    .local v8, "remind":I
    invoke-virtual {v9}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getRemindTime()J

    move-result-wide v10

    .line 331
    .local v10, "remindTime":J
    const/4 v13, 0x1

    if-ne v8, v13, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    cmp-long v13, v10, v16

    if-lez v13, :cond_1

    .line 332
    const-string v13, "remind"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    const-string v13, "remind_time"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 336
    :cond_1
    const-string v13, "mode"

    invoke-virtual {v9}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getMode()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string v13, "modify"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v13, "modified"

    invoke-virtual {v9}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getModifiedDate()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 339
    const-string v13, "top"

    invoke-virtual {v9}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getTop()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    const-string v13, "server_id"

    invoke-virtual {v9}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getServerID()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 342
    invoke-virtual {v9}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getAttachment()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "attachment":Ljava/lang/String;
    const-string v13, "yes"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 344
    const-string v13, "attachment"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    :goto_1
    invoke-virtual {v9}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getLabel()Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, "label":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 350
    const-string v15, "extra_1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v12, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    :cond_2
    invoke-static {v12, v7}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->addNewNoteRecord(Landroid/content/ContentValues;Lcn/nubia/notepad/cloud/BatchOperation;)V

    .line 354
    invoke-virtual {v7}, Lcn/nubia/notepad/cloud/BatchOperation;->batchSizeEnough()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 355
    invoke-virtual {v7}, Lcn/nubia/notepad/cloud/BatchOperation;->execute()V

    goto/16 :goto_0

    .line 346
    .end local v5    # "label":Ljava/lang/String;
    :cond_3
    const-string v13, "attachment"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 359
    .end local v2    # "attachment":Ljava/lang/String;
    .end local v3    # "classify":I
    .end local v4    # "itemKey":Ljava/lang/String;
    .end local v8    # "remind":I
    .end local v9    # "syncItem":Lcn/nubia/notepad/cloud/NotePadSyncItem;
    .end local v10    # "remindTime":J
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_4
    invoke-virtual {v7}, Lcn/nubia/notepad/cloud/BatchOperation;->size()I

    move-result v13

    if-lez v13, :cond_5

    .line 360
    invoke-virtual {v7}, Lcn/nubia/notepad/cloud/BatchOperation;->execute()V

    .line 362
    :cond_5
    return-void
.end method

.method private addNotesLabel(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "serverId"    # J

    .prologue
    .line 292
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 293
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v2, "content"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v2, "classify"

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    const-string v2, "server_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 297
    const-string v2, "modify"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 299
    .local v0, "noteUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v2, v2

    return v2
.end method

.method private clearDirtyStatus()V
    .locals 6

    .prologue
    .line 107
    new-instance v0, Lcn/nubia/notepad/cloud/BatchOperation;

    iget-object v2, p0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/nubia/notepad/cloud/BatchOperation;-><init>(Landroid/content/ContentResolver;)V

    .line 109
    .local v0, "operation":Lcn/nubia/notepad/cloud/BatchOperation;
    iget-object v2, p0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mDirtyNotes:Lcn/nubia/notepad/cloud/NotePadDirtyIterator;

    invoke-virtual {v2}, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->getRawSync()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/cloud/NotePadSyncItem;

    .line 111
    .local v1, "syncItem":Lcn/nubia/notepad/cloud/NotePadSyncItem;
    invoke-virtual {v1}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getLocalID()J

    move-result-wide v4

    invoke-static {v4, v5, v0}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->deleteRecord(JLcn/nubia/notepad/cloud/BatchOperation;)V

    .line 112
    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/BatchOperation;->batchSizeEnough()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/BatchOperation;->execute()V

    goto :goto_0

    .line 117
    .end local v1    # "syncItem":Lcn/nubia/notepad/cloud/NotePadSyncItem;
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/BatchOperation;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 118
    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/BatchOperation;->execute()V

    .line 120
    :cond_2
    iget-object v2, p0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mDirtyNotes:Lcn/nubia/notepad/cloud/NotePadDirtyIterator;

    invoke-virtual {v2}, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;->close()V

    .line 121
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mDirtyNotes:Lcn/nubia/notepad/cloud/NotePadDirtyIterator;

    .line 122
    return-void
.end method

.method private deleteResourceFiles(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 522
    new-instance v11, Lcn/nubia/notepad/utils/ContentsData;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    invoke-direct {v11, v1}, Lcn/nubia/notepad/utils/ContentsData;-><init>(Landroid/content/Context;)V

    .line 523
    .local v11, "mContentsData":Lcn/nubia/notepad/utils/ContentsData;
    const/4 v7, 0x0

    .line 525
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 527
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 529
    :cond_0
    new-instance v12, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    invoke-direct {v12}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;-><init>()V

    .line 530
    .local v12, "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    const-string v1, "resource"

    .line 531
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 530
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->resource:Ljava/lang/String;

    .line 532
    iget-object v1, v12, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->resource:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 553
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 558
    .end local v12    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_2
    if-eqz v7, :cond_3

    .line 559
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 562
    :cond_3
    :goto_0
    return-void

    .line 535
    .restart local v12    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_4
    :try_start_1
    new-instance v18, Ljava/util/StringTokenizer;

    iget-object v1, v12, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->resource:Ljava/lang/String;

    const-string v2, ">"

    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    .local v18, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v17, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 539
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 555
    .end local v12    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .end local v17    # "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "tokenizer":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v8

    .line 556
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 558
    if-eqz v7, :cond_3

    .line 559
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 541
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v12    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .restart local v17    # "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_5
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_1

    .line 542
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 543
    .local v16, "substring":Ljava/lang/String;
    const/4 v15, 0x1

    .line 544
    .local v15, "start":I
    const-string v1, "|"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 545
    .local v9, "end":I
    if-gt v15, v9, :cond_6

    .line 546
    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 548
    .local v13, "resourceFile":Ljava/lang/String;
    add-int/lit8 v1, v9, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 549
    .local v14, "resourceType":Ljava/lang/String;
    invoke-virtual {v11, v13, v14}, Lcn/nubia/notepad/utils/ContentsData;->deleteResourceFiles(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 541
    .end local v13    # "resourceFile":Ljava/lang/String;
    .end local v14    # "resourceType":Ljava/lang/String;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 558
    .end local v9    # "end":I
    .end local v10    # "i":I
    .end local v12    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .end local v15    # "start":I
    .end local v16    # "substring":Ljava/lang/String;
    .end local v17    # "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "tokenizer":Ljava/util/StringTokenizer;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_7

    .line 559
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 561
    :cond_7
    throw v1
.end method

.method private syncNotePad(Lcn/nubia/notepad/cloud/NotePadSyncItem;ILcn/nubia/notepad/cloud/BatchOperation;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "syncItem"    # Lcn/nubia/notepad/cloud/NotePadSyncItem;
    .param p2, "noteId"    # I
    .param p3, "operation"    # Lcn/nubia/notepad/cloud/BatchOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/notepad/cloud/NotePadSyncItem;",
            "I",
            "Lcn/nubia/notepad/cloud/BatchOperation;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/cloud/NotePadSyncItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p4, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/cloud/NotePadSyncItem;>;"
    :try_start_0
    invoke-static {}, Lcn/nubia/notepad/utils/Util;->getRestoreStatuas()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    const-string v2, "restore item"

    invoke-static {v2}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithPermit(Ljava/lang/String;)V

    .line 369
    const/4 v2, 0x0

    invoke-static {v2}, Lcn/nubia/notepad/utils/Util;->setRestoreStatus(Z)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    const/4 v2, -0x1

    if-eq p2, v2, :cond_2

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update note data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serverid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 376
    invoke-virtual {p1}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getServerID()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-static {v2}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithPermit(Ljava/lang/String;)V

    .line 377
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 378
    .local v1, "value":Landroid/content/ContentValues;
    const-string v2, "server_id"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    const-string v2, "modify"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    invoke-static {p2, v1, p3}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->updateNotes(ILandroid/content/ContentValues;Lcn/nubia/notepad/cloud/BatchOperation;)V

    .line 381
    iget-object v2, p0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    int-to-long v4, p2

    .line 382
    invoke-virtual {p1}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getServerID()J

    move-result-wide v6

    .line 381
    invoke-static {v2, v4, v5, v6, v7}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->updateCloudAttachmentServer(Landroid/content/Context;JJ)V

    .line 385
    .end local v1    # "value":Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_1
    invoke-virtual {p3}, Lcn/nubia/notepad/cloud/BatchOperation;->batchSizeEnough()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    invoke-virtual {p3}, Lcn/nubia/notepad/cloud/BatchOperation;->execute()V

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private syncNotesLabelData(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/cloud/NotePadSyncItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "mLableList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p3, "mNewNotesData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/cloud/NotePadSyncItem;>;"
    const v9, 0x7f0a006b

    const v8, 0x7f0a006a

    const v7, 0x7f0a0069

    const/4 v6, 0x0

    .line 258
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/cloud/NotePadSyncItem;

    .line 259
    .local v1, "syncItem":Lcn/nubia/notepad/cloud/NotePadSyncItem;
    invoke-virtual {v1}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getClassify()I

    move-result v0

    .line 260
    .local v0, "classify":I
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v1}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "title":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 283
    :goto_1
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 287
    invoke-virtual {v1}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getServerID()J

    move-result-wide v4

    invoke-direct {p0, p1, v2, v4, v5}, Lcn/nubia/notepad/cloud/NotePadCloudSync;->addNotesLabel(Landroid/content/Context;Ljava/lang/String;J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 266
    :pswitch_0
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-virtual {v1, v6}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setClassify(I)V

    .line 268
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 271
    :pswitch_1
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-virtual {v1, v6}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setClassify(I)V

    .line 273
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 276
    :pswitch_2
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-virtual {v1, v6}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setClassify(I)V

    .line 278
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 289
    .end local v0    # "classify":I
    .end local v1    # "syncItem":Lcn/nubia/notepad/cloud/NotePadSyncItem;
    .end local v2    # "title":Ljava/lang/String;
    :cond_1
    return-void

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateIdMaps(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/cloud/sync/common/IDMap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "idMaps":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/sync/common/IDMap;>;"
    const/4 v4, 0x1

    .line 85
    new-instance v5, Lcn/nubia/notepad/cloud/BatchOperation;

    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v5, v0}, Lcn/nubia/notepad/cloud/BatchOperation;-><init>(Landroid/content/ContentResolver;)V

    .line 87
    .local v5, "operation":Lcn/nubia/notepad/cloud/BatchOperation;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/nubia/cloud/sync/common/IDMap;

    .line 88
    .local v12, "idMap":Lcn/nubia/cloud/sync/common/IDMap;
    invoke-virtual {v12}, Lcn/nubia/cloud/sync/common/IDMap;->getServerID()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcn/nubia/cloud/sync/common/IDMap;->getLocalID()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " server id -1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithoutPermit(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcn/nubia/notepad/cloud/SyncListenerIml;->getInstance()Lcn/nubia/notepad/cloud/SyncListenerIml;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/nubia/notepad/cloud/SyncListenerIml;->setFail(Z)V

    .line 91
    invoke-virtual {v12}, Lcn/nubia/cloud/sync/common/IDMap;->getLocalID()J

    move-result-wide v0

    .line 92
    invoke-virtual {v12}, Lcn/nubia/cloud/sync/common/IDMap;->getServerID()J

    move-result-wide v2

    .line 91
    invoke-static/range {v0 .. v5}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->updateServerId(JJILcn/nubia/notepad/cloud/BatchOperation;)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v12}, Lcn/nubia/cloud/sync/common/IDMap;->getLocalID()J

    move-result-wide v6

    .line 96
    invoke-virtual {v12}, Lcn/nubia/cloud/sync/common/IDMap;->getServerID()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v11, v5

    .line 95
    invoke-static/range {v6 .. v11}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->updateServerId(JJILcn/nubia/notepad/cloud/BatchOperation;)V

    .line 97
    invoke-virtual {v5}, Lcn/nubia/notepad/cloud/BatchOperation;->batchSizeEnough()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v5}, Lcn/nubia/notepad/cloud/BatchOperation;->execute()V

    goto :goto_0

    .line 101
    .end local v12    # "idMap":Lcn/nubia/cloud/sync/common/IDMap;
    :cond_2
    invoke-virtual {v5}, Lcn/nubia/notepad/cloud/BatchOperation;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 102
    invoke-virtual {v5}, Lcn/nubia/notepad/cloud/BatchOperation;->execute()V

    .line 104
    :cond_3
    return-void
.end method

.method private updateNotesAttachment(ILjava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;
    .locals 13
    .param p1, "noteId"    # I
    .param p2, "localpath"    # Ljava/lang/String;
    .param p3, "cachepath"    # Ljava/lang/String;
    .param p4, "appDataDir"    # Ljava/io/File;

    .prologue
    .line 483
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 484
    const/4 v9, 0x0

    .line 517
    :goto_0
    return-object v9

    .line 486
    :cond_0
    const/4 v4, 0x0

    .line 487
    .local v4, "inputStream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 489
    .local v7, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 490
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .local v5, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 492
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".txt"

    const-string v12, ".xml"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 493
    .end local v7    # "outputStream":Ljava/io/FileOutputStream;
    .local v8, "outputStream":Ljava/io/FileOutputStream;
    const/16 v9, 0x4000

    :try_start_2
    new-array v1, v9, [B

    .line 495
    .local v1, "buffer":[B
    :goto_1
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, "length":I
    if-lez v6, :cond_3

    .line 496
    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 500
    .end local v1    # "buffer":[B
    .end local v6    # "length":I
    :catch_0
    move-exception v2

    move-object v7, v8

    .end local v8    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "outputStream":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 501
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 504
    if-eqz v4, :cond_1

    .line 505
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 506
    const/4 v4, 0x0

    .line 508
    :cond_1
    if-eqz v7, :cond_2

    .line 509
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 510
    const/4 v7, 0x0

    .line 517
    :cond_2
    :goto_3
    const/4 v9, 0x0

    goto :goto_0

    .line 498
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v7    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "length":I
    .restart local v8    # "outputStream":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_5
    new-instance v9, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;

    const-string v10, "text"

    const-string v11, ""

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 504
    if-eqz v5, :cond_7

    .line 505
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 506
    const/4 v4, 0x0

    .line 508
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    :goto_4
    if-eqz v8, :cond_4

    .line 509
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 510
    const/4 v7, 0x0

    .end local v8    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 512
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v7    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    move-object v4, v5

    .line 513
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    :goto_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    move-object v7, v8

    .end local v8    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 512
    .end local v1    # "buffer":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "length":I
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 513
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 503
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 504
    :goto_6
    if-eqz v4, :cond_5

    .line 505
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 506
    const/4 v4, 0x0

    .line 508
    :cond_5
    if-eqz v7, :cond_6

    .line 509
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 510
    const/4 v7, 0x0

    .line 515
    :cond_6
    :goto_7
    throw v9

    .line 512
    :catch_3
    move-exception v2

    .line 513
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 503
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v7    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "outputStream":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 500
    .end local v3    # "file":Ljava/io/File;
    :catch_4
    move-exception v2

    goto :goto_2

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 512
    .end local v7    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v6    # "length":I
    .restart local v8    # "outputStream":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    goto :goto_5

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    :cond_7
    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method private updateNotesAttachment(Ljava/lang/String;Ljava/io/File;Ljava/lang/StringBuffer;)Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;
    .locals 8
    .param p1, "cachepath"    # Ljava/lang/String;
    .param p2, "appDataDir"    # Ljava/io/File;
    .param p3, "content"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v3, 0x0

    .line 457
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-object v3

    .line 461
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file exist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithPermit(Ljava/lang/String;)V

    .line 468
    :goto_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v4, p2, p3}, Lcn/nubia/notepad/utils/FileHelper;->unzip(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/StringBuffer;)Z

    move-result v2

    .line 470
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 471
    new-instance v4, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;

    const-string v5, "media"

    const-string v6, ""

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_0

    .line 465
    .end local v2    # "success":Z
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file not exist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithPermit(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 474
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public queryDirtyData()Lcn/nubia/cloud/sync/common/SyncDataIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<",
            "Lcn/nubia/notepad/cloud/NotePadSyncItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/notepad/cloud/NotePadDirtyIterator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mDirtyNotes:Lcn/nubia/notepad/cloud/NotePadDirtyIterator;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mSyncTime:J

    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mDirtyNotes:Lcn/nubia/notepad/cloud/NotePadDirtyIterator;

    return-object v0
.end method

.method public updateAttachData(Lcn/nubia/cloud/sync/common/SyncDataIterator;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<",
            "Lcn/nubia/cloud/sync/common/AttachmentInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/cloud/sync/common/AttachmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "attachItems":Lcn/nubia/cloud/sync/common/SyncDataIterator;, "Lcn/nubia/cloud/sync/common/SyncDataIterator<Lcn/nubia/cloud/sync/common/AttachmentInfo;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v11, "mServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v15, Lcn/nubia/notepad/cloud/BatchOperation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 400
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lcn/nubia/notepad/cloud/BatchOperation;-><init>(Landroid/content/ContentResolver;)V

    .line 403
    .local v15, "operation":Lcn/nubia/notepad/cloud/BatchOperation;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    .local v10, "mAppFilesDir":Ljava/io/File;
    new-instance v20, Ljava/io/File;

    const-string v21, "user-0"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v10, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mAppDataDir:Ljava/io/File;

    .line 406
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v18, "updateAttach":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/sync/common/AttachmentInfo;>;"
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcn/nubia/cloud/sync/common/SyncDataIterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 408
    const/16 v20, 0xa

    .line 409
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcn/nubia/cloud/sync/common/SyncDataIterator;->getNext(I)Ljava/util/List;

    move-result-object v4

    .line 410
    .local v4, "attachInfos":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/sync/common/AttachmentInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/cloud/sync/common/AttachmentInfo;

    .line 411
    .local v6, "info":Lcn/nubia/cloud/sync/common/AttachmentInfo;
    new-instance v12, Lcn/nubia/cloud/sync/common/AttachmentInfo;

    invoke-direct {v12}, Lcn/nubia/cloud/sync/common/AttachmentInfo;-><init>()V

    .line 412
    .local v12, "newInfo":Lcn/nubia/cloud/sync/common/AttachmentInfo;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v14, "newItemList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;>;"
    invoke-virtual {v6}, Lcn/nubia/cloud/sync/common/AttachmentInfo;->getServerId()J

    move-result-wide v16

    .line 415
    .local v16, "serverId":J
    invoke-virtual {v6}, Lcn/nubia/cloud/sync/common/AttachmentInfo;->getItemInfos()Ljava/util/List;

    move-result-object v8

    .line 417
    .local v8, "itemInfos":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;

    .line 418
    .local v7, "item":Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;
    invoke-virtual {v7}, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;->getmKey()Ljava/lang/String;

    move-result-object v9

    .line 419
    .local v9, "key":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "update attachment "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " localpacht "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 420
    invoke-virtual {v7}, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;->getmLocalPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " cachepath "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 421
    invoke-virtual {v7}, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;->getmCachePath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " serverId "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 419
    invoke-static/range {v22 .. v22}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithPermit(Ljava/lang/String;)V

    .line 422
    const-string v22, "media"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 423
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 425
    .local v5, "content":Ljava/lang/StringBuffer;
    invoke-virtual {v7}, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;->getmCachePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mAppDataDir:Ljava/io/File;

    move-object/from16 v23, v0

    .line 424
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v5}, Lcn/nubia/notepad/cloud/NotePadCloudSync;->updateNotesAttachment(Ljava/lang/String;Ljava/io/File;Ljava/lang/StringBuffer;)Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;

    move-result-object v13

    .line 426
    .local v13, "newItem":Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;
    if-eqz v13, :cond_2

    .line 427
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 429
    .local v19, "values":Landroid/content/ContentValues;
    const-string v22, "attachment"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    const-string v22, "content"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    move-wide/from16 v0, v16

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v15}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->updateNotes(JLandroid/content/ContentValues;Lcn/nubia/notepad/cloud/BatchOperation;)V

    .line 432
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    .end local v5    # "content":Ljava/lang/StringBuffer;
    .end local v13    # "newItem":Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {v15}, Lcn/nubia/notepad/cloud/BatchOperation;->batchSizeEnough()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 437
    invoke-virtual {v15}, Lcn/nubia/notepad/cloud/BatchOperation;->execute()V

    goto/16 :goto_1

    .line 440
    .end local v7    # "item":Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;
    .end local v9    # "key":Ljava/lang/String;
    :cond_3
    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Lcn/nubia/cloud/sync/common/AttachmentInfo;->setmServerId(J)V

    .line 441
    invoke-virtual {v12, v14}, Lcn/nubia/cloud/sync/common/AttachmentInfo;->setmItemInfos(Ljava/util/List;)V

    .line 442
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 446
    .end local v4    # "attachInfos":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/sync/common/AttachmentInfo;>;"
    .end local v6    # "info":Lcn/nubia/cloud/sync/common/AttachmentInfo;
    .end local v8    # "itemInfos":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;>;"
    .end local v12    # "newInfo":Lcn/nubia/cloud/sync/common/AttachmentInfo;
    .end local v14    # "newItemList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;>;"
    .end local v16    # "serverId":J
    :cond_4
    invoke-virtual {v15}, Lcn/nubia/notepad/cloud/BatchOperation;->size()I

    move-result v20

    if-lez v20, :cond_5

    .line 447
    invoke-virtual {v15}, Lcn/nubia/notepad/cloud/BatchOperation;->execute()V

    .line 449
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_6

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v11}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->setRemindAlarm(Landroid/content/Context;Ljava/util/List;)V

    .line 452
    :cond_6
    return-object v18
.end method

.method public updateNotesData(Lcn/nubia/cloud/sync/common/SyncDataIterator;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<",
            "Lcn/nubia/notepad/cloud/NotePadSyncItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "syncDataIterato":Lcn/nubia/cloud/sync/common/SyncDataIterator;, "Lcn/nubia/cloud/sync/common/SyncDataIterator<Lcn/nubia/notepad/cloud/NotePadSyncItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    .line 127
    invoke-static/range {v24 .. v24}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->getPresetNotes(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v15

    .line 128
    .local v15, "mPresentNotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v19, Lcn/nubia/notepad/cloud/BatchOperation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    .line 129
    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcn/nubia/notepad/cloud/BatchOperation;-><init>(Landroid/content/ContentResolver;)V

    .line 130
    .local v19, "operation":Lcn/nubia/notepad/cloud/BatchOperation;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v16, "mServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v13, "mLableList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v13, v1}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->getPresentLabels(Landroid/content/Context;Ljava/util/HashMap;Landroid/util/SparseArray;)V

    .line 134
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v14, "mNewNotesData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/cloud/NotePadSyncItem;>;"
    const/4 v8, 0x0

    .line 136
    .local v8, "isExist":Z
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcn/nubia/cloud/sync/common/SyncDataIterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 137
    const/16 v24, 0xa

    .line 138
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lcn/nubia/cloud/sync/common/SyncDataIterator;->getNext(I)Ljava/util/List;

    move-result-object v18

    .line 139
    .local v18, "noteSyncItems":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/notepad/cloud/NotePadSyncItem;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_0
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcn/nubia/notepad/cloud/NotePadSyncItem;

    .line 140
    .local v21, "syncItem":Lcn/nubia/notepad/cloud/NotePadSyncItem;
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getServerID()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v24, v26, v28

    if-eqz v24, :cond_0

    .line 144
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getJsonContent()Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v10

    .line 145
    .local v10, "json":Lcn/nubia/cloud/utils/ParcelableJson;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    .line 146
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getServerID()J

    move-result-wide v26

    .line 145
    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->getNotesByServerId(Landroid/content/Context;J)I

    move-result v17

    .line 148
    .local v17, "noteId":I
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->isDeleted()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 149
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getServerID()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->deleteNotes(JLcn/nubia/notepad/cloud/BatchOperation;)V

    .line 151
    const/16 v24, -0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcn/nubia/notepad/utils/Util;->cancelRemindAlarm(Landroid/content/Context;I)V

    .line 153
    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->updateNotesLabel(ILcn/nubia/notepad/cloud/BatchOperation;)V

    goto :goto_1

    .line 158
    :cond_1
    const-string v24, "title"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 159
    .local v22, "title":Ljava/lang/String;
    const-string v24, "resource"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 160
    .local v20, "resource":Ljava/lang/String;
    const-string v24, "content"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, "content":Ljava/lang/String;
    const-string v24, "label"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 162
    .local v11, "label":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v22 .. v22}, Lcn/nubia/notepad/utils/Util;->getKeyFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 163
    invoke-static {v5}, Lcn/nubia/notepad/utils/Util;->getKeyFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 164
    invoke-static/range {v20 .. v20}, Lcn/nubia/notepad/utils/Util;->getKeyFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 166
    .local v9, "itemKey":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_2
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v7, v0, :cond_3

    .line 167
    invoke-virtual {v15, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 169
    :try_start_0
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "update serverID "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithPermit(Ljava/lang/String;)V

    .line 170
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 171
    .local v23, "values":Landroid/content/ContentValues;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_4

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 172
    const-string v26, "extra_1"

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    :cond_2
    :goto_3
    const-string v24, "server_id"

    invoke-virtual/range {v21 .. v21}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getServerID()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    const-string v24, "top"

    const-string v26, "top"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getInt(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    const-string v24, "remind_time"

    const-string v26, "remindtime"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    const-string v24, "remind"

    const-string v26, "remind"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getInt(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    const-string v24, "modify"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    invoke-virtual {v15, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v24

    .line 186
    move/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->updateNotes(ILandroid/content/ContentValues;Lcn/nubia/notepad/cloud/BatchOperation;)V

    .line 189
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->getServerID()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v23    # "values":Landroid/content/ContentValues;
    :goto_4
    const/4 v8, 0x1

    .line 198
    :cond_3
    if-eqz v8, :cond_6

    .line 199
    const/4 v8, 0x0

    .line 200
    goto/16 :goto_1

    .line 173
    .restart local v23    # "values":Landroid/content/ContentValues;
    :cond_4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v11, v2, v3}, Lcn/nubia/notepad/cloud/NotePadCloudSync;->addNotesLabel(Landroid/content/Context;Ljava/lang/String;J)I

    move-result v12

    .line 175
    .local v12, "labelId":I
    const-string v24, "extra_1"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v13, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Lcn/nubia/notepad/utils/Util;->getKeyFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 178
    invoke-static {v11}, Lcn/nubia/notepad/utils/Util;->getKeyFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v26, 0x0

    .line 179
    invoke-static/range {v26 .. v26}, Lcn/nubia/notepad/utils/Util;->getKeyFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 177
    move-object/from16 v0, v24

    invoke-virtual {v15, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 190
    .end local v12    # "labelId":I
    .end local v23    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v6

    .line 191
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 166
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 203
    :cond_6
    const-string v24, "attachment"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "attachment":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->itemHasAttachMent()Z

    move-result v24

    if-nez v24, :cond_7

    const-string v24, "yes"

    .line 205
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 210
    :cond_7
    :try_start_1
    invoke-virtual/range {v21 .. v22}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setTitle(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setResource(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setContent(Ljava/lang/String;)V

    .line 213
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setAttachment(Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setLabel(Ljava/lang/String;)V

    .line 215
    const-string v24, "top"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setTop(I)V

    .line 216
    const-string v24, "modified_date"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v0, v21

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setModifiedDate(J)V

    .line 217
    const-string v24, "mode"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setMode(I)V

    .line 218
    const-string v24, "remindtime"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v0, v21

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setRemindTime(J)V

    .line 219
    const-string v24, "remind"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setRemind(I)V

    .line 220
    const-string v24, "classify"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setClassify(I)V

    .line 221
    const-string v24, "create_date"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v0, v21

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setCreateDate(J)V

    .line 222
    const-string v24, "second_title"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setSecondTitle(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v17

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v14}, Lcn/nubia/notepad/cloud/NotePadCloudSync;->syncNotePad(Lcn/nubia/notepad/cloud/NotePadSyncItem;ILcn/nubia/notepad/cloud/BatchOperation;Ljava/util/ArrayList;)V

    .line 229
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/notepad/cloud/BatchOperation;->batchSizeEnough()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 230
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/notepad/cloud/BatchOperation;->execute()V

    goto/16 :goto_1

    .line 223
    :catch_1
    move-exception v6

    .line 224
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 233
    .end local v4    # "attachment":Ljava/lang/String;
    .end local v5    # "content":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "index":I
    .end local v9    # "itemKey":Ljava/lang/String;
    .end local v10    # "json":Lcn/nubia/cloud/utils/ParcelableJson;
    .end local v11    # "label":Ljava/lang/String;
    .end local v17    # "noteId":I
    .end local v20    # "resource":Ljava/lang/String;
    .end local v21    # "syncItem":Lcn/nubia/notepad/cloud/NotePadSyncItem;
    .end local v22    # "title":Ljava/lang/String;
    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 236
    .end local v18    # "noteSyncItems":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/notepad/cloud/NotePadSyncItem;>;"
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/notepad/cloud/BatchOperation;->size()I

    move-result v24

    if-lez v24, :cond_a

    .line 237
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/notepad/cloud/BatchOperation;->execute()V

    .line 240
    :cond_a
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_b

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->setRemindAlarm(Landroid/content/Context;Ljava/util/List;)V

    .line 244
    :cond_b
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-gtz v24, :cond_c

    .line 254
    :goto_6
    return-void

    .line 249
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v13, v14}, Lcn/nubia/notepad/cloud/NotePadCloudSync;->syncNotesLabelData(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v13, v14}, Lcn/nubia/notepad/cloud/NotePadCloudSync;->addNotePadDatas(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    .line 251
    :catch_2
    move-exception v6

    .line 252
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public updateSyncStatus(Lcn/nubia/cloud/sync/common/SyncDataIterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<",
            "Lcn/nubia/cloud/sync/common/IDMap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "idit":Lcn/nubia/cloud/sync/common/SyncDataIterator;, "Lcn/nubia/cloud/sync/common/SyncDataIterator<Lcn/nubia/cloud/sync/common/IDMap;>;"
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->updateModifyStatus(Landroid/content/Context;)V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "idmaps":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/sync/common/IDMap;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcn/nubia/cloud/sync/common/SyncDataIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Lcn/nubia/cloud/sync/common/SyncDataIterator;->getNext(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 68
    invoke-direct {p0, v0}, Lcn/nubia/notepad/cloud/NotePadCloudSync;->updateIdMaps(Ljava/util/List;)V

    .line 69
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 72
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 73
    invoke-direct {p0, v0}, Lcn/nubia/notepad/cloud/NotePadCloudSync;->updateIdMaps(Ljava/util/List;)V

    .line 74
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    :cond_2
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mDirtyNotes:Lcn/nubia/notepad/cloud/NotePadDirtyIterator;

    if-eqz v1, :cond_3

    .line 78
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/NotePadCloudSync;->clearDirtyStatus()V

    .line 81
    :cond_3
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcn/nubia/notepad/cloud/NotePadCloudSync;->mSyncTime:J

    invoke-static {v1, v2, v3}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->updateDirtyStatus(Landroid/content/Context;J)V

    .line 82
    return-void
.end method
