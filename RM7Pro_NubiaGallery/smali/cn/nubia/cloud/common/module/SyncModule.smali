.class public Lcn/nubia/cloud/common/module/SyncModule;
.super Lcn/nubia/cloud/common/module/Module;
.source "SyncModule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/common/module/SyncModule;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODULE_RECUCLE_CLS_NAME:Ljava/lang/String; = "nubia.cloud.module.RecyclebinClsName"


# instance fields
.field private mIsSyncEnable:Z

.field private mRecyclebinIntent:Landroid/content/Intent;

.field private final mSyncType:Lcn/nubia/cloud/common/module/SyncType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    new-instance v0, Lcn/nubia/cloud/common/module/SyncModule$1;

    invoke-direct {v0}, Lcn/nubia/cloud/common/module/SyncModule$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/common/module/SyncModule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 2

    .line 21
    sget-object v0, Lcn/nubia/cloud/common/module/ModuleType;->SYNC:Lcn/nubia/cloud/common/module/ModuleType;

    invoke-direct {p0, v0, p1}, Lcn/nubia/cloud/common/module/Module;-><init>(Lcn/nubia/cloud/common/module/ModuleType;Landroid/content/pm/ResolveInfo;)V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcn/nubia/cloud/common/module/SyncModule;->mIsSyncEnable:Z

    .line 22
    invoke-virtual {p0}, Lcn/nubia/cloud/common/module/SyncModule;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "nubia.cloud.module.Type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 23
    invoke-static {p1}, Lcn/nubia/cloud/common/module/SyncType;->valueOf(I)Lcn/nubia/cloud/common/module/SyncType;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/common/module/SyncModule;->mSyncType:Lcn/nubia/cloud/common/module/SyncType;

    .line 24
    invoke-direct {p0}, Lcn/nubia/cloud/common/module/SyncModule;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 28
    sget-object v0, Lcn/nubia/cloud/common/module/ModuleType;->SYNC:Lcn/nubia/cloud/common/module/ModuleType;

    invoke-direct {p0, v0, p1}, Lcn/nubia/cloud/common/module/Module;-><init>(Lcn/nubia/cloud/common/module/ModuleType;Landroid/os/Parcel;)V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcn/nubia/cloud/common/module/SyncModule;->mIsSyncEnable:Z

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/cloud/common/module/SyncModule;->mIsSyncEnable:Z

    .line 30
    invoke-virtual {p0}, Lcn/nubia/cloud/common/module/SyncModule;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "nubia.cloud.module.Type"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 31
    invoke-static {p1}, Lcn/nubia/cloud/common/module/SyncType;->valueOf(I)Lcn/nubia/cloud/common/module/SyncType;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/common/module/SyncModule;->mSyncType:Lcn/nubia/cloud/common/module/SyncType;

    .line 32
    invoke-direct {p0}, Lcn/nubia/cloud/common/module/SyncModule;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 36
    invoke-virtual {p0}, Lcn/nubia/cloud/common/module/SyncModule;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "nubia.cloud.module.RecyclebinClsName"

    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcn/nubia/cloud/common/module/SyncModule;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/common/module/SyncModule;->mRecyclebinIntent:Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 101
    :cond_0
    instance-of v1, p1, Lcn/nubia/cloud/common/module/SyncModule;

    if-eqz v1, :cond_1

    .line 102
    check-cast p1, Lcn/nubia/cloud/common/module/SyncModule;

    .line 103
    iget-object v1, p0, Lcn/nubia/cloud/common/module/SyncModule;->mSyncType:Lcn/nubia/cloud/common/module/SyncType;

    invoke-virtual {p1}, Lcn/nubia/cloud/common/module/SyncModule;->getSyncType()Lcn/nubia/cloud/common/module/SyncType;

    move-result-object p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getRecyclebinIntent()Landroid/content/Intent;
    .locals 1

    .line 49
    iget-object v0, p0, Lcn/nubia/cloud/common/module/SyncModule;->mRecyclebinIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getSyncType()Lcn/nubia/cloud/common/module/SyncType;
    .locals 1

    .line 65
    iget-object v0, p0, Lcn/nubia/cloud/common/module/SyncModule;->mSyncType:Lcn/nubia/cloud/common/module/SyncType;

    return-object v0
.end method

.method public hasRecyclebin()Z
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcn/nubia/cloud/common/module/SyncModule;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/cloud/common/module/SyncModule;->mRecyclebinIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/nubia/cloud/common/module/SyncModule;->mSyncType:Lcn/nubia/cloud/common/module/SyncType;

    invoke-virtual {v0}, Lcn/nubia/cloud/common/module/SyncType;->intValue()I

    move-result v0

    return v0
.end method

.method public iSyncEnable()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcn/nubia/cloud/common/module/SyncModule;->mIsSyncEnable:Z

    return v0
.end method

.method public initLocalConfig(Landroid/content/Context;)V
    .locals 2

    .line 54
    new-instance v0, Lcn/nubia/cloud/common/SharedPreferencesCtrl;

    .line 56
    invoke-virtual {p0}, Lcn/nubia/cloud/common/module/SyncModule;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 54
    invoke-direct {v0, p1, v1}, Lcn/nubia/cloud/common/SharedPreferencesCtrl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "key_is_sync_enable"

    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, p1, v1}, Lcn/nubia/cloud/common/SharedPreferencesCtrl;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/cloud/common/module/SyncModule;->mIsSyncEnable:Z

    return-void
.end method

.method public onStart(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "key_is_sync_enable"

    const/4 v1, 0x1

    .line 70
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/cloud/common/module/SyncModule;->mIsSyncEnable:Z

    const-string v0, "key_sync_condition"

    .line 72
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    iget-object v0, p0, Lcn/nubia/cloud/common/module/SyncModule;->mSyncType:Lcn/nubia/cloud/common/module/SyncType;

    invoke-virtual {v0}, Lcn/nubia/cloud/common/module/SyncType;->intValue()I

    move-result v0

    const-string v1, "key_sync_type_value"

    .line 74
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nubia.cloud.sync.SyncManager"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "cn.nubia.cloud"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 81
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    invoke-super {p0}, Lcn/nubia/cloud/common/module/Module;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " syncType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Lcn/nubia/cloud/common/module/SyncModule;->mSyncType:Lcn/nubia/cloud/common/module/SyncType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/common/module/Module;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    iget-boolean p2, p0, Lcn/nubia/cloud/common/module/SyncModule;->mIsSyncEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
