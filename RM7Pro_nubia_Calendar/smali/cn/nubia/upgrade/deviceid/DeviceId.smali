.class public Lcn/nubia/upgrade/deviceid/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/deviceid/DeviceId$IdChangedListener;
    }
.end annotation


# static fields
.field public static final DATAID_PROVIDER:Ljava/lang/String; = "content://cn.nubia.provider.deviceid.dataid/oaid"

.field public static final DEVICEID_PROVIDER:Ljava/lang/String; = "content://cn.nubia.provider.DeviceId"

.field public static final GRNDID_PROVIDER:Ljava/lang/String; = "content://cn.nubia.provider.deviceid.dataid/grndid"

.field private static final KEY_DID:Ljava/lang/String; = "device_ids_did"

.field static final KEY_GRNDID:Ljava/lang/String; = "device_ids_grndid"

.field static final KEY_IMEIS:Ljava/lang/String; = "device_ids_imeis"

.field private static final KEY_LRNDID:Ljava/lang/String; = "device_ids_lrndid"

.field static final KEY_MEIDS:Ljava/lang/String; = "device_ids_meids"

.field static final KEY_SERIAL:Ljava/lang/String; = "device_ids_serial"

.field static final KEY_UDID:Ljava/lang/String; = "device_ids_udid"

.field private static final TAG:Ljava/lang/String; = "DeviceId"


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mForceRemoteRNDID:Z

.field private mHashMID:Z

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

.field private mListener:Lcn/nubia/upgrade/deviceid/DeviceId$IdChangedListener;

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

.field private mRemoteGRNDIDFirst:Z

.field private mRemoteProviderUri:Ljava/lang/String;

.field private mRemoteRNDID:Ljava/lang/String;

.field private mSPCommitNow:Z

.field private mSPName:Ljava/lang/String;

.field private mSerial:Ljava/lang/String;

.field private mUDID:Ljava/lang/String;

.field private mUseMID:Z

.field private mUseUDID:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZZZ)V
    .locals 1
    .param p1, "remoteProviderUri"    # Ljava/lang/String;
    .param p2, "forceRemoteRNDID"    # Z
    .param p3, "useUDID"    # Z
    .param p4, "useMID"    # Z
    .param p5, "remoteGRNDIDFirst"    # Z
    .param p6, "hashMID"    # Z

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "device_ids_cache"

    iput-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSPName:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSPCommitNow:Z

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    .line 69
    const-string v0, "00000000"

    iput-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 76
    const-string v0, "00000000"

    iput-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    .line 78
    const-string v0, "00000000"

    iput-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    .line 91
    iput-boolean p2, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mForceRemoteRNDID:Z

    .line 92
    iput-boolean p3, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mUseUDID:Z

    .line 93
    iput-boolean p4, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mUseMID:Z

    .line 94
    iput-boolean p5, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteGRNDIDFirst:Z

    .line 95
    iput-boolean p6, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mHashMID:Z

    .line 96
    return-void
.end method

