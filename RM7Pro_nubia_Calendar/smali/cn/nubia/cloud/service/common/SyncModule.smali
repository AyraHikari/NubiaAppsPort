.class public Lcn/nubia/cloud/service/common/SyncModule;
.super Lcn/nubia/cloud/service/common/Module;
.source "SyncModule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION:Ljava/lang/String; = "nubia.cloud.sync.SyncManager"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/cloud/service/common/SyncModule;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_IS_SYNC_ENABLE:Ljava/lang/String; = "key_is_sync_enable"

.field public static final KEY_SYNC_CONDITION:Ljava/lang/String; = "key_sync_condition"

.field public static final KEY_SYNC_TYPE_VALUE:Ljava/lang/String; = "key_sync_type_value"

.field private static final KEY_USER_NAME:Ljava/lang/String; = "account_name"

.field private static final MODULE_RECYCLEBIN_ACTION:Ljava/lang/String; = "nubia.cloud.module.RecyclebinAction"

.field public static final SYNC_CONFIG_CHANGE:I = 0x1


# instance fields
.field private mIsSyncEnable:Z

.field private mRecyclebinIntent:Landroid/content/Intent;

.field private final mSyncType:Lcn/nubia/cloud/service/common/SyncType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcn/nubia/cloud/service/common/SyncModule$1;

    invoke-direct {v0}, Lcn/nubia/cloud/service/common/SyncModule$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/service/common/SyncModule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    sget-object v2, Lcn/nubia/cloud/service/common/ModuleType;->SYNC:Lcn/nubia/cloud/service/common/ModuleType;

    invoke-direct {p0, v2, p1}, Lcn/nubia/cloud/service/common/Module;-><init>(Lcn/nubia/cloud/service/common/ModuleType;Landroid/os/Parcel;)V

    .line 23
    iput-boolean v0, p0, Lcn/nubia/cloud/service/common/SyncModule;->mIsSyncEnable:Z

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/cloud/service/common/SyncModule;->mIsSyncEnable:Z

    .line 35
    iget-object v0, p0, Lcn/nubia/cloud/service/common/SyncModule;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    const-string v2, "nubia.cloud.module.Type"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/cloud/service/common/ModuleConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/nubia/cloud/service/common/SyncType;->valueOf(I)Lcn/nubia/cloud/service/common/SyncType;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/service/common/SyncModule;->mSyncType:Lcn/nubia/cloud/service/common/SyncType;

    .line 36
    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/SyncModule;->init()V

    .line 37
    return-void

    :cond_0
    move v0, v1

    .line 34
    goto :goto_0
.end method

