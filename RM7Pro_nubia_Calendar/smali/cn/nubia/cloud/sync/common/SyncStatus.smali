.class public Lcn/nubia/cloud/sync/common/SyncStatus;
.super Ljava/lang/Object;
.source "SyncStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static ATTACH_DOWNLOAD_FAIL:I

.field public static ATTACH_DOWNLOAD_SUCCESS:I

.field public static ATTACH_UPLAOD_FAIL:I

.field public static ATTACH_UPLAOD_SUCCESS:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/cloud/sync/common/SyncStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static KEY_LAST_SYNC_TIME:Ljava/lang/String;

.field public static KEY_SYNC_PROGRESS_INFO:Ljava/lang/String;


# instance fields
.field private final data:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "last_sync_time"

    sput-object v0, Lcn/nubia/cloud/sync/common/SyncStatus;->KEY_LAST_SYNC_TIME:Ljava/lang/String;

    .line 9
    const-string v0, "sync_progress_info"

    sput-object v0, Lcn/nubia/cloud/sync/common/SyncStatus;->KEY_SYNC_PROGRESS_INFO:Ljava/lang/String;

    .line 10
    const/4 v0, 0x1

    sput v0, Lcn/nubia/cloud/sync/common/SyncStatus;->ATTACH_UPLAOD_SUCCESS:I

    .line 11
    const/4 v0, 0x2

    sput v0, Lcn/nubia/cloud/sync/common/SyncStatus;->ATTACH_UPLAOD_FAIL:I

    .line 12
    const/4 v0, 0x3

    sput v0, Lcn/nubia/cloud/sync/common/SyncStatus;->ATTACH_DOWNLOAD_SUCCESS:I

    .line 13
    const/4 v0, 0x4

    sput v0, Lcn/nubia/cloud/sync/common/SyncStatus;->ATTACH_DOWNLOAD_FAIL:I

    .line 52
    new-instance v0, Lcn/nubia/cloud/sync/common/SyncStatus$1;

    invoke-direct {v0}, Lcn/nubia/cloud/sync/common/SyncStatus$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/sync/common/SyncStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/sync/common/SyncStatus;->data:Landroid/os/Bundle;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/sync/common/SyncStatus;->data:Landroid/os/Bundle;

    .line 21
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncStatus;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncStatus;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncStatus;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public putInt(Ljava/lang/String;I)Lcn/nubia/cloud/sync/common/SyncStatus;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "syncProgressInfo"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncStatus;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lcn/nubia/cloud/sync/common/SyncStatus;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "lastSyncTime"    # J

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncStatus;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 26
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncStatus;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 50
    return-void
.end method
