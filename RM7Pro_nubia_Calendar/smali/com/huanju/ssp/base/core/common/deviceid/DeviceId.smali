.class public Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/core/common/deviceid/DeviceId$IdChangedListener;
    }
.end annotation


# static fields
.field public static final APPID_PROVIDER:Ljava/lang/String; = "content://cn.nubia.provider.deviceid.dataid/aaid"

.field public static final DATAID_PROVIDER:Ljava/lang/String; = "content://cn.nubia.provider.deviceid.dataid/oaid"

.field public static final DEVICEID_PROVIDER:Ljava/lang/String; = "content://cn.nubia.provider.DeviceId"

.field public static final GRNDID_PROVIDER:Ljava/lang/String; = "content://cn.nubia.provider.deviceid.dataid/grndid"

.field static final KEY_ALTID:Ljava/lang/String; = "device_ids_altid"

.field private static final KEY_DID:Ljava/lang/String; = "device_ids_did"

.field static final KEY_GRNDID:Ljava/lang/String; = "device_ids_grndid"

.field static final KEY_IMEIS:Ljava/lang/String; = "device_ids_imeis"

.field private static final KEY_LRNDID:Ljava/lang/String; = "device_ids_lrndid"

.field static final KEY_MEIDS:Ljava/lang/String; = "device_ids_meids"

.field static final KEY_SERIAL:Ljava/lang/String; = "device_ids_serial"

.field static final KEY_UDID:Ljava/lang/String; = "device_ids_udid"

.field public static final POLICY_CACHE_USE_FILE:I = 0x80

.field public static final POLICY_DONT_COLLECT_MID:I = 0x40

.field public static final POLICY_FORCE_UPDATE_REMOTE_RNDID:I = 0x1

.field public static final POLICY_HASH_MID:I = 0x10

.field public static final POLICY_NO_SERIAL:I = 0x20

.field public static final POLICY_REMOTE_GRNDID_FIRST:I = 0x8

.field public static final POLICY_USE_MID:I = 0x4

.field public static final POLICY_USE_UDID:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DeviceId"

.field public static final VENDORID_PROVIDER:Ljava/lang/String; = "content://cn.nubia.provider.deviceid.dataid/vaid"


# instance fields
.field private mALTID:Ljava/lang/String;

.field private mCacheName:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mIMEIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIdCache:Lcom/huanju/ssp/base/core/common/deviceid/IdCache;

.field private mIdPolicy:I

.field private mListener:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId$IdChangedListener;

.field private mLocalRNDID:Ljava/lang/String;

.field private mMEIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteProviderUri:Ljava/lang/String;

.field private mRemoteRNDID:Ljava/lang/String;

.field private mSerial:Ljava/lang/String;

.field private mUDID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "remoteProviderUri"    # Ljava/lang/String;
    .param p2, "idPolicy"    # I

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIdCache:Lcom/huanju/ssp/base/core/common/deviceid/IdCache;

    .line 73
    const-string v0, "device_ids_cache"

    iput-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mCacheName:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    .line 85
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 95
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    .line 97
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    .line 105
    iput p2, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIdPolicy:I

    .line 106
    return-void
.end method