.method public constructor <init>(Lcn/nubia/cloud/service/common/ModuleConfig;)V
    .locals 3
    .param p1, "info"    # Lcn/nubia/cloud/service/common/ModuleConfig;

    .prologue
    .line 27
    sget-object v0, Lcn/nubia/cloud/service/common/ModuleType;->SYNC:Lcn/nubia/cloud/service/common/ModuleType;

    invoke-direct {p0, v0, p1}, Lcn/nubia/cloud/service/common/Module;-><init>(Lcn/nubia/cloud/service/common/ModuleType;Lcn/nubia/cloud/service/common/ModuleConfig;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/cloud/service/common/SyncModule;->mIsSyncEnable:Z

    .line 28
    iget-object v0, p0, Lcn/nubia/cloud/service/common/SyncModule;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    const-string v1, "nubia.cloud.module.Type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/service/common/ModuleConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/nubia/cloud/service/common/SyncType;->valueOf(I)Lcn/nubia/cloud/service/common/SyncType;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/service/common/SyncModule;->mSyncType:Lcn/nubia/cloud/service/common/SyncType;

    .line 29
    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/SyncModule;->init()V

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 109
    if-ne p0, p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    instance-of v2, p1, Lcn/nubia/cloud/service/common/SyncModule;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 113
    check-cast v0, Lcn/nubia/cloud/service/common/SyncModule;

    .line 114
    .local v0, "m":Lcn/nubia/cloud/service/common/SyncModule;
    iget-object v2, p0, Lcn/nubia/cloud/service/common/SyncModule;->mSyncType:Lcn/nubia/cloud/service/common/SyncType;

    invoke-virtual {v0}, Lcn/nubia/cloud/service/common/SyncModule;->getSyncType()Lcn/nubia/cloud/service/common/SyncType;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 118
    .end local v0    # "m":Lcn/nubia/cloud/service/common/SyncModule;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRecyclebinIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/cloud/service/common/SyncModule;->mRecyclebinIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getSyncType()Lcn/nubia/cloud/service/common/SyncType;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcn/nubia/cloud/service/common/SyncModule;->mSyncType:Lcn/nubia/cloud/service/common/SyncType;

    return-object v0
.end method

.method public hasRecyclebin()Z
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/SyncModule;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/cloud/service/common/SyncModule;->mRecyclebinIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcn/nubia/cloud/service/common/SyncModule;->mSyncType:Lcn/nubia/cloud/service/common/SyncType;

    invoke-virtual {v0}, Lcn/nubia/cloud/service/common/SyncType;->intValue()I

    move-result v0

    return v0
.end method

.method public iSyncEnable()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcn/nubia/cloud/service/common/SyncModule;->mIsSyncEnable:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/SyncModule;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method init()V
    .locals 4

    .prologue
    .line 41
    invoke-super {p0}, Lcn/nubia/cloud/service/common/Module;->init()V

    .line 42
    sget-object v1, Lcn/nubia/cloud/service/common/ModuleGroupType;->CLOUDSERVICE:Lcn/nubia/cloud/service/common/ModuleGroupType;

    iput-object v1, p0, Lcn/nubia/cloud/service/common/SyncModule;->mGroupType:Lcn/nubia/cloud/service/common/ModuleGroupType;

    .line 43
    iget-object v1, p0, Lcn/nubia/cloud/service/common/SyncModule;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    const-string v2, "nubia.cloud.module.RecyclebinAction"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/service/common/ModuleConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "recycleAction":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/cloud/service/common/SyncModule;->mRecyclebinIntent:Landroid/content/Intent;

    .line 46
    iget-object v1, p0, Lcn/nubia/cloud/service/common/SyncModule;->mRecyclebinIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcn/nubia/cloud/service/common/SyncModule;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    iget-object v2, v2, Lcn/nubia/cloud/service/common/ModuleConfig;->modulePkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    :cond_0
    return-void
.end method

.method onRefreshInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/SyncModule;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    .local v0, "ctrl":Lcn/nubia/cloud/utils/SharedPreferencesCtrl;
    const-string v2, "account_name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "oldUser":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    invoke-virtual {v0}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->clear()V

    .line 65
    const-string v2, "account_name"

    invoke-virtual {v0, v2, p2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    const-string v2, "key_is_sync_enable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/cloud/service/common/SyncModule;->mIsSyncEnable:Z

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/SyncModule;->getName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcn/nubia/cloud/service/common/SyncModule;->mIsSyncEnable:Z

    invoke-static {v2, v3, v4}, Lcn/nubia/cloud/settings/common/CloudSettings$App;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 69
    return-void
.end method

.method public onStart(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 81
    const-string v2, "key_is_sync_enable"

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/cloud/service/common/SyncModule;->mIsSyncEnable:Z

    .line 83
    const-string v2, "key_sync_condition"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string v2, "key_sync_type_value"

    iget-object v3, p0, Lcn/nubia/cloud/service/common/SyncModule;->mSyncType:Lcn/nubia/cloud/service/common/SyncType;

    invoke-virtual {v3}, Lcn/nubia/cloud/service/common/SyncType;->intValue()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    new-instance v1, Landroid/content/Intent;

    const-string v2, "nubia.cloud.sync.SyncManager"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "cn.nubia.cloud"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 92
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return v4

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v0, "sBuilder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcn/nubia/cloud/service/common/Module;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " syncType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Lcn/nubia/cloud/service/common/SyncModule;->mSyncType:Lcn/nubia/cloud/service/common/SyncType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/service/common/Module;->writeToParcel(Landroid/os/Parcel;I)V

    .line 129
    iget-boolean v0, p0, Lcn/nubia/cloud/service/common/SyncModule;->mIsSyncEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