.method private generateDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 358
    iget-boolean v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteGRNDIDFirst:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    iget-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 385
    :cond_0
    :goto_0
    return-object v0

    .line 362
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mUseUDID:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 363
    iget-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    goto :goto_0

    .line 366
    :cond_2
    iget-boolean v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mUseMID:Z

    if-eqz v1, :cond_4

    .line 368
    iget-object v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "did":Ljava/lang/String;
    iget-boolean v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mHashMID:Z

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lcn/nubia/upgrade/deviceid/IdCodecer;->sha256(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 372
    .end local v0    # "did":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .restart local v0    # "did":Ljava/lang/String;
    iget-boolean v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mHashMID:Z

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lcn/nubia/upgrade/deviceid/IdCodecer;->sha256(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 378
    .end local v0    # "did":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 379
    iget-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    goto/16 :goto_0

    .line 382
    :cond_5
    iget-object v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 383
    iget-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    goto/16 :goto_0

    .line 385
    :cond_6
    const-string v0, "00000000"

    goto/16 :goto_0
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

    .line 389
    iget-object v5, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 390
    iget-object v5, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 391
    const-string v5, "00000000"

    iput-object v5, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 392
    const/4 v5, 0x0

    iput-object v5, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    .line 393
    const/4 v5, 0x0

    iput-object v5, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 394
    const-string v5, "00000000"

    iput-object v5, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    .line 395
    const-string v5, "00000000"

    iput-object v5, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    .line 397
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

    .line 399
    .local v1, "keys":[Ljava/lang/String;
    array-length v5, v1

    new-array v4, v5, [Ljava/lang/String;

    .line 400
    .local v4, "values":[Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSPName:Ljava/lang/String;

    invoke-static {p1, v5, v1, v4}, Lcn/nubia/upgrade/deviceid/IdCache;->load(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 401
    aget-object v5, v4, v8

    iget-object v6, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-static {v5, v6, v7}, Lcn/nubia/upgrade/deviceid/IdCodecer;->unserialize(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 402
    aget-object v5, v4, v7

    iget-object v6, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-static {v5, v6, v7}, Lcn/nubia/upgrade/deviceid/IdCodecer;->unserialize(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 404
    aget-object v3, v4, v9

    .line 405
    .local v3, "serial":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 406
    iput-object v3, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 409
    :cond_0
    aget-object v5, v4, v10

    iput-object v5, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    .line 411
    aget-object v5, v4, v11

    iput-object v5, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 413
    const/4 v5, 0x5

    aget-object v2, v4, v5

    .line 414
    .local v2, "lrndid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 415
    iput-object v2, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    .line 418
    :cond_1
    const/4 v5, 0x6

    aget-object v0, v4, v5

    .line 419
    .local v0, "did":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 420
    iput-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    .line 422
    :cond_2
    return-void
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

    .line 425
    const/4 v2, 0x7

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "device_ids_imeis"

    aput-object v2, v0, v4

    const-string v2, "device_ids_meids"

    aput-object v2, v0, v5

    const-string v2, "device_ids_serial"

    aput-object v2, v0, v6

    const-string v2, "device_ids_udid"

    aput-object v2, v0, v7

    const-string v2, "device_ids_grndid"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "device_ids_lrndid"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "device_ids_did"

    aput-object v3, v0, v2

    .line 427
    .local v0, "keys":[Ljava/lang/String;
    const/4 v2, 0x7

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    .line 428
    invoke-static {v2}, Lcn/nubia/upgrade/deviceid/IdCodecer;->serialize(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-static {v2}, Lcn/nubia/upgrade/deviceid/IdCodecer;->serialize(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    iget-object v3, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 431
    .local v1, "values":[Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSPName:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSPCommitNow:Z

    invoke-static {p1, v2, v0, v1, v3}, Lcn/nubia/upgrade/deviceid/IdCache;->save(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 432
    return-void
.end method

.method private updateFromDevice(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 340
    iget-object v2, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-static {p1, v2, v3}, Lcn/nubia/upgrade/deviceid/HwId;->getTelephonyIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 341
    invoke-static {}, Lcn/nubia/upgrade/deviceid/HwId;->getSerial()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "serial":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    iput-object v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 347
    :cond_0
    const-string v2, "00000000"

    iget-object v3, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 348
    invoke-virtual {p0}, Lcn/nubia/upgrade/deviceid/DeviceId;->getMobileIds()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "scope":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "00000000"

    iget-object v3, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 350
    iget-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 352
    :cond_1
    invoke-static {v0}, Lcn/nubia/upgrade/deviceid/SwId;->generateRandomId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    .line 354
    .end local v0    # "scope":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private updateFromRemote(Landroid/content/Context;)V
    .locals 22
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 238
    const/4 v10, 0x3

    .line 239
    .local v10, "RETRY_COUNT":I
    const-wide/16 v12, 0xa

    .line 240
    .local v12, "RETRY_INTERVAL_MS":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    .line 241
    const/4 v11, 0x0

    .line 242
    .local v11, "cursor":Landroid/database/Cursor;
    const/16 v18, 0x0

    .local v18, "n":I
    :goto_0
    const/4 v4, 0x3

    move/from16 v0, v18

    if-ge v0, v4, :cond_0

    .line 244
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 245
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    if-nez v4, :cond_2

    .line 285
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_7

    .line 337
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v18    # "n":I
    :cond_1
    :goto_1
    return-void

    .line 250
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "n":I
    :cond_2
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_6

    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 253
    .local v2, "cpc":Landroid/content/ContentProviderClient;
    if-eqz v2, :cond_3

    .line 255
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    .line 259
    :goto_2
    :try_start_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_5

    instance-of v4, v2, Ljava/lang/AutoCloseable;

    if-eqz v4, :cond_5

    .line 261
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 272
    .end local v2    # "cpc":Landroid/content/ContentProviderClient;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_3
    if-nez v11, :cond_0

    .line 277
    const/4 v4, 0x2

    move/from16 v0, v18

    if-ge v0, v4, :cond_4

    .line 279
    const-wide/16 v4, 0xa

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 242
    :cond_4
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 256
    .restart local v2    # "cpc":Landroid/content/ContentProviderClient;
    .restart local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v14

    .line 257
    .local v14, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "DeviceId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to query for remote ids "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 269
    .end local v2    # "cpc":Landroid/content/ContentProviderClient;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v14

    .line 270
    .restart local v14    # "e":Ljava/lang/Exception;
    const-string v4, "DeviceId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get remote ids "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 263
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v2    # "cpc":Landroid/content/ContentProviderClient;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_5
    :try_start_6
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_3

    .line 267
    .end local v2    # "cpc":Landroid/content/ContentProviderClient;
    :cond_6
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

    .line 288
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_7
    const/4 v4, 0x5

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

    .line 290
    .local v16, "keys":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v4, v0

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 291
    .local v21, "values":[Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v11, v0, v1, v4}, Lcn/nubia/upgrade/deviceid/IdCache;->loadFromCursor(Landroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;Z)Z

    .line 293
    const/4 v4, 0x0

    aget-object v4, v21, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/upgrade/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcn/nubia/upgrade/deviceid/IdCodecer;->unserialize(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 294
    const/4 v4, 0x1

    aget-object v4, v21, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/upgrade/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcn/nubia/upgrade/deviceid/IdCodecer;->unserialize(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 296
    const/4 v4, 0x2

    aget-object v19, v21, v4

    .line 297
    .local v19, "serial":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 298
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/upgrade/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 301
    :cond_8
    const/4 v4, 0x3

    aget-object v20, v21, v4

    .line 302
    .local v20, "udid":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 303
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/upgrade/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    .line 306
    :cond_9
    const/4 v4, 0x4

    aget-object v15, v21, v4

    .line 308
    .local v15, "grndid":Ljava/lang/String;
    invoke-static {v15}, Lcn/nubia/upgrade/deviceid/IdCodecer;->allZeros(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 309
    const/4 v15, 0x0

    .line 311
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/upgrade/deviceid/DeviceId;->mForceRemoteRNDID:Z

    if-eqz v4, :cond_b

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 318
    .local v17, "lastGRNDID":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/deviceid/DeviceId;->mListener:Lcn/nubia/upgrade/deviceid/DeviceId$IdChangedListener;

    if-eqz v4, :cond_1

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/deviceid/DeviceId;->mListener:Lcn/nubia/upgrade/deviceid/DeviceId$IdChangedListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-interface {v4, v0, v5, v6}, Lcn/nubia/upgrade/deviceid/DeviceId$IdChangedListener;->onIdChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 328
    .end local v17    # "lastGRNDID":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "00000000"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/upgrade/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 329
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 330
    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/deviceid/DeviceId;->mListener:Lcn/nubia/upgrade/deviceid/DeviceId$IdChangedListener;

    if-eqz v4, :cond_1

    .line 332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/deviceid/DeviceId;->mListener:Lcn/nubia/upgrade/deviceid/DeviceId$IdChangedListener;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v4, v5, v6, v7}, Lcn/nubia/upgrade/deviceid/DeviceId$IdChangedListener;->onIdChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 280
    .end local v15    # "grndid":Ljava/lang/String;
    .end local v16    # "keys":[Ljava/lang/String;
    .end local v19    # "serial":Ljava/lang/String;
    .end local v20    # "udid":Ljava/lang/String;
    .end local v21    # "values":[Ljava/lang/String;
    :catch_2
    move-exception v4

    goto/16 :goto_4
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getIMEIs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-static {v0}, Lcn/nubia/upgrade/deviceid/IdCodecer;->serialize(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalRNDID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    return-object v0
.end method

.method public getMEIDs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-static {v0}, Lcn/nubia/upgrade/deviceid/IdCodecer;->serialize(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 133
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

    .line 139
    iget-object v2, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 140
    iget-object v2, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    .local v0, "did":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lcn/nubia/upgrade/deviceid/IdCodecer;->sha256(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 147
    .end local v0    # "did":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 143
    :cond_1
    iget-object v2, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 144
    iget-object v2, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    .restart local v0    # "did":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lcn/nubia/upgrade/deviceid/IdCodecer;->sha256(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .end local v0    # "did":Ljava/lang/String;
    :cond_2
    move-object v0, v1

    .line 147
    goto :goto_0
.end method

.method public getMobileIds()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    iget-object v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 153
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    iget-object v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    invoke-static {v0}, Lcn/nubia/upgrade/deviceid/IdCodecer;->serialize(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 158
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
    .line 173
    iget-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getUDID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    return-object v0
.end method

.method public refresh(Landroid/content/Context;Z)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "reload"    # Z

    .prologue
    .line 195
    if-eqz p1, :cond_5

    .line 197
    if-eqz p2, :cond_0

    .line 198
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/deviceid/DeviceId;->load(Landroid/content/Context;)V

    .line 201
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v7, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 202
    .local v2, "oldIMEIs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 203
    .local v4, "oldMEIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 204
    .local v5, "oldSerial":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    .line 205
    .local v6, "oldUDID":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 206
    .local v1, "oldGRNDID":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    .line 207
    .local v3, "oldLRNDID":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    .line 209
    .local v0, "oldDID":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/deviceid/DeviceId;->updateFromRemote(Landroid/content/Context;)V

    .line 211
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/deviceid/DeviceId;->updateFromDevice(Landroid/content/Context;)V

    .line 213
    iget-object v7, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 214
    iget-object v7, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 216
    :cond_1
    iget-object v7, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 217
    iget-object v7, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 220
    :cond_2
    invoke-direct {p0}, Lcn/nubia/upgrade/deviceid/DeviceId;->generateDeviceId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    .line 222
    iget-object v7, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSerial:Ljava/lang/String;

    .line 223
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mUDID:Ljava/lang/String;

    .line 224
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mRemoteRNDID:Ljava/lang/String;

    .line 225
    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mLocalRNDID:Ljava/lang/String;

    .line 226
    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    .line 227
    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 228
    :cond_3
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/deviceid/DeviceId;->save(Landroid/content/Context;)V

    .line 231
    :cond_4
    iget-object v7, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mListener:Lcn/nubia/upgrade/deviceid/DeviceId$IdChangedListener;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 232
    iget-object v7, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mListener:Lcn/nubia/upgrade/deviceid/DeviceId$IdChangedListener;

    iget-object v8, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mDeviceId:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v7, v0, v8, v9}, Lcn/nubia/upgrade/deviceid/DeviceId$IdChangedListener;->onIdChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 235
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

.method public refreshWithSPLock(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "reload"    # Z

    .prologue
    .line 187
    const-class v1, Landroid/content/Context;

    monitor-enter v1

    .line 188
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/upgrade/deviceid/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 189
    monitor-exit v1

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIdChangedListener(Lcn/nubia/upgrade/deviceid/DeviceId$IdChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/upgrade/deviceid/DeviceId$IdChangedListener;

    .prologue
    .line 111
    iput-object p1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mListener:Lcn/nubia/upgrade/deviceid/DeviceId$IdChangedListener;

    .line 112
    return-void
.end method

.method public setSPCommitNow(Z)V
    .locals 0
    .param p1, "commitNow"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSPCommitNow:Z

    .line 108
    return-void
.end method

.method public setSPName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcn/nubia/upgrade/deviceid/DeviceId;->mSPName:Ljava/lang/String;

    .line 103
    return-void
.end method