.method private generateDeviceId()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 415
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 416
    iget-object v1, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 450
    :cond_0
    :goto_0
    return-object v1

    .line 419
    :cond_1
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 420
    iget-object v1, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    goto :goto_0

    .line 423
    :cond_2
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 425
    const/16 v4, 0x10

    invoke-direct {p0, v4}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v2

    .line 426
    .local v2, "hashMID":Z
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v0, 0x1

    .line 427
    .local v0, "appendSerial":Z
    :goto_1
    iget-object v4, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 428
    iget-object v4, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 429
    .local v1, "did":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    :cond_3
    if-eqz v2, :cond_0

    invoke-static {v1, v5}, Lcom/huanju/ssp/base/core/common/deviceid/IdCodecer;->sha256(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v0    # "appendSerial":Z
    .end local v1    # "did":Ljava/lang/String;
    :cond_4
    move v0, v3

    .line 426
    goto :goto_1

    .line 434
    .restart local v0    # "appendSerial":Z
    :cond_5
    iget-object v4, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 435
    iget-object v4, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 436
    .restart local v1    # "did":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    :cond_6
    if-eqz v2, :cond_0

    invoke-static {v1, v5}, Lcom/huanju/ssp/base/core/common/deviceid/IdCodecer;->sha256(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 443
    .end local v0    # "appendSerial":Z
    .end local v1    # "did":Ljava/lang/String;
    .end local v2    # "hashMID":Z
    :cond_7
    iget-object v3, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 444
    iget-object v1, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    goto/16 :goto_0

    .line 447
    :cond_8
    iget-object v3, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 448
    iget-object v1, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    goto/16 :goto_0

    .line 450
    :cond_9
    const-string v1, "00000000"

    goto/16 :goto_0
.end method

.method private hasPolicy(I)Z
    .locals 1
    .param p1, "policy"    # I

    .prologue
    .line 508
    iget v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIdPolicy:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private load(Landroid/content/Context;)V
    .locals 12
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 454
    iget-object v5, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 455
    iget-object v5, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 456
    const-string v5, "00000000"

    iput-object v5, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 457
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    .line 458
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 459
    const-string v5, "00000000"

    iput-object v5, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    .line 460
    const-string v5, "00000000"

    iput-object v5, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    .line 462
    const/4 v5, 0x7

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "device_ids_imeis"

    aput-object v5, v1, v8

    const-string v5, "device_ids_meids"

    aput-object v5, v1, v7

    const-string v5, "device_ids_serial"

    aput-object v5, v1, v9

    const-string v5, "device_ids_udid"

    aput-object v5, v1, v10

    const-string v5, "device_ids_grndid"

    aput-object v5, v1, v11

    const/4 v5, 0x5

    const-string v6, "device_ids_lrndid"

    aput-object v6, v1, v5

    const/4 v5, 0x6

    const-string v6, "device_ids_did"

    aput-object v6, v1, v5

    .line 464
    .local v1, "keys":[Ljava/lang/String;
    array-length v5, v1

    new-array v4, v5, [Ljava/lang/String;

    .line 465
    .local v4, "values":[Ljava/lang/String;
    const/16 v5, 0x80

    invoke-direct {p0, v5}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 466
    iget-object v5, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIdCache:Lcom/huanju/ssp/base/core/common/deviceid/IdCache;

    iget-object v6, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mCacheName:Ljava/lang/String;

    invoke-virtual {v5, p1, v6, v1, v4}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->loadFromFile(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 470
    :goto_0
    aget-object v5, v4, v8

    iget-object v6, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-static {v5, v6, v7}, Lcom/huanju/ssp/base/core/common/deviceid/IdCodecer;->unserialize(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 471
    aget-object v5, v4, v7

    iget-object v6, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-static {v5, v6, v7}, Lcom/huanju/ssp/base/core/common/deviceid/IdCodecer;->unserialize(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 473
    aget-object v3, v4, v9

    .line 474
    .local v3, "serial":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 475
    iput-object v3, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 478
    :cond_0
    aget-object v5, v4, v10

    iput-object v5, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    .line 480
    aget-object v5, v4, v11

    iput-object v5, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 482
    const/4 v5, 0x5

    aget-object v2, v4, v5

    .line 483
    .local v2, "lrndid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 484
    iput-object v2, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    .line 487
    :cond_1
    const/4 v5, 0x6

    aget-object v0, v4, v5

    .line 488
    .local v0, "did":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 489
    iput-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    .line 491
    :cond_2
    return-void

    .line 468
    .end local v0    # "did":Ljava/lang/String;
    .end local v2    # "lrndid":Ljava/lang/String;
    .end local v3    # "serial":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIdCache:Lcom/huanju/ssp/base/core/common/deviceid/IdCache;

    iget-object v6, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mCacheName:Ljava/lang/String;

    invoke-virtual {v5, p1, v6, v1, v4}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->loadFromSP(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private save(Landroid/content/Context;)V
    .locals 9
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 494
    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "device_ids_meids"

    aput-object v2, v0, v4

    const-string v2, "device_ids_serial"

    aput-object v2, v0, v5

    const-string v2, "device_ids_udid"

    aput-object v2, v0, v6

    const-string v2, "device_ids_grndid"

    aput-object v2, v0, v7

    const-string v2, "device_ids_lrndid"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "device_ids_did"

    aput-object v3, v0, v2

    .line 496
    .local v0, "keys":[Ljava/lang/String;
    const/4 v2, 0x6

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    .line 497
    invoke-static {v2}, Lcom/huanju/ssp/base/core/common/deviceid/IdCodecer;->serialize(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 500
    .local v1, "values":[Ljava/lang/String;
    const/16 v2, 0x80

    invoke-direct {p0, v2}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 501
    iget-object v2, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIdCache:Lcom/huanju/ssp/base/core/common/deviceid/IdCache;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mCacheName:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->saveToFile(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v2, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIdCache:Lcom/huanju/ssp/base/core/common/deviceid/IdCache;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mCacheName:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->saveToSP(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateFromDevice(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 395
    const/16 v2, 0x40

    invoke-direct {p0, v2}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-static {p1, v2, v3}, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->getTelephonyIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 397
    invoke-static {}, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->getSerial()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "serial":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 400
    iput-object v1, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 404
    .end local v1    # "serial":Ljava/lang/String;
    :cond_0
    const-string v2, "00000000"

    iget-object v3, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 405
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->getMobileIds()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "scope":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "00000000"

    iget-object v3, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 407
    iget-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 409
    :cond_1
    invoke-static {v0}, Lcom/huanju/ssp/base/core/common/deviceid/SwId;->generateRandomId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    .line 411
    .end local v0    # "scope":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private updateFromRemote(Landroid/content/Context;)V
    .locals 22
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 276
    const/4 v10, 0x3

    .line 277
    .local v10, "RETRY_COUNT":I
    const-wide/16 v12, 0xa

    .line 278
    .local v12, "RETRY_INTERVAL_MS":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRemoteProviderUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    .line 280
    const/4 v11, 0x0

    .line 281
    .local v11, "cursor":Landroid/database/Cursor;
    const/16 v18, 0x0

    .local v18, "n":I
    :goto_0
    const/4 v4, 0x3

    move/from16 v0, v18

    if-ge v0, v4, :cond_0

    .line 283
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 284
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_3

    .line 287
    const-string v4, "resolveContentProvider return"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 327
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_8

    .line 328
    :cond_1
    const-string v4, "cursor is null:"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 392
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v18    # "n":I
    :cond_2
    :goto_1
    return-void

    .line 290
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "n":I
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build.VERSION.SDK_INT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 291
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_7

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 294
    .local v2, "cpc":Landroid/content/ContentProviderClient;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    if-eqz v2, :cond_4

    .line 297
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    .line 301
    :goto_2
    :try_start_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_6

    instance-of v4, v2, Ljava/lang/AutoCloseable;

    if-eqz v4, :cond_6

    .line 303
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 314
    .end local v2    # "cpc":Landroid/content/ContentProviderClient;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_3
    if-nez v11, :cond_0

    .line 319
    const/4 v4, 0x2

    move/from16 v0, v18

    if-ge v0, v4, :cond_5

    .line 321
    const-wide/16 v4, 0xa

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 281
    :cond_5
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 298
    .restart local v2    # "cpc":Landroid/content/ContentProviderClient;
    .restart local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v14

    .line 299
    .local v14, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to query for remote ids "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 311
    .end local v2    # "cpc":Landroid/content/ContentProviderClient;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v14

    .line 312
    .restart local v14    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get remote ids "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 305
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v2    # "cpc":Landroid/content/ContentProviderClient;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_6
    :try_start_6
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_3

    .line 309
    .end local v2    # "cpc":Landroid/content/ContentProviderClient;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v11

    goto :goto_3

    .line 331
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_8
    const/4 v4, 0x6

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v4, 0x0

    const-string v5, "device_ids_imeis"

    aput-object v5, v16, v4

    const/4 v4, 0x1

    const-string v5, "device_ids_meids"

    aput-object v5, v16, v4

    const/4 v4, 0x2

    const-string v5, "device_ids_serial"

    aput-object v5, v16, v4

    const/4 v4, 0x3

    const-string v5, "device_ids_udid"

    aput-object v5, v16, v4

    const/4 v4, 0x4

    const-string v5, "device_ids_grndid"

    aput-object v5, v16, v4

    const/4 v4, 0x5

    const-string v5, "device_ids_altid"

    aput-object v5, v16, v4

    .line 333
    .local v16, "keys":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v4, v0

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 334
    .local v21, "values":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIdCache:Lcom/huanju/ssp/base/core/common/deviceid/IdCache;

    const/4 v5, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v4, v11, v0, v1, v5}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->loadFromCursor(Landroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;Z)Z

    .line 335
    const/16 v4, 0x40

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 337
    const/4 v4, 0x0

    aget-object v4, v21, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/huanju/ssp/base/core/common/deviceid/IdCodecer;->unserialize(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIMEIs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v21, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 339
    const/4 v4, 0x1

    aget-object v4, v21, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/huanju/ssp/base/core/common/deviceid/IdCodecer;->unserialize(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMEIDs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v21, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 342
    const/4 v4, 0x2

    aget-object v19, v21, v4

    .line 343
    .local v19, "serial":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 344
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 348
    .end local v19    # "serial":Ljava/lang/String;
    :cond_9
    const/4 v4, 0x3

    aget-object v20, v21, v4

    .line 349
    .local v20, "udid":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 350
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    .line 353
    :cond_a
    const/4 v4, 0x4

    aget-object v15, v21, v4

    .line 354
    .local v15, "grndid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "grndid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 356
    invoke-static {v15}, Lcom/huanju/ssp/base/core/common/deviceid/IdCodecer;->allZeros(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 357
    const/4 v15, 0x0

    .line 359
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "grndid2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRemoteRNDID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 361
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 368
    .local v17, "lastGRNDID":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mListener:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId$IdChangedListener;

    if-eqz v4, :cond_c

    .line 371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mListener:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId$IdChangedListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-interface {v4, v0, v5, v6}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId$IdChangedListener;->onIdChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 387
    .end local v17    # "lastGRNDID":Ljava/lang/String;
    :cond_c
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRemoteRNDID2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 389
    const/4 v4, 0x5

    aget-object v4, v21, v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mALTID:Ljava/lang/String;

    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mALTID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mALTID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 378
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLocalRNDID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "00000000"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 380
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 381
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mListener:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId$IdChangedListener;

    if-eqz v4, :cond_c

    .line 383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mListener:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId$IdChangedListener;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v4, v5, v6, v7}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId$IdChangedListener;->onIdChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 322
    .end local v15    # "grndid":Ljava/lang/String;
    .end local v16    # "keys":[Ljava/lang/String;
    .end local v20    # "udid":Ljava/lang/String;
    .end local v21    # "values":[Ljava/lang/String;
    :catch_2
    move-exception v4

    goto/16 :goto_4
.end method


# virtual methods
.method public enableSPMultiProcess(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 122
    iget-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIdCache:Lcom/huanju/ssp/base/core/common/deviceid/IdCache;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->enableSPMultiProcess(Z)V

    .line 123
    return-void
.end method

.method public getALTID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mALTID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getIMEIs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/common/deviceid/IdCodecer;->serialize(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalRNDID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    return-object v0
.end method

.method public getMEIDs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/common/deviceid/IdCodecer;->serialize(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMobileId(Z)Ljava/lang/String;
    .locals 4
    .param p1, "hashMID"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 159
    iget-object v2, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    .local v0, "did":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/core/common/deviceid/IdCodecer;->sha256(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 167
    .end local v0    # "did":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    .restart local v0    # "did":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/core/common/deviceid/IdCodecer;->sha256(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .end local v0    # "did":Ljava/lang/String;
    :cond_2
    move-object v0, v1

    .line 167
    goto :goto_0
.end method

.method public getMobileIds()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 173
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 175
    iget-object v1, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    invoke-static {v0}, Lcom/huanju/ssp/base/core/common/deviceid/IdCodecer;->serialize(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .end local v0    # "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRemoteRNDID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getUDID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    return-object v0
.end method

.method public refresh(Landroid/content/Context;Z)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "reload"    # Z

    .prologue
    .line 233
    if-eqz p1, :cond_5

    .line 235
    if-eqz p2, :cond_0

    .line 236
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->load(Landroid/content/Context;)V

    .line 239
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 240
    .local v2, "oldIMEIs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 241
    .local v4, "oldMEIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 242
    .local v5, "oldSerial":Ljava/lang/String;
    iget-object v6, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    .line 243
    .local v6, "oldUDID":Ljava/lang/String;
    iget-object v1, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 244
    .local v1, "oldGRNDID":Ljava/lang/String;
    iget-object v3, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    .line 245
    .local v3, "oldLRNDID":Ljava/lang/String;
    iget-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    .line 247
    .local v0, "oldDID":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->updateFromRemote(Landroid/content/Context;)V

    .line 249
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->updateFromDevice(Landroid/content/Context;)V

    .line 251
    iget-object v7, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 252
    iget-object v7, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 254
    :cond_1
    iget-object v7, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 255
    iget-object v7, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 258
    :cond_2
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->generateDeviceId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    .line 260
    iget-object v7, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 261
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    .line 262
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 263
    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    .line 264
    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    .line 265
    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 266
    :cond_3
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->save(Landroid/content/Context;)V

    .line 269
    :cond_4
    iget-object v7, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mListener:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId$IdChangedListener;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 270
    iget-object v7, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mListener:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId$IdChangedListener;

    iget-object v8, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v7, v0, v8, v9}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId$IdChangedListener;->onIdChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 273
    .end local v0    # "oldDID":Ljava/lang/String;
    .end local v1    # "oldGRNDID":Ljava/lang/String;
    .end local v2    # "oldIMEIs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "oldLRNDID":Ljava/lang/String;
    .end local v4    # "oldMEIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "oldSerial":Ljava/lang/String;
    .end local v6    # "oldUDID":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public refreshWithCacheLock(Landroid/content/Context;ZZ)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "reload"    # Z
    .param p3, "multiProcess"    # Z

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 215
    const-class v2, Landroid/content/Context;

    monitor-enter v2

    .line 216
    if-eqz p3, :cond_1

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIdCache:Lcom/huanju/ssp/base/core/common/deviceid/IdCache;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mCacheName:Ljava/lang/String;

    invoke-virtual {v1, p1, v3}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->obtainFileLock(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    .local v0, "flock":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 222
    iget-object v1, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIdCache:Lcom/huanju/ssp/base/core/common/deviceid/IdCache;

    invoke-virtual {v1, v0}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->releaseFileLock(Ljava/lang/Object;)V

    .line 226
    .end local v0    # "flock":Ljava/lang/Object;
    :goto_0
    monitor-exit v2

    .line 228
    :cond_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->refresh(Landroid/content/Context;Z)V

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCacheName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mCacheName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setFlockTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 127
    iget-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIdCache:Lcom/huanju/ssp/base/core/common/deviceid/IdCache;

    invoke-virtual {v0, p1, p2}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->setFlockTimeout(J)V

    .line 128
    return-void
.end method

.method public setIdChangedListener(Lcom/huanju/ssp/base/core/common/deviceid/DeviceId$IdChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huanju/ssp/base/core/common/deviceid/DeviceId$IdChangedListener;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mListener:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId$IdChangedListener;

    .line 132
    return-void
.end method

.method public setSPCommitNow(Z)V
    .locals 1
    .param p1, "commitNow"    # Z

    .prologue
    .line 117
    iget-object v0, p0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->mIdCache:Lcom/huanju/ssp/base/core/common/deviceid/IdCache;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/base/core/common/deviceid/IdCache;->setSPCommitNow(Z)V

    .line 118
    return-void
.end method
