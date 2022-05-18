.class public Lcn/nubia/notepad/cloud/NotePadSyncAdapter;
.super Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter;
.source "NotePadSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter",
        "<",
        "Lcn/nubia/notepad/cloud/NotePadSyncItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field private static final KEY_LAST_SYNC_VERSION:Ljava/lang/String; = "last_sync_version_2"


# instance fields
.field private final ARG_ANIM_ONLY_ONCE:Ljava/lang/String;

.field private final EXTRA_CLASS_NAME:Ljava/lang/String;

.field private final EXTRA_IS_END:Ljava/lang/String;

.field private final EXTRA_PACKAGE_NAME:Ljava/lang/String;

.field private final FANCY_ICON_URI:Landroid/net/Uri;

.field private final METHOD_FANCY_ICON:Ljava/lang/String;

.field private final NOTEPAD_START_CLS:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNotePadClodSync:Lcn/nubia/notepad/cloud/NotePadCloudSync;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Lcn/nubia/notepad/cloud/NotePadSyncItem;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    invoke-direct {p0, v0}, Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter;-><init>(Lcn/nubia/cloud/utils/Jsonable$Creator;)V

    .line 25
    const-string v0, "packageName"

    iput-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    .line 26
    const-string v0, "className"

    iput-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->EXTRA_CLASS_NAME:Ljava/lang/String;

    .line 27
    const-string v0, "end"

    iput-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->EXTRA_IS_END:Ljava/lang/String;

    .line 28
    const-string v0, "fancyIcon"

    iput-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->METHOD_FANCY_ICON:Ljava/lang/String;

    .line 29
    const-string v0, "anim_only_once"

    iput-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->ARG_ANIM_ONLY_ONCE:Ljava/lang/String;

    .line 30
    const-string v0, "content://cn.nubia.launcher.unreadMark"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->FANCY_ICON_URI:Landroid/net/Uri;

    .line 32
    const-string v0, "cn.nubia.notepad.NoteListActivity"

    iput-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->NOTEPAD_START_CLS:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Lcn/nubia/notepad/cloud/NotePadCloudSync;

    invoke-direct {v0, p1}, Lcn/nubia/notepad/cloud/NotePadCloudSync;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mNotePadClodSync:Lcn/nubia/notepad/cloud/NotePadCloudSync;

    .line 42
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mContext:Landroid/content/Context;

    const-string v1, "notapad_sync_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 44
    return-void
.end method

.method private notifyCloundCompleteIconAnim(Z)V
    .locals 6
    .param p1, "isEnd"    # Z

    .prologue
    .line 151
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "packageName"

    iget-object v3, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v2, "className"

    const-string v3, "cn.nubia.notepad.NoteListActivity"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "end"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    :try_start_0
    iget-object v2, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->FANCY_ICON_URI:Landroid/net/Uri;

    const-string v4, "fancyIcon"

    const-string v5, "anim_only_once"

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private saveSyncVersion(J)V
    .locals 3
    .param p1, "serverVersion"    # J

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_sync_version_2"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    return-void
.end method


