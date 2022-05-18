.class public Lcom/nubia/reyun/utils/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;,
        Lcom/nubia/reyun/utils/DeviceId$IdChangedListener;
    }
.end annotation


# static fields
.field public static final FAKE_ID:Ljava/lang/String; = "00000000"

.field public static final INVALID_MEID:Ljava/lang/String; = "00000000000000"

.field public static final KEY_GRNDID:Ljava/lang/String; = "device_ids_grndid"

.field public static final KEY_IMEIS:Ljava/lang/String; = "device_ids_imeis"

.field public static final KEY_LRNDID:Ljava/lang/String; = "device_ids_lrndid"

.field public static final KEY_MEIDS:Ljava/lang/String; = "device_ids_meids"

.field public static final KEY_SERIAL:Ljava/lang/String; = "device_ids_serial"

.field private static final SP_CACHE:Ljava/lang/String; = "device_ids_cache"

.field private static final TAG:Ljava/lang/String; = "DeviceId"

.field private static final mDigits:[C


# instance fields
.field private mCA:Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;

.field private mForceRemoteRNDID:Z

.field private mGRNDID:Ljava/lang/String;

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

.field private mLRNDID:Ljava/lang/String;

.field private mListener:Lcom/nubia/reyun/utils/DeviceId$IdChangedListener;

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

.field private mSerial:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 372
    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nubia/reyun/utils/DeviceId;->mDigits:[C

    .line 375
    return-void

    .line 372
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;-><init>(Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;)V

    iput-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mCA:Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    .line 48
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mSerial:Ljava/lang/String;

    .line 50
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/nubia/reyun/utils/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    .line 61
    iput-boolean p2, p0, Lcom/nubia/reyun/utils/DeviceId;->mForceRemoteRNDID:Z

    .line 62
    return-void
.end method

.method private addMID(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 418
    :pswitch_0
    const-string v0, "DeviceId"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid mobile id format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 395
    :pswitch_1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    :pswitch_2
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 412
    :pswitch_3
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getLRNDID(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 472
    iput-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mLRNDID:Ljava/lang/String;

    .line 473
    const-string v0, "device_ids_cache"

    .line 474
    const/4 v1, 0x0

    .line 473
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_0

    .line 476
    const-string v1, "device_ids_lrndid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    iput-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mLRNDID:Ljava/lang/String;

    .line 481
    :cond_0
    return-void
.end method

.method private load(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 426
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 427
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mSerial:Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    .line 433
    :cond_0
    :try_start_0
    const-string v0, "device_ids_cache"

    .line 434
    const/4 v1, 0x0

    .line 433
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_3

    .line 436
    const-string v1, "device_ids_imeis"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/nubia/reyun/utils/DeviceId;->unserialize(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 437
    const-string v1, "device_ids_meids"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/nubia/reyun/utils/DeviceId;->unserialize(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 438
    const-string v1, "device_ids_serial"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 440
    iput-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mSerial:Ljava/lang/String;

    .line 442
    :cond_1
    const-string v1, "device_ids_grndid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 444
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "00000000"

    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 445
    :cond_2
    iput-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :cond_3
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 451
    invoke-static {v0}, Lcom/nubia/reyun/utils/CommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private save(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 457
    const-string v0, "device_ids_cache"

    .line 458
    const/4 v1, 0x0

    .line 457
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_0

    .line 460
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_0

    .line 462
    const-string v1, "device_ids_imeis"

    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/nubia/reyun/utils/DeviceId;->serialize(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 463
    const-string v1, "device_ids_meids"

    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/nubia/reyun/utils/DeviceId;->serialize(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 464
    const-string v1, "device_ids_serial"

    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mSerial:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    const-string v1, "device_ids_grndid"

    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 466
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 469
    :cond_0
    return-void
.end method

.method private serialize(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 498
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    :goto_1
    return-object v0

    .line 500
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 501
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "00000000"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 502
    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 511
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private setLRNDID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 484
    iput-object p2, p0, Lcom/nubia/reyun/utils/DeviceId;->mLRNDID:Ljava/lang/String;

    .line 485
    const-string v0, "device_ids_cache"

    .line 486
    const/4 v1, 0x0

    .line 485
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 487
    if-eqz v0, :cond_0

    .line 488
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 489
    if-eqz v0, :cond_0

    .line 490
    const-string v1, "device_ids_lrndid"

    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mLRNDID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 491
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 494
    :cond_0
    return-void
.end method

.method private toHexString([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 378
    if-eqz p1, :cond_1

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 380
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 384
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    :goto_1
    return-object v0

    .line 381
    :cond_0
    sget-object v2, Lcom/nubia/reyun/utils/DeviceId;->mDigits:[C

    aget-byte v3, p1, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    sget-object v2, Lcom/nubia/reyun/utils/DeviceId;->mDigits:[C

    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private unserialize(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 515
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 516
    const-string v1, "\\|"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 517
    if-eqz v1, :cond_0

    .line 518
    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_1

    .line 526
    :cond_0
    return-void

    .line 518
    :cond_1
    aget-object v3, v1, v0

    .line 520
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 521
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateData(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/nubia/reyun/utils/DeviceId;->updateFromRemote(Landroid/content/Context;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/nubia/reyun/utils/DeviceId;->updateFromDevice(Landroid/content/Context;)V

    .line 210
    return-void
.end method

.method private updateFromDevice(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 274
    if-eqz p1, :cond_7

    .line 275
    :try_start_0
    const-class v2, Landroid/telephony/TelephonyManager;

    .line 276
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 277
    if-eqz v3, :cond_4

    .line 280
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mCA:Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;

    const-string v4, "getPhoneCount"

    const/4 v5, 0x0

    .line 281
    const/4 v6, 0x0

    .line 280
    invoke-static/range {v1 .. v6}, Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;->access$1(Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 282
    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 284
    if-ge v1, v7, :cond_e

    :cond_0
    :goto_0
    move v9, v8

    .line 289
    :goto_1
    if-lt v9, v7, :cond_8

    .line 299
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mCA:Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;

    const-string v4, "getImei"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;->access$1(Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 300
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    const-string v1, "00000000"

    .line 303
    :cond_1
    iget-object v4, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 304
    iget-object v4, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v9, v8

    .line 308
    :goto_2
    if-lt v9, v7, :cond_b

    .line 316
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mCA:Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;

    const-string v4, "getMeid"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;->access$1(Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 317
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 318
    const-string v4, "00000000000000"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 319
    iget-object v4, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_3
    :goto_3
    if-lt v8, v7, :cond_d

    .line 328
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mCA:Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;

    const-string v4, "getDeviceId"

    const/4 v5, 0x0

    .line 329
    const/4 v6, 0x0

    .line 328
    invoke-static/range {v1 .. v6}, Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;->access$1(Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 330
    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v3}, Lcom/nubia/reyun/utils/DeviceId;->addMID(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 334
    :cond_4
    const-class v2, Landroid/os/Build;

    .line 335
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mCA:Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;

    .line 336
    const-string v3, "MANUFACTURER"

    .line 335
    invoke-static {v1, v2, v2, v3}, Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;->access$2(Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 337
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mCA:Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;

    const-string v3, "MODEL"

    invoke-static {v1, v2, v2, v3}, Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;->access$2(Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 341
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mCA:Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;

    const-string v2, "android.os.SystemProperties"

    invoke-static {v1, v2}, Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;->access$3(Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 342
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mCA:Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;

    const-string v4, "get"

    const-class v5, Ljava/lang/String;

    .line 343
    const-string v6, "ro.serialno"

    move-object v3, v2

    .line 342
    invoke-static/range {v1 .. v6}, Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;->access$1(Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 344
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 345
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mSerial:Ljava/lang/String;

    .line 350
    :cond_5
    const-string v1, "00000000"

    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 351
    :cond_6
    const/16 v1, 0x20

    new-array v2, v1, [B

    .line 352
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 354
    :try_start_1
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 355
    iget-object v3, p0, Lcom/nubia/reyun/utils/DeviceId;->mSerial:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 356
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 358
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nubia/reyun/utils/DeviceId;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 370
    :cond_7
    :goto_4
    return-void

    .line 290
    :cond_8
    :try_start_2
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mCA:Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;

    const-string v4, "getImei"

    .line 291
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 290
    invoke-static/range {v1 .. v6}, Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;->access$1(Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 292
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 293
    const-string v1, "00000000"

    .line 295
    :cond_9
    iget-object v4, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 296
    iget-object v4, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_a
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_1

    .line 309
    :cond_b
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mCA:Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;

    const-string v4, "getMeid"

    .line 310
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 309
    invoke-static/range {v1 .. v6}, Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;->access$1(Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 311
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 312
    const-string v4, "00000000000000"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 313
    iget-object v4, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_c
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_2

    .line 324
    :cond_d
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mCA:Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;

    const-string v4, "getDeviceId"

    .line 325
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 324
    invoke-static/range {v1 .. v6}, Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;->access$1(Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 326
    iget-object v4, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v4, v5}, Lcom/nubia/reyun/utils/DeviceId;->addMID(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 323
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_3

    .line 359
    :catch_0
    move-exception v1

    .line 360
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    invoke-direct {p0, v2}, Lcom/nubia/reyun/utils/DeviceId;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 365
    :catch_1
    move-exception v1

    .line 367
    invoke-static {v1}, Lcom/nubia/reyun/utils/CommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    goto/16 :goto_4

    :cond_e
    move v7, v1

    goto/16 :goto_0
.end method

.method private updateFromRemote(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 213
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    :try_start_0
    const-string v0, "DeviceId"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateFromRemote:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mRemoteProviderUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 217
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 219
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    const-string v0, "device_ids_imeis"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    .line 221
    invoke-direct {p0, v0, v2}, Lcom/nubia/reyun/utils/DeviceId;->unserialize(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 223
    const-string v0, "device_ids_meids"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    .line 223
    invoke-direct {p0, v0, v2}, Lcom/nubia/reyun/utils/DeviceId;->unserialize(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 226
    const-string v0, "device_ids_serial"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    iput-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mSerial:Ljava/lang/String;

    .line 230
    :cond_0
    iget-boolean v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mForceRemoteRNDID:Z

    if-eqz v0, :cond_3

    .line 234
    const-string v0, "device_ids_grndid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 233
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    .line 238
    iput-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    .line 240
    const-string v0, "00000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mListener:Lcom/nubia/reyun/utils/DeviceId$IdChangedListener;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mListener:Lcom/nubia/reyun/utils/DeviceId$IdChangedListener;

    iget-object v3, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    .line 243
    const/4 v4, 0x1

    .line 242
    invoke-interface {v0, v2, v3, v4}, Lcom/nubia/reyun/utils/DeviceId$IdChangedListener;->onIdChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 266
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_2
    :goto_1
    return-void

    .line 249
    :cond_3
    :try_start_2
    const-string v0, "00000000"

    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    const-string v0, "device_ids_grndid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 250
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    iput-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 263
    :goto_2
    :try_start_3
    invoke-static {v0}, Lcom/nubia/reyun/utils/CommonUtil;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    if-eqz v1, :cond_2

    .line 266
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 258
    :cond_4
    :try_start_4
    const-string v0, "DeviceId"

    const-string v2, "cr is null:"

    invoke-static {v0, v2}, Lcom/nubia/reyun/utils/CommonUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    .line 265
    :goto_3
    if-eqz v1, :cond_5

    .line 266
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_5
    throw v0

    .line 264
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_3

    .line 260
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 68
    if-lez v2, :cond_0

    move v1, v0

    .line 69
    :goto_0
    if-lt v1, v2, :cond_2

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 79
    if-lez v1, :cond_1

    .line 80
    :goto_1
    if-lt v0, v1, :cond_5

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "00000000"

    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 91
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    .line 96
    :goto_2
    return-object v0

    .line 70
    :cond_2
    const-string v3, "00000000"

    iget-object v4, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 71
    const-string v0, "00000000"

    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mSerial:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 74
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 69
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_5
    const-string v2, "00000000"

    iget-object v3, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 82
    const-string v2, "00000000000000"

    iget-object v3, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 83
    const-string v1, "00000000"

    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mSerial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 84
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 86
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 80
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 93
    :cond_8
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mLRNDID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "00000000"

    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mLRNDID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 94
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mLRNDID:Ljava/lang/String;

    goto/16 :goto_2

    .line 96
    :cond_9
    const-string v0, "00000000"

    goto/16 :goto_2
.end method

.method public getGRNDID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    return-object v0
.end method

.method public getIMEIs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/nubia/reyun/utils/DeviceId;->serialize(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImei()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 100
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 101
    if-lez v2, :cond_0

    .line 102
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 103
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 112
    :cond_0
    :goto_1
    return-object v0

    .line 104
    :cond_1
    iget-object v3, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 107
    const-string v3, "00000000"

    iget-object v4, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 108
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 103
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getMEIDs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/nubia/reyun/utils/DeviceId;->serialize(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMobileIds()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 131
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 134
    invoke-direct {p0, v0}, Lcom/nubia/reyun/utils/DeviceId;->serialize(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized refresh(Landroid/content/Context;Z)V
    .locals 5

    .prologue
    .line 153
    monitor-enter p0

    if-eqz p1, :cond_6

    .line 155
    if-eqz p2, :cond_0

    .line 156
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nubia/reyun/utils/DeviceId;->load(Landroid/content/Context;)V

    .line 159
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 161
    iget-object v2, p0, Lcom/nubia/reyun/utils/DeviceId;->mSerial:Ljava/lang/String;

    .line 162
    iget-object v3, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    .line 163
    invoke-direct {p0, p1}, Lcom/nubia/reyun/utils/DeviceId;->updateData(Landroid/content/Context;)V

    .line 165
    iget-object v4, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 166
    iget-object v4, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 168
    :cond_1
    iget-object v4, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 169
    iget-object v4, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 172
    :cond_2
    iget-object v4, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mSerial:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 174
    :cond_3
    invoke-direct {p0, p1}, Lcom/nubia/reyun/utils/DeviceId;->save(Landroid/content/Context;)V

    .line 180
    :cond_4
    invoke-direct {p0, p1}, Lcom/nubia/reyun/utils/DeviceId;->getLRNDID(Landroid/content/Context;)V

    .line 181
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mIMEIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mMEIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mLRNDID:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 184
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mLRNDID:Ljava/lang/String;

    .line 185
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/nubia/reyun/utils/DeviceId;->setLRNDID(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mListener:Lcom/nubia/reyun/utils/DeviceId$IdChangedListener;

    if-eqz v1, :cond_6

    .line 188
    iget-object v1, p0, Lcom/nubia/reyun/utils/DeviceId;->mListener:Lcom/nubia/reyun/utils/DeviceId$IdChangedListener;

    invoke-virtual {p0}, Lcom/nubia/reyun/utils/DeviceId;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/nubia/reyun/utils/DeviceId$IdChangedListener;->onIdChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    .line 194
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mLRNDID:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 195
    iget-object v0, p0, Lcom/nubia/reyun/utils/DeviceId;->mGRNDID:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/nubia/reyun/utils/DeviceId;->setLRNDID(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    :try_start_2
    invoke-static {v0}, Lcom/nubia/reyun/utils/CommonUtil;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIdChangedListener(Lcom/nubia/reyun/utils/DeviceId$IdChangedListener;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/nubia/reyun/utils/DeviceId;->mListener:Lcom/nubia/reyun/utils/DeviceId$IdChangedListener;

    .line 149
    return-void
.end method
