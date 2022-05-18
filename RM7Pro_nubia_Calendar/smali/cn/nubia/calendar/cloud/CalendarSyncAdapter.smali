.class public Lcn/nubia/calendar/cloud/CalendarSyncAdapter;
.super Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter;
.source "CalendarSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter",
        "<",
        "Lcn/nubia/calendar/cloud/CalendarSyncItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field private static final KEY_LAST_SYNC_VERSION:Ljava/lang/String; = "last_sync_version"

.field private static final SP_NAME_CALENDAR_SYNC_CONFIG:Ljava/lang/String; = "calendar_sync_adapter"

.field private static final TAG:Ljava/lang/String; = "CalendarSyncAdapter"


# instance fields
.field private ctrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

.field private mCalendarClodSync:Lcn/nubia/calendar/cloud/CalendarCloudSync;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Lcn/nubia/calendar/cloud/CalendarSyncItem;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    invoke-direct {p0, v0}, Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter;-><init>(Lcn/nubia/cloud/utils/Jsonable$Creator;)V

    .line 28
    iput-object p1, p0, Lcn/nubia/calendar/cloud/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lcn/nubia/calendar/cloud/CalendarCloudSync;

    invoke-direct {v0, p1}, Lcn/nubia/calendar/cloud/CalendarCloudSync;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncAdapter;->mCalendarClodSync:Lcn/nubia/calendar/cloud/CalendarCloudSync;

    .line 30
    new-instance v0, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    const-string v2, "calendar_sync_adapter"

    invoke-direct {v0, v1, v2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncAdapter;->ctrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    .line 31
    return-void
.end method

.method private saveSyncVersion(J)V
    .locals 3
    .param p1, "serverVersion"    # J

    .prologue
    .line 81
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncAdapter;->ctrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v1, "last_sync_version"

    invoke-virtual {v0, v1, p1, p2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;J)V

    .line 82
    return-void
.end method


# virtual methods
.method public getLastSyncVersion(Ljava/lang/String;)J
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncAdapter;->ctrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v2, "account_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "oldAccountUsername":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncAdapter;->ctrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    invoke-virtual {v1}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->clear()V

    .line 38
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncAdapter;->ctrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v2, "account_name"

    invoke-virtual {v1, v2, p1}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/cloud/CalendarSyncAdapter;->ctrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v2, "last_sync_version"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method protected onQueryDirtyData()Lcn/nubia/cloud/sync/common/SyncDataIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<",
            "Lcn/nubia/calendar/cloud/CalendarSyncItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncAdapter;->mCalendarClodSync:Lcn/nubia/calendar/cloud/CalendarCloudSync;

    invoke-virtual {v0}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->queryDirtyData()Lcn/nubia/cloud/sync/common/SyncDataIterator;

    move-result-object v0

    return-object v0
.end method

.method protected onSyncComplete(JLcn/nubia/cloud/sync/common/SyncDataIterator;)V
    .locals 5
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
    .line 54
    .local p3, "idmap":Lcn/nubia/cloud/sync/common/SyncDataIterator;, "Lcn/nubia/cloud/sync/common/SyncDataIterator<Lcn/nubia/cloud/sync/common/IDMap;>;"
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "onSyncComplete"

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcn/nubia/calendar/cloud/CalendarSyncAdapter;->mCalendarClodSync:Lcn/nubia/calendar/cloud/CalendarCloudSync;

    invoke-virtual {v2, p3}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->updateSyncStatus(Lcn/nubia/cloud/sync/common/SyncDataIterator;)V

    .line 56
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/cloud/CalendarSyncAdapter;->saveSyncVersion(J)V

    .line 57
    invoke-interface {p3}, Lcn/nubia/cloud/sync/common/SyncDataIterator;->close()V

    .line 58
    iget-object v2, p0, Lcn/nubia/calendar/cloud/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/calendar/util/Utils;->getSyncDeleteSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 60
    .local v1, "spe":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    return-void
.end method

.method protected onUpdateAttachment(Lcn/nubia/cloud/sync/common/SyncDataIterator;)Lcn/nubia/cloud/sync/common/SyncDataIterator;
    .locals 1
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
    .line 68
    .local p1, "syncDataIterator":Lcn/nubia/cloud/sync/common/SyncDataIterator;, "Lcn/nubia/cloud/sync/common/SyncDataIterator<Lcn/nubia/cloud/sync/common/AttachmentInfo;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onUpdateData(JLcn/nubia/cloud/sync/common/SyncDataIterator;)V
    .locals 1
    .param p1, "serverVersion"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<",
            "Lcn/nubia/calendar/cloud/CalendarSyncItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p3, "syncDataIterator":Lcn/nubia/cloud/sync/common/SyncDataIterator;, "Lcn/nubia/cloud/sync/common/SyncDataIterator<Lcn/nubia/calendar/cloud/CalendarSyncItem;>;"
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncAdapter;->mCalendarClodSync:Lcn/nubia/calendar/cloud/CalendarCloudSync;

    invoke-virtual {v0, p3}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->updateNotesData(Lcn/nubia/cloud/sync/common/SyncDataIterator;)V

    .line 76
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/cloud/CalendarSyncAdapter;->saveSyncVersion(J)V

    .line 77
    invoke-interface {p3}, Lcn/nubia/cloud/sync/common/SyncDataIterator;->close()V

    .line 78
    return-void
.end method