# virtual methods
.method public getLastSyncVersion(Ljava/lang/String;)J
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    .line 57
    invoke-static {}, Lcn/nubia/notepad/cloud/SyncListenerIml;->getInstance()Lcn/nubia/notepad/cloud/SyncListenerIml;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lcn/nubia/notepad/cloud/SyncListenerIml;->setStart(ZZ)V

    .line 58
    invoke-static {}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->deleteUnuploadFile()V

    .line 60
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "account_name"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "oldAccountUsername":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "account_name"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->clearCloudMark(Landroid/content/Context;)V

    .line 66
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastSyncVersion "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "last_sync_version_2"

    .line 67
    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithoutPermit(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "last_sync_version_2"

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 70
    .local v2, "syncVersion":J
    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    .line 71
    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->deleteCloudAttachmentDB(Landroid/content/Context;)V

    .line 73
    :cond_1
    return-wide v2
.end method

.method protected onQueryDirtyData()Lcn/nubia/cloud/sync/common/SyncDataIterator;
    .locals 3
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
    .line 83
    const-string v0, "onQueryDirtyData"

    invoke-static {v0}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithPermit(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcn/nubia/notepad/cloud/SyncListenerIml;->getInstance()Lcn/nubia/notepad/cloud/SyncListenerIml;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/cloud/SyncListenerIml;->setStart(ZZ)V

    .line 85
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mNotePadClodSync:Lcn/nubia/notepad/cloud/NotePadCloudSync;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/NotePadCloudSync;->queryDirtyData()Lcn/nubia/cloud/sync/common/SyncDataIterator;

    move-result-object v0

    return-object v0
.end method

.method protected onSyncComplete(JLcn/nubia/cloud/sync/common/SyncDataIterator;)V
    .locals 3
    .param p1, "serverVersion"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<",
            "Lcn/nubia/cloud/sync/common/IDMap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "idmap":Lcn/nubia/cloud/sync/common/SyncDataIterator;, "Lcn/nubia/cloud/sync/common/SyncDataIterator<Lcn/nubia/cloud/sync/common/IDMap;>;"
    const/4 v2, 0x0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSyncComplete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithoutPermit(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcn/nubia/notepad/cloud/SyncListenerIml;->getInstance()Lcn/nubia/notepad/cloud/SyncListenerIml;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/cloud/SyncListenerIml;->setStart(ZZ)V

    .line 103
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mNotePadClodSync:Lcn/nubia/notepad/cloud/NotePadCloudSync;

    invoke-virtual {v0, p3}, Lcn/nubia/notepad/cloud/NotePadCloudSync;->updateSyncStatus(Lcn/nubia/cloud/sync/common/SyncDataIterator;)V

    .line 104
    invoke-direct {p0, p1, p2}, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->saveSyncVersion(J)V

    .line 105
    invoke-interface {p3}, Lcn/nubia/cloud/sync/common/SyncDataIterator;->close()V

    .line 106
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->updateWidget(Landroid/content/Context;)V

    .line 107
    invoke-direct {p0, v2}, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->notifyCloundCompleteIconAnim(Z)V

    .line 108
    return-void
.end method

.method protected onUpdateAttachment(Lcn/nubia/cloud/sync/common/SyncDataIterator;)Lcn/nubia/cloud/sync/common/SyncDataIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<",
            "Lcn/nubia/cloud/sync/common/AttachmentInfo;",
            ">;)",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<",
            "Lcn/nubia/cloud/sync/common/AttachmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "syncDataIterator":Lcn/nubia/cloud/sync/common/SyncDataIterator;, "Lcn/nubia/cloud/sync/common/SyncDataIterator<Lcn/nubia/cloud/sync/common/AttachmentInfo;>;"
    const-string v0, "Notepad"

    const-string v1, "onUpdateAttachment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcn/nubia/notepad/cloud/SyncListenerIml;->getInstance()Lcn/nubia/notepad/cloud/SyncListenerIml;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/cloud/SyncListenerIml;->setStart(ZZ)V

    .line 125
    new-instance v0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mNotePadClodSync:Lcn/nubia/notepad/cloud/NotePadCloudSync;

    .line 126
    invoke-virtual {v1, p1}, Lcn/nubia/notepad/cloud/NotePadCloudSync;->updateAttachData(Lcn/nubia/cloud/sync/common/SyncDataIterator;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;-><init>(Ljava/util/List;)V

    .line 125
    return-object v0
.end method

.method protected onUpdateData(JLcn/nubia/cloud/sync/common/SyncDataIterator;)V
    .locals 3
    .param p1, "serverVersion"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<",
            "Lcn/nubia/notepad/cloud/NotePadSyncItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p3, "syncDataIterator":Lcn/nubia/cloud/sync/common/SyncDataIterator;, "Lcn/nubia/cloud/sync/common/SyncDataIterator<Lcn/nubia/notepad/cloud/NotePadSyncItem;>;"
    const-string v0, "Notepad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lcn/nubia/notepad/cloud/SyncListenerIml;->getInstance()Lcn/nubia/notepad/cloud/SyncListenerIml;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/cloud/SyncListenerIml;->setStart(ZZ)V

    .line 140
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/notepad/utils/FileHelper;->createDefaultFolders(Landroid/content/Context;)V

    .line 141
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->mNotePadClodSync:Lcn/nubia/notepad/cloud/NotePadCloudSync;

    invoke-virtual {v0, p3}, Lcn/nubia/notepad/cloud/NotePadCloudSync;->updateNotesData(Lcn/nubia/cloud/sync/common/SyncDataIterator;)V

    .line 142
    invoke-direct {p0, p1, p2}, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->saveSyncVersion(J)V

    .line 143
    invoke-interface {p3}, Lcn/nubia/cloud/sync/common/SyncDataIterator;->close()V

    .line 144
    return-void
.end method
