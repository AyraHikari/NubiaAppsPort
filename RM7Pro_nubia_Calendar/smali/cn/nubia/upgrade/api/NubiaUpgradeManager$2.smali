.class final Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;
.super Ljava/lang/Thread;
.source "NubiaUpgradeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 245
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 246
    new-instance v0, Lcn/nubia/upgrade/deviceid/DeviceId;

    const-string v1, "content://cn.nubia.provider.deviceid.dataid/oaid"

    const/4 v6, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcn/nubia/upgrade/deviceid/DeviceId;-><init>(Ljava/lang/String;ZZZZZ)V

    .line 247
    .local v0, "deviceId":Lcn/nubia/upgrade/deviceid/DeviceId;
    const-string v1, "upgrade_device_ids_cache"

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/deviceid/DeviceId;->setSPName(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/upgrade/deviceid/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 249
    invoke-virtual {v0}, Lcn/nubia/upgrade/deviceid/DeviceId;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/nubia/upgrade/util/CommonUtils;->mDeviceId:Ljava/lang/String;

    .line 250
    return-void
.end method
