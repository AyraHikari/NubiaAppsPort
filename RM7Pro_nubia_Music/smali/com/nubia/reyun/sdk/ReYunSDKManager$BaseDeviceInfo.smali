.class Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;
.super Ljava/lang/Object;
.source "ReYunSDKManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/reyun/sdk/ReYunSDKManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseDeviceInfo"
.end annotation


# static fields
.field private static final AES_IV_STR_RELEASE:Ljava/lang/String; = "393kfI3KV0#&Vkf3"

.field private static final AES_KEY_STR_RELEASE:Ljava/lang/String; = "AIF93gZKFkd23413"


# instance fields
.field private mAndroidId:Ljava/lang/String;

.field private mApiDevice:Ljava/lang/String;

.field private mDevice:Lcom/nubia/reyun/utils/DeviceId;

.field private mDeviceID:Ljava/lang/String;

.field private mDid:Lcom/nubia/reyun/deviceid/DeviceId;

.field private mDidType:Ljava/lang/String;

.field private mEids:Ljava/lang/String;

.field private mImei:Ljava/lang/String;

.field private mImeis:Ljava/lang/String;

.field private mVersionName:Ljava/lang/String;

.field private newImei:Ljava/lang/String;

.field final synthetic this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;


# direct methods
.method constructor <init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1374
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1359
    iput-object v3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImei:Ljava/lang/String;

    .line 1360
    new-instance v0, Lcom/nubia/reyun/utils/DeviceId;

    const-string v1, "content://cn.nubia.provider.DeviceId"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nubia/reyun/utils/DeviceId;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    .line 1361
    iput-object v3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImeis:Ljava/lang/String;

    .line 1364
    iput-object v3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDidType:Ljava/lang/String;

    .line 1369
    new-instance v0, Lcom/nubia/reyun/deviceid/DeviceId;

    .line 1370
    const-string v1, "content://cn.nubia.provider.deviceid.dataid/grndid?mids&altoaid&udid"

    .line 1372
    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/nubia/reyun/deviceid/DeviceId;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    .line 1376
    return-void
.end method


