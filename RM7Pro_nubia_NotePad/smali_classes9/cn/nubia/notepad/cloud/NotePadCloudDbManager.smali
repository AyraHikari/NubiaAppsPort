.class public Lcn/nubia/notepad/cloud/NotePadCloudDbManager;
.super Ljava/lang/Object;
.source "NotePadCloudDbManager.java"


# static fields
.field private static final ATTACHMENT_PATH:Ljava/lang/String; = "attachment_data"

.field private static final ATTACHMENT_URI:Landroid/net/Uri;

.field private static final AUTHORITY:Ljava/lang/String; = "cn.nubia.cloud.syncservice"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final NOTEPAD_CONTENT_INDEX:I = 0x1

.field private static final NOTEPAD_ID_INDEX:I = 0x0

.field private static final NOTEPAD_RESOURCE_INDEX:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "content://cn.nubia.cloud.syncservice"

    .line 35
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->AUTHORITY_URI:Landroid/net/Uri;

    .line 37
    sget-object v0, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "attachment_data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->ATTACHMENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNewNoteRecord(Landroid/content/ContentValues;Lcn/nubia/notepad/cloud/BatchOperation;)V
    .locals 3
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "batchOperation"    # Lcn/nubia/notepad/cloud/BatchOperation;

    .prologue
    .line 177
    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    .line 178
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 179
    invoke-virtual {v1, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 180
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/notepad/cloud/BatchOperation;->add(Landroid/content/ContentProviderOperation;)I

    .line 181
    return-void
.end method

.method public static clearCloudMark(Landroid/content/Context;)V
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 269
    :try_start_0
    const-string v2, "deleted = 1 OR attachment = 0"

    .line 271
    .local v2, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    .line 272
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 274
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 275
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "server_id"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    const-string v3, "modify"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    const-string v2, "server_id<> 0"

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "where":Ljava/lang/String;
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteCloudAttachmentDB(Landroid/content/Context;)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 247
    :try_start_0
    const-string v1, "sync_type = 4"

    .line 248
    .local v1, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->ATTACHMENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v1    # "where":Ljava/lang/String;
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteNotes(JLcn/nubia/notepad/cloud/BatchOperation;)V
    .locals 4
    .param p0, "serverId"    # J
    .param p2, "batchOperation"    # Lcn/nubia/notepad/cloud/BatchOperation;

    .prologue
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "selection":Ljava/lang/String;
    sget-object v2, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    .line 62
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 63
    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 64
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcn/nubia/notepad/cloud/BatchOperation;->add(Landroid/content/ContentProviderOperation;)I

    .line 65
    return-void
.end method

.method public static deleteNotesIfNeed(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 332
    :try_start_0
    const-string v1, "deleted = 1"

    .line 333
    .local v1, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v1    # "where":Ljava/lang/String;
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteRecord(JLcn/nubia/notepad/cloud/BatchOperation;)V
    .locals 4
    .param p0, "localId"    # J
    .param p2, "batchOperation"    # Lcn/nubia/notepad/cloud/BatchOperation;

    .prologue
    .line 53
    sget-object v2, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 55
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 56
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcn/nubia/notepad/cloud/BatchOperation;->add(Landroid/content/ContentProviderOperation;)I

    .line 57
    return-void
.end method

.method public static deleteUnUsedNotes(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 323
    :try_start_0
    const-string v1, "attachment = 0"

    .line 324
    .local v1, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v1    # "where":Ljava/lang/String;
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized deleteUnuploadFile()V
    .locals 3

    .prologue
    .line 286
    const-class v2, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 287
    .local v0, "mExecutor":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lcn/nubia/notepad/cloud/NotePadCloudDbManager$1;

    invoke-direct {v1}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit v2

    return-void

    .line 286
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getNoteSyncItem(Landroid/content/Context;Landroid/database/Cursor;Lcn/nubia/notepad/cloud/NotePadSyncItem;ILandroid/util/SparseArray;)Lcn/nubia/notepad/cloud/NotePadSyncItem;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "syncItem"    # Lcn/nubia/notepad/cloud/NotePadSyncItem;
    .param p3, "noteId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Lcn/nubia/notepad/cloud/NotePadSyncItem;",
            "I",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/nubia/notepad/cloud/NotePadSyncItem;"
        }
    .end annotation

    .prologue
    .line 134
    .local p4, "mLabelList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :try_start_0
    const-string v6, "content"

    .line 135
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 134
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "content":Ljava/lang/String;
    const-string v6, "resource"

    .line 137
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 136
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "resource":Ljava/lang/String;
    const-string v6, "title"

    .line 139
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 138
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setTitle(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2, v2}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setContent(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2, v5}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setResource(Ljava/lang/String;)V

    .line 142
    const-string v6, "created"

    .line 143
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 142
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setCreateDate(J)V

    .line 144
    const-string v6, "modified"

    .line 145
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 144
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setModifiedDate(J)V

    .line 146
    const-string v6, "classify"

    .line 147
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 146
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p2, v6}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setClassify(I)V

    .line 148
    const-string v6, "remind"

    .line 149
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 148
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p2, v6}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setRemind(I)V

    .line 150
    const-string v6, "remind_time"

    .line 151
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 150
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setRemindTime(J)V

    .line 152
    const-string v6, "mode"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p2, v6}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setMode(I)V

    .line 153
    const-string v6, "top"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p2, v6}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setTop(I)V

    .line 154
    const-string v6, "second_title"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setSecondTitle(Ljava/lang/String;)V

    .line 155
    const-string v6, "extra_1"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 156
    .local v4, "labelId":I
    const/4 v6, 0x0

    invoke-virtual {p4, v4, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p2, v6}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setLabel(Ljava/lang/String;)V

    .line 157
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ".xml"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 158
    const-string v6, "yes"

    invoke-virtual {p2, v6}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setAttachment(Ljava/lang/String;)V

    .line 159
    new-instance v0, Lcn/nubia/notepad/cloud/NotePadAttachment;

    invoke-direct {v0, p3, v2, v5}, Lcn/nubia/notepad/cloud/NotePadAttachment;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v0, "attachment":Lcn/nubia/notepad/cloud/NotePadAttachment;
    invoke-virtual {v0, p0}, Lcn/nubia/notepad/cloud/NotePadAttachment;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "cachePath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 163
    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/NotePadAttachment;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6, v1}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->addAttachment(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .end local v0    # "attachment":Lcn/nubia/notepad/cloud/NotePadAttachment;
    .end local v1    # "cachePath":Ljava/lang/String;
    .end local v2    # "content":Ljava/lang/String;
    .end local v4    # "labelId":I
    .end local v5    # "resource":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 166
    .restart local v2    # "content":Ljava/lang/String;
    .restart local v4    # "labelId":I
    .restart local v5    # "resource":Ljava/lang/String;
    :cond_1
    const-string v6, "no"

    invoke-virtual {p2, v6}, Lcn/nubia/notepad/cloud/NotePadSyncItem;->setAttachment(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v2    # "content":Ljava/lang/String;
    .end local v4    # "labelId":I
    .end local v5    # "resource":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getNotesByServerId(Landroid/content/Context;J)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serverId"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    .line 219
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    move v0, v8

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    .line 225
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 229
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 231
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 237
    if-eqz v6, :cond_0

    .line 238
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 239
    const/4 v6, 0x0

    goto :goto_0

    .line 237
    :cond_2
    if-eqz v6, :cond_3

    .line 238
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 239
    const/4 v6, 0x0

    :cond_3
    :goto_1
    move v0, v8

    .line 242
    goto :goto_0

    .line 234
    :catch_0
    move-exception v7

    .line 235
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    if-eqz v6, :cond_3

    .line 238
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 239
    const/4 v6, 0x0

    goto :goto_1

    .line 237
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 238
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 239
    const/4 v6, 0x0

    .line 241
    :cond_4
    throw v0
.end method

.method public static getPresentLabels(Landroid/content/Context;Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "lististByName":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p2, "listById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 354
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "classify = 1000 AND deleted = 0 AND attachment = 1 "

    .line 356
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/notepad/utils/NotesData;->NOTE_LABEL_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "top DESC, modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 361
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 362
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 364
    .local v8, "id":I
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 365
    .local v9, "title":Ljava/lang/String;
    const v0, 0x7f0a0103

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    const v0, 0x7f0a0077

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 376
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 377
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_2
    if-eqz p2, :cond_0

    .line 381
    invoke-virtual {p2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 385
    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "id":I
    .end local v9    # "title":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 386
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    if-eqz v6, :cond_3

    .line 389
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 390
    const/4 v6, 0x0

    .line 394
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void

    .line 368
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v8    # "id":I
    .restart local v9    # "title":Ljava/lang/String;
    :cond_4
    const v0, 0x7f0a0101

    :try_start_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 370
    const v0, 0x7f0a006e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 371
    :cond_5
    const v0, 0x7f0a0102

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    const v0, 0x7f0a0076

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    goto :goto_1

    .line 388
    .end local v8    # "id":I
    .end local v9    # "title":Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_3

    .line 389
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 390
    const/4 v6, 0x0

    goto :goto_2

    .line 388
    .end local v3    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 389
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 390
    const/4 v6, 0x0

    .line 392
    :cond_7
    throw v0
.end method

.method public static getPresetNotes(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 184
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 185
    .local v9, "mPresentNotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "content"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "resource"

    aput-object v1, v2, v0

    .line 189
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "deleted = 0 AND attachment = 1"

    .line 191
    .local v3, "selection":Ljava/lang/String;
    const/4 v7, 0x0

    .line 193
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 195
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 210
    :cond_0
    if-eqz v7, :cond_1

    .line 211
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 212
    const/4 v7, 0x0

    .line 215
    :cond_1
    :goto_0
    return-object v9

    .line 198
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 200
    .local v11, "title":Ljava/lang/String;
    const-string v0, "content"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 201
    .local v6, "content":Ljava/lang/String;
    const-string v0, "resource"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 202
    .local v10, "resource":Ljava/lang/String;
    const/4 v0, 0x0

    .line 203
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    invoke-static {v11}, Lcn/nubia/notepad/utils/Util;->getKeyFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Lcn/nubia/notepad/utils/Util;->getKeyFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    invoke-static {v10}, Lcn/nubia/notepad/utils/Util;->getKeyFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {v9, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 207
    .end local v6    # "content":Ljava/lang/String;
    .end local v10    # "resource":Ljava/lang/String;
    .end local v11    # "title":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 208
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    if-eqz v7, :cond_1

    .line 211
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 212
    const/4 v7, 0x0

    goto :goto_0

    .line 210
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz v7, :cond_1

    .line 211
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 212
    const/4 v7, 0x0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 211
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 212
    const/4 v7, 0x0

    .line 214
    :cond_4
    throw v0
.end method

.method public static setRemindAlarm(Landroid/content/Context;Ljava/util/List;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "serverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v10, 0x1

    .line 88
    const/4 v6, 0x0

    .line 89
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "remind"

    aput-object v0, v2, v10

    const/4 v0, 0x2

    const-string v1, "remind_time"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "classify"

    aput-object v1, v2, v0

    .line 92
    .local v2, "projection":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "server_id in("

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .local v8, "remindBuffer":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 94
    .local v9, "serverId":Ljava/lang/Long;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 96
    .end local v9    # "serverId":Ljava/lang/Long;
    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 97
    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v0, " AND attachment = 1 "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    .line 101
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 100
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 102
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 116
    :cond_1
    if-eqz v6, :cond_2

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 118
    const/4 v6, 0x0

    .line 121
    :cond_2
    :goto_1
    return-void

    .line 105
    :cond_3
    :goto_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    const-string v0, "remind"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_3

    .line 107
    const-string v0, "remind_time"

    .line 109
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 108
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v3, "_id"

    .line 110
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 109
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 107
    invoke-static {p0, v0, v1, v3}, Lcn/nubia/notepad/utils/Util;->setRemindAlarm(Landroid/content/Context;JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 113
    :catch_0
    move-exception v7

    .line 114
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    if-eqz v6, :cond_2

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 118
    const/4 v6, 0x0

    goto :goto_1

    .line 116
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    if-eqz v6, :cond_2

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 118
    const/4 v6, 0x0

    goto :goto_1

    .line 116
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 118
    const/4 v6, 0x0

    .line 120
    :cond_5
    throw v0
.end method

.method public static updateCloudAttachmentServer(Landroid/content/Context;JJ)V
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "localId"    # J
    .param p3, "serverId"    # J

    .prologue
    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync_type = 4 AND local_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND server_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "where":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "local_id"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->ATTACHMENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateDirtyStatus(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mSyncTime"    # J

    .prologue
    .line 341
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modified > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "where":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 343
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "modify"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "where":Ljava/lang/String;
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateModifyStatus(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 313
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "modify"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateNotes(ILandroid/content/ContentValues;Lcn/nubia/notepad/cloud/BatchOperation;)V
    .locals 6
    .param p0, "noteId"    # I
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "batchOperation"    # Lcn/nubia/notepad/cloud/BatchOperation;

    .prologue
    .line 125
    sget-object v2, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p0

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 127
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 128
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcn/nubia/notepad/cloud/BatchOperation;->add(Landroid/content/ContentProviderOperation;)I

    .line 129
    return-void
.end method

.method public static updateNotes(JLandroid/content/ContentValues;Lcn/nubia/notepad/cloud/BatchOperation;)V
    .locals 4
    .param p0, "serverId"    # J
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "batchOperation"    # Lcn/nubia/notepad/cloud/BatchOperation;

    .prologue
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "selection":Ljava/lang/String;
    sget-object v2, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    .line 81
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 82
    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 83
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 84
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcn/nubia/notepad/cloud/BatchOperation;->add(Landroid/content/ContentProviderOperation;)I

    .line 85
    return-void
.end method

.method public static updateNotesLabel(ILcn/nubia/notepad/cloud/BatchOperation;)V
    .locals 5
    .param p0, "noteid"    # I
    .param p1, "batchOperation"    # Lcn/nubia/notepad/cloud/BatchOperation;

    .prologue
    .line 68
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "extra_1"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extra_1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "selection":Ljava/lang/String;
    sget-object v3, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    .line 72
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 73
    invoke-virtual {v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 74
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcn/nubia/notepad/cloud/BatchOperation;->add(Landroid/content/ContentProviderOperation;)I

    .line 75
    return-void
.end method

.method public static updateServerId(JJILcn/nubia/notepad/cloud/BatchOperation;)V
    .locals 4
    .param p0, "localId"    # J
    .param p2, "serverId"    # J
    .param p4, "modify"    # I
    .param p5, "batchOperation"    # Lcn/nubia/notepad/cloud/BatchOperation;

    .prologue
    .line 42
    sget-object v2, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 44
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 45
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    .line 46
    const-string v2, "server_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 48
    :cond_0
    const-string v2, "modify"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 49
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p5, v2}, Lcn/nubia/notepad/cloud/BatchOperation;->add(Landroid/content/ContentProviderOperation;)I

    .line 50
    return-void
.end method
