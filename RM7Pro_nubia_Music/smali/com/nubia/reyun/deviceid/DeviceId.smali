.class public Lcom/nubia/reyun/deviceid/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/reyun/deviceid/DeviceId$IdChangedListener;
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

.field private mIdCache:Lcom/nubia/reyun/deviceid/IdCache;

.field private mIdPolicy:I

.field private mListener:Lcom/nubia/reyun/deviceid/DeviceId$IdChangedListener;

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

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/nubia/reyun/deviceid/IdCache;

    invoke-direct {v0}, Lcom/nubia/reyun/deviceid/IdCache;-><init>()V

    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIdCache:Lcom/nubia/reyun/deviceid/IdCache;

    .line 72
    const-string v0, "device_ids_cache"

    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mCacheName:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    .line 84
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 94
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    .line 96
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    .line 104
    iput p2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIdPolicy:I

    .line 105
    return-void
.end method

.method private generateDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 446
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/nubia/reyun/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 447
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 481
    :cond_0
    :goto_0
    return-object v0

    .line 450
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/nubia/reyun/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 451
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    goto :goto_0

    .line 454
    :cond_2
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/nubia/reyun/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 456
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/nubia/reyun/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v2

    .line 457
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/nubia/reyun/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    .line 458
    :goto_1
    iget-object v3, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 459
    iget-object v3, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 460
    if-eqz v1, :cond_3

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    :cond_3
    if-eqz v2, :cond_0

    invoke-static {v0, v4}, Lcom/nubia/reyun/deviceid/IdCodecer;->sha256(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 457
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 465
    :cond_5
    iget-object v3, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 466
    iget-object v3, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 467
    if-eqz v1, :cond_6

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    :cond_6
    if-eqz v2, :cond_0

    invoke-static {v0, v4}, Lcom/nubia/reyun/deviceid/IdCodecer;->sha256(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 474
    :cond_7
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 475
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    goto/16 :goto_0

    .line 478
    :cond_8
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 479
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    goto/16 :goto_0

    .line 481
    :cond_9
    const-string v0, "00000000"

    goto/16 :goto_0
.end method

.method private hasPolicy(I)Z
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIdPolicy:I

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
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 485
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 486
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 487
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 490
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    .line 491
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    .line 493
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "device_ids_imeis"

    aput-object v1, v0, v5

    const-string v1, "device_ids_meids"

    aput-object v1, v0, v4

    const-string v1, "device_ids_serial"

    aput-object v1, v0, v6

    const-string v1, "device_ids_udid"

    aput-object v1, v0, v7

    .line 494
    const-string v1, "device_ids_grndid"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "device_ids_lrndid"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "device_ids_did"

    aput-object v2, v0, v1

    .line 495
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 496
    const/16 v2, 0x80

    invoke-direct {p0, v2}, Lcom/nubia/reyun/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 497
    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIdCache:Lcom/nubia/reyun/deviceid/IdCache;

    iget-object v3, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mCacheName:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/nubia/reyun/deviceid/IdCache;->loadFromFile(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 501
    :goto_0
    aget-object v0, v1, v5

    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-static {v0, v2, v4}, Lcom/nubia/reyun/deviceid/IdCodecer;->unserialize(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 502
    aget-object v0, v1, v4

    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-static {v0, v2, v4}, Lcom/nubia/reyun/deviceid/IdCodecer;->unserialize(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 504
    aget-object v0, v1, v6

    .line 505
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 509
    :cond_0
    aget-object v0, v1, v7

    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    .line 511
    aget-object v0, v1, v8

    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 513
    const/4 v0, 0x5

    aget-object v0, v1, v0

    .line 514
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 515
    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    .line 518
    :cond_1
    const/4 v0, 0x6

    aget-object v0, v1, v0

    .line 519
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 520
    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    .line 522
    :cond_2
    return-void

    .line 499
    :cond_3
    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIdCache:Lcom/nubia/reyun/deviceid/IdCache;

    iget-object v3, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mCacheName:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/nubia/reyun/deviceid/IdCache;->loadFromSP(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private save(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 525
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "device_ids_meids"

    aput-object v1, v0, v3

    const-string v1, "device_ids_serial"

    aput-object v1, v0, v4

    const-string v1, "device_ids_udid"

    aput-object v1, v0, v5

    .line 526
    const-string v1, "device_ids_grndid"

    aput-object v1, v0, v6

    const-string v1, "device_ids_lrndid"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "device_ids_did"

    aput-object v2, v0, v1

    .line 527
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    .line 528
    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/nubia/reyun/deviceid/IdCodecer;->serialize(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 529
    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 531
    const/16 v2, 0x80

    invoke-direct {p0, v2}, Lcom/nubia/reyun/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIdCache:Lcom/nubia/reyun/deviceid/IdCache;

    iget-object v3, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mCacheName:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/nubia/reyun/deviceid/IdCache;->saveToFile(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIdCache:Lcom/nubia/reyun/deviceid/IdCache;

    iget-object v3, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mCacheName:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/nubia/reyun/deviceid/IdCache;->saveToSP(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateFromDevice(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 426
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/nubia/reyun/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-static {p1, v0, v1}, Lcom/nubia/reyun/deviceid/HwId;->getTelephonyIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 428
    invoke-static {}, Lcom/nubia/reyun/deviceid/HwId;->getSerial()Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 435
    :cond_0
    const-string v0, "00000000"

    iget-object v1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    invoke-virtual {p0}, Lcom/nubia/reyun/deviceid/DeviceId;->getMobileIds()Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "00000000"

    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 438
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 440
    :cond_1
    invoke-static {v0}, Lcom/nubia/reyun/deviceid/SwId;->generateRandomId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    .line 442
    :cond_2
    return-void
.end method

.method private updateFromRemote(Landroid/content/Context;)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 310
    .line 312
    const-string v0, "DeviceId"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mRemoteProviderUri:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    move v8, v9

    move-object v7, v6

    .line 315
    :goto_0
    if-lt v8, v12, :cond_3

    .line 361
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_9

    .line 362
    :cond_1
    const-string v0, "DeviceId"

    const-string v1, "cursor is null:"

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_2
    :goto_2
    return-void

    .line 317
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_6

    .line 321
    const-string v0, "DeviceId"

    const-string v1, "resolveContentProvider return"

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 345
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 346
    :goto_3
    const-string v2, "DeviceId"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get remote ids "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    .line 348
    :cond_4
    :goto_4
    if-nez v7, :cond_0

    .line 353
    if-ge v8, v11, :cond_5

    .line 355
    const-wide/16 v0, 0xa

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 315
    :cond_5
    :goto_5
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 324
    :cond_6
    :try_start_2
    const-string v0, "DeviceId"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Build.VERSION.SDK_INT:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_8

    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 328
    const-string v2, "DeviceId"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cpc:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 329
    if-eqz v0, :cond_4

    .line 331
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_3
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    .line 335
    :goto_6
    :try_start_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_7

    .line 336
    instance-of v2, v0, Ljava/lang/AutoCloseable;

    if-eqz v2, :cond_7

    .line 337
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v7, v1

    .line 338
    goto :goto_4

    .line 332
    :catch_1
    move-exception v1

    .line 333
    :try_start_5
    const-string v2, "DeviceId"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to query for remote ids "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v1, v7

    goto :goto_6

    .line 339
    :cond_7
    :try_start_6
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object v7, v1

    .line 342
    goto :goto_4

    .line 343
    :cond_8
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v1

    move-object v7, v1

    .line 345
    goto/16 :goto_4

    .line 365
    :cond_9
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "device_ids_imeis"

    aput-object v1, v0, v9

    const-string v1, "device_ids_meids"

    aput-object v1, v0, v10

    const-string v1, "device_ids_serial"

    aput-object v1, v0, v11

    const-string v1, "device_ids_udid"

    aput-object v1, v0, v12

    const/4 v1, 0x4

    .line 366
    const-string v2, "device_ids_grndid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "device_ids_altid"

    aput-object v2, v0, v1

    .line 367
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 368
    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIdCache:Lcom/nubia/reyun/deviceid/IdCache;

    invoke-virtual {v2, v7, v0, v1, v10}, Lcom/nubia/reyun/deviceid/IdCache;->loadFromCursor(Landroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;Z)Z

    .line 369
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/nubia/reyun/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 371
    aget-object v0, v1, v9

    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-static {v0, v2, v10}, Lcom/nubia/reyun/deviceid/IdCodecer;->unserialize(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 372
    aget-object v0, v1, v10

    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-static {v0, v2, v10}, Lcom/nubia/reyun/deviceid/IdCodecer;->unserialize(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 374
    aget-object v0, v1, v11

    .line 375
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 376
    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 380
    :cond_a
    aget-object v0, v1, v12

    .line 381
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 382
    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    .line 385
    :cond_b
    const/4 v0, 0x4

    aget-object v0, v1, v0

    .line 386
    const-string v2, "DeviceId"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "grndid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {v0}, Lcom/nubia/reyun/deviceid/IdCodecer;->allZeros(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v0, v6

    .line 391
    :cond_c
    const-string v2, "DeviceId"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "grndid2:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v2, "DeviceId"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mRemoteRNDID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-direct {p0, v10}, Lcom/nubia/reyun/deviceid/DeviceId;->hasPolicy(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 398
    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 399
    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 400
    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 402
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mListener:Lcom/nubia/reyun/deviceid/DeviceId$IdChangedListener;

    if-eqz v0, :cond_d

    .line 403
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mListener:Lcom/nubia/reyun/deviceid/DeviceId$IdChangedListener;

    iget-object v3, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v10}, Lcom/nubia/reyun/deviceid/DeviceId$IdChangedListener;->onIdChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 419
    :cond_d
    :goto_7
    const-string v0, "DeviceId"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mRemoteRNDID2:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/4 v0, 0x5

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mALTID:Ljava/lang/String;

    goto/16 :goto_2

    .line 410
    :cond_e
    const-string v2, "DeviceId"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mLocalRNDID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "00000000"

    iget-object v3, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 412
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 413
    iput-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mListener:Lcom/nubia/reyun/deviceid/DeviceId$IdChangedListener;

    if-eqz v0, :cond_d

    .line 415
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mListener:Lcom/nubia/reyun/deviceid/DeviceId$IdChangedListener;

    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-interface {v0, v6, v2, v10}, Lcom/nubia/reyun/deviceid/DeviceId$IdChangedListener;->onIdChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_7

    .line 356
    :catch_2
    move-exception v0

    goto/16 :goto_5

    .line 345
    :catch_3
    move-exception v0

    goto/16 :goto_3
.end method


# virtual methods
.method public enableSPMultiProcess(Z)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIdCache:Lcom/nubia/reyun/deviceid/IdCache;

    invoke-virtual {v0, p1}, Lcom/nubia/reyun/deviceid/IdCache;->enableSPMultiProcess(Z)V

    .line 122
    return-void
.end method

.method public getALTID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mALTID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getIMEIs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/nubia/reyun/deviceid/IdCodecer;->serialize(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImei(Z)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lcom/nubia/reyun/deviceid/IdCodecer;->sha256(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getLocalRNDID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    return-object v0
.end method

.method public getMEIDs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/nubia/reyun/deviceid/IdCodecer;->serialize(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMeid(Z)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lcom/nubia/reyun/deviceid/IdCodecer;->sha256(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getMobileId(Z)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lcom/nubia/reyun/deviceid/IdCodecer;->sha256(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_0
    :goto_0
    return-object v0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lcom/nubia/reyun/deviceid/IdCodecer;->sha256(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 184
    goto :goto_0
.end method

.method public getMobileIds()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 190
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 192
    iget-object v1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 193
    invoke-static {v0}, Lcom/nubia/reyun/deviceid/IdCodecer;->serialize(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNewDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 543
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 544
    if-lez v3, :cond_0

    move v2, v1

    .line 545
    :goto_0
    if-lt v2, v3, :cond_2

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 556
    if-lez v2, :cond_1

    move v0, v1

    .line 557
    :goto_1
    if-lt v0, v2, :cond_5

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "00000000"

    iget-object v1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 568
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 573
    :goto_2
    return-object v0

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 547
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "00000000"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 548
    iget-object v1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "00000000"

    iget-object v3, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 549
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 551
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 545
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 558
    :cond_5
    const-string v1, "00000000"

    iget-object v3, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 560
    const-string v1, "00000000"

    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 561
    iget-object v1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 563
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 557
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 570
    :cond_8
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "00000000"

    iget-object v1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 571
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    goto/16 :goto_2

    .line 573
    :cond_9
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public getProviderAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getRemoteRNDID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getUDID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    return-object v0
.end method

.method public hasProvider(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 293
    iget-object v1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 296
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 298
    :cond_0
    return v0
.end method

.method public refresh(Landroid/content/Context;Z)V
    .locals 8

    .prologue
    .line 250
    if-eqz p1, :cond_5

    .line 252
    if-eqz p2, :cond_0

    .line 253
    invoke-direct {p0, p1}, Lcom/nubia/reyun/deviceid/DeviceId;->load(Landroid/content/Context;)V

    .line 256
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 258
    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 259
    iget-object v3, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    .line 260
    iget-object v4, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 261
    iget-object v5, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    .line 262
    iget-object v6, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    .line 264
    invoke-direct {p0, p1}, Lcom/nubia/reyun/deviceid/DeviceId;->updateFromRemote(Landroid/content/Context;)V

    .line 266
    invoke-direct {p0, p1}, Lcom/nubia/reyun/deviceid/DeviceId;->updateFromDevice(Landroid/content/Context;)V

    .line 268
    iget-object v7, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 269
    iget-object v7, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 271
    :cond_1
    iget-object v7, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 272
    iget-object v7, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 275
    :cond_2
    invoke-direct {p0}, Lcom/nubia/reyun/deviceid/DeviceId;->generateDeviceId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    .line 277
    iget-object v7, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 283
    :cond_3
    invoke-direct {p0, p1}, Lcom/nubia/reyun/deviceid/DeviceId;->save(Landroid/content/Context;)V

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mListener:Lcom/nubia/reyun/deviceid/DeviceId$IdChangedListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 287
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mListener:Lcom/nubia/reyun/deviceid/DeviceId$IdChangedListener;

    iget-object v1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v6, v1, v2}, Lcom/nubia/reyun/deviceid/DeviceId$IdChangedListener;->onIdChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 290
    :cond_5
    return-void
.end method

.method public refreshWithCacheLock(Landroid/content/Context;ZZ)V
    .locals 3

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 232
    const-class v1, Landroid/content/Context;

    monitor-enter v1

    .line 233
    if-eqz p3, :cond_1

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIdCache:Lcom/nubia/reyun/deviceid/IdCache;

    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mCacheName:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/nubia/reyun/deviceid/IdCache;->obtainFileLock(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/nubia/reyun/deviceid/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 239
    iget-object v2, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIdCache:Lcom/nubia/reyun/deviceid/IdCache;

    invoke-virtual {v2, v0}, Lcom/nubia/reyun/deviceid/IdCache;->releaseFileLock(Ljava/lang/Object;)V

    .line 232
    :goto_0
    monitor-exit v1

    .line 245
    :cond_0
    return-void

    .line 241
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/nubia/reyun/deviceid/DeviceId;->refresh(Landroid/content/Context;Z)V

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCacheName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mCacheName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setFlockTimeout(J)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIdCache:Lcom/nubia/reyun/deviceid/IdCache;

    invoke-virtual {v0, p1, p2}, Lcom/nubia/reyun/deviceid/IdCache;->setFlockTimeout(J)V

    .line 127
    return-void
.end method

.method public setIdChangedListener(Lcom/nubia/reyun/deviceid/DeviceId$IdChangedListener;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mListener:Lcom/nubia/reyun/deviceid/DeviceId$IdChangedListener;

    .line 131
    return-void
.end method

.method public setSPCommitNow(Z)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nubia/reyun/deviceid/DeviceId;->mIdCache:Lcom/nubia/reyun/deviceid/IdCache;

    invoke-virtual {v0, p1}, Lcom/nubia/reyun/deviceid/IdCache;->setSPCommitNow(Z)V

    .line 117
    return-void
.end method