# virtual methods
.method public getAndroidid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mAndroidId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nubia/reyun/utils/CommonUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mAndroidId:Ljava/lang/String;

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mAndroidId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mAndroidId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApiDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mApiDevice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mApiDevice:Ljava/lang/String;

    .line 1489
    :goto_0
    return-object v0

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->getDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mApiDevice:Ljava/lang/String;

    .line 1483
    :try_start_0
    const-string v0, "AIF93gZKFkd23413"

    .line 1484
    const-string v1, "393kfI3KV0#&Vkf3"

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mApiDevice:Ljava/lang/String;

    .line 1483
    invoke-static {v0, v1, v2}, Lcom/nubia/reyun/utils/NetWorkUtil;->toAes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mApiDevice:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1488
    :goto_1
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->getDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mApiDevice:Ljava/lang/String;

    .line 1489
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mApiDevice:Ljava/lang/String;

    goto :goto_0

    .line 1485
    :catch_0
    move-exception v0

    .line 1486
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getDeviceBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1526
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDeviceID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "00000000"

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDeviceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->newImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1493
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    if-nez v0, :cond_1

    .line 1494
    new-instance v0, Lcom/nubia/reyun/utils/DeviceId;

    const-string v1, "content://cn.nubia.provider.DeviceId"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nubia/reyun/utils/DeviceId;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    .line 1496
    :cond_1
    const-string v0, "00000000"

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    invoke-virtual {v1}, Lcom/nubia/reyun/utils/DeviceId;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->newImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1497
    const-string v0, "00000000"

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->newImei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1498
    :cond_2
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nubia/reyun/utils/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 1500
    :cond_3
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/utils/DeviceId;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDeviceID:Ljava/lang/String;

    .line 1501
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/utils/DeviceId;->getIMEIs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImeis:Ljava/lang/String;

    .line 1502
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/utils/DeviceId;->getImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->newImei:Ljava/lang/String;

    .line 1512
    :cond_4
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDidType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getIdType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDidType:Ljava/lang/String;

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDidType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1522
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getHasProvider()Z
    .locals 2

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nubia/reyun/deviceid/DeviceId;->hasProvider(Landroid/content/Context;)Z

    move-result v0

    .line 1398
    return v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1545
    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unknown"

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1546
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nubia/reyun/utils/CommonUtil;->getAllImei(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1547
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1548
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImei:Ljava/lang/String;

    .line 1549
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getImei mImei1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    :cond_1
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1552
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nubia/reyun/utils/CommonUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImei:Ljava/lang/String;

    .line 1553
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getImei mImei2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    :cond_2
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1556
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImei:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1562
    :cond_3
    :goto_0
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getImei mImei3:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImei:Ljava/lang/String;

    return-object v0

    .line 1559
    :catch_0
    move-exception v0

    .line 1560
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImei:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMeids()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1462
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mEids:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/nubia/reyun/deviceid/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 1464
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/deviceid/DeviceId;->getIMEIs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImeis:Ljava/lang/String;

    .line 1465
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nubia/reyun/deviceid/DeviceId;->getImei(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->newImei:Ljava/lang/String;

    .line 1466
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/deviceid/DeviceId;->getMEIDs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mEids:Ljava/lang/String;

    .line 1467
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mEids:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/nubia/reyun/utils/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 1469
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/utils/DeviceId;->getIMEIs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImeis:Ljava/lang/String;

    .line 1470
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/utils/DeviceId;->getImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->newImei:Ljava/lang/String;

    .line 1471
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/utils/DeviceId;->getMEIDs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mEids:Ljava/lang/String;

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mEids:Ljava/lang/String;

    return-object v0
.end method

.method public getNewDid()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1407
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getIdType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDidType:Ljava/lang/String;

    .line 1408
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNewDid mDidType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDidType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/nubia/reyun/deviceid/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 1410
    const-string v0, "vaid"

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDidType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1411
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/deviceid/DeviceId;->getRemoteRNDID()Ljava/lang/String;

    move-result-object v0

    .line 1412
    sget-object v1, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNewDid vaid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nubia/reyun/utils/CommonUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1428
    :cond_0
    :goto_0
    return-object v0

    .line 1416
    :cond_1
    const-string v0, "udid"

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDidType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1417
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/deviceid/DeviceId;->getUDID()Ljava/lang/String;

    move-result-object v0

    .line 1418
    sget-object v1, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNewDid udid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nubia/reyun/utils/CommonUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1423
    :cond_2
    const-string v0, "imei"

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDidType:Ljava/lang/String;

    .line 1424
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nubia/reyun/deviceid/DeviceId;->getImei(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1425
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/deviceid/DeviceId;->getNewDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1427
    :cond_3
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/nubia/reyun/utils/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 1428
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/utils/DeviceId;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNewImei()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1447
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->newImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/nubia/reyun/deviceid/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 1449
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/deviceid/DeviceId;->getIMEIs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImeis:Ljava/lang/String;

    .line 1450
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nubia/reyun/deviceid/DeviceId;->getImei(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->newImei:Ljava/lang/String;

    .line 1451
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/deviceid/DeviceId;->getMEIDs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mEids:Ljava/lang/String;

    .line 1452
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->newImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/nubia/reyun/utils/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 1454
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/utils/DeviceId;->getIMEIs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImeis:Ljava/lang/String;

    .line 1455
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/utils/DeviceId;->getImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->newImei:Ljava/lang/String;

    .line 1456
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/utils/DeviceId;->getMEIDs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mEids:Ljava/lang/String;

    .line 1459
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->newImei:Ljava/lang/String;

    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nubia/reyun/deviceid/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 1380
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/deviceid/DeviceId;->getALTID()Ljava/lang/String;

    move-result-object v0

    .line 1381
    return-object v0
.end method

.method public getProviderAuthority()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nubia/reyun/deviceid/DeviceId;->getProviderAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1403
    return-object v0
.end method

.method public getRemoteImeis()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1432
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImeis:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/nubia/reyun/deviceid/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 1434
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/deviceid/DeviceId;->getIMEIs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImeis:Ljava/lang/String;

    .line 1435
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nubia/reyun/deviceid/DeviceId;->getImei(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->newImei:Ljava/lang/String;

    .line 1436
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/deviceid/DeviceId;->getMEIDs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mEids:Ljava/lang/String;

    .line 1437
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImeis:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/nubia/reyun/utils/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 1439
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/utils/DeviceId;->getIMEIs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImeis:Ljava/lang/String;

    .line 1440
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/utils/DeviceId;->getImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->newImei:Ljava/lang/String;

    .line 1441
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDevice:Lcom/nubia/reyun/utils/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/utils/DeviceId;->getMEIDs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mEids:Ljava/lang/String;

    .line 1444
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mImeis:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nubia/reyun/deviceid/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 1386
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/deviceid/DeviceId;->getUDID()Ljava/lang/String;

    move-result-object v0

    .line 1387
    return-object v0
.end method

.method public getVaid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nubia/reyun/deviceid/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 1392
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mDid:Lcom/nubia/reyun/deviceid/DeviceId;

    invoke-virtual {v0}, Lcom/nubia/reyun/deviceid/DeviceId;->getRemoteRNDID()Ljava/lang/String;

    move-result-object v0

    .line 1393
    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mVersionName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v0

    .line 1532
    const-string v1, "unknown"

    .line 1531
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mVersionName:Ljava/lang/String;

    .line 1533
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->mVersionName:Ljava/lang/String;

    return-object v0
.end method
