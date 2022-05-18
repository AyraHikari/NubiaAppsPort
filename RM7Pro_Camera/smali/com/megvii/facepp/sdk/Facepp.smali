.class public Lcom/megvii/facepp/sdk/Facepp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;,
        Lcom/megvii/facepp/sdk/Facepp$Face;,
        Lcom/megvii/facepp/sdk/Facepp$Ability;
    }
.end annotation


# static fields
.field public static final FPP_GET_LANDMARK101:I = 0x65

.field public static final FPP_GET_LANDMARK106:I = 0x6a

.field public static final FPP_GET_LANDMARK81:I = 0x51

.field public static final IMAGEMODE_BGR:I = 0x1

.field public static final IMAGEMODE_COUNT:I = 0x5

.field public static final IMAGEMODE_GRAY:I = 0x0

.field public static final IMAGEMODE_NV21:I = 0x2

.field public static final IMAGEMODE_RGB:I = 0x4

.field public static final IMAGEMODE_RGBA:I = 0x3

.field private static final MG_FPP_ATTR_AGE_GENDER:J = 0x20L

.field private static final MG_FPP_ATTR_BLURNESS:J = 0x10L

.field private static final MG_FPP_ATTR_DETECT:J = 0x1000L

.field private static final MG_FPP_ATTR_DETECT_RECT:J = 0x200L

.field private static final MG_FPP_ATTR_EXTRACT_FEATURE:J = 0x40L

.field private static final MG_FPP_ATTR_EYESTATUS:J = 0x2L

.field private static final MG_FPP_ATTR_IDCARD_QUALITY:J = 0x2000L

.field private static final MG_FPP_ATTR_MINORITY:J = 0x8L

.field private static final MG_FPP_ATTR_MOUTHSTATUS:J = 0x4L

.field private static final MG_FPP_ATTR_POSE3D:J = 0x1L

.field private static final MG_FPP_ATTR_TRACK:J = 0x4000L

.field private static final MG_FPP_ATTR_TRACK_FAST:J = 0x80L

.field private static final MG_FPP_ATTR_TRACK_ROBUST:J = 0x100L

.field private static final MG_FPP_TRACK_SUPER_FAST:J = 0x8000L

.field private static final MG_RETCODE_EXPIRE:I = 0x65

.field private static final MG_RETCODE_FAILED:I = -0x1

.field private static final MG_RETCODE_INDEX_OUT_OF_RANGE:I = 0x3

.field private static final MG_RETCODE_INVALID_ARGUMENT:I = 0x1

.field private static final MG_RETCODE_INVALID_BUNDLEID:I = 0x66

.field private static final MG_RETCODE_INVALID_HANDLE:I = 0x2

.field private static final MG_RETCODE_INVALID_LICENSE:I = 0x67

.field private static final MG_RETCODE_INVALID_MODEL:I = 0x68

.field private static final MG_RETCODE_LOAD_ERROR:I = 0x709

.field private static final MG_RETCODE_OK:I

.field private static abilities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/megvii/facepp/sdk/Facepp$Ability;",
            ">;"
        }
    .end annotation
.end field

.field private static ablitiesBuffer:Ljava/lang/StringBuffer;

.field private static algorithmInfo:[J


# instance fields
.field private FaceppHandle:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAbilitiesString([B)Ljava/lang/String;
    .locals 1

    .line 513
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 516
    :cond_0
    sget-object v0, Lcom/megvii/facepp/sdk/Facepp;->ablitiesBuffer:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 517
    invoke-static {p0}, Lcom/megvii/facepp/sdk/Facepp;->getAbility([B)Ljava/util/ArrayList;

    .line 519
    :cond_1
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->ablitiesBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAbility([B)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Lcom/megvii/facepp/sdk/Facepp$Ability;",
            ">;"
        }
    .end annotation

    .line 439
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 442
    :cond_0
    sget-object v0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    return-object v0

    .line 444
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    .line 445
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "abilities="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/megvii/facepp/sdk/Facepp;->ablitiesBuffer:Ljava/lang/StringBuffer;

    .line 446
    sget-object v0, Lcom/megvii/facepp/sdk/Facepp;->algorithmInfo:[J

    if-nez v0, :cond_2

    .line 447
    invoke-static {p0}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeGetAlgorithmInfo([B)[J

    move-result-object p0

    sput-object p0, Lcom/megvii/facepp/sdk/Facepp;->algorithmInfo:[J

    .line 448
    :cond_2
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->algorithmInfo:[J

    const/4 v0, 0x2

    aget-wide v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_3

    .line 450
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->POSE:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->ablitiesBuffer:Ljava/lang/StringBuffer;

    const-string v2, " POSE "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-wide/16 v2, 0x2

    and-long/2addr v2, v0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_4

    .line 454
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->EYESTATUS:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->ablitiesBuffer:Ljava/lang/StringBuffer;

    const-string v2, " EYESTATUS "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_5

    .line 458
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->MOUTHSTATUS:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->ablitiesBuffer:Ljava/lang/StringBuffer;

    const-string v2, " MOUTHSTATUS "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const-wide/16 v2, 0x8

    and-long/2addr v2, v0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_6

    .line 462
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->ablitiesBuffer:Ljava/lang/StringBuffer;

    const-string v2, " MINORITY "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->MINORITY:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_7

    .line 466
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->ablitiesBuffer:Ljava/lang/StringBuffer;

    const-string v2, " BLURNESS "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->BLURNESS:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-wide/16 v2, 0x20

    and-long/2addr v2, v0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_8

    .line 470
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->AGEGENDER:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->ablitiesBuffer:Ljava/lang/StringBuffer;

    const-string v2, " AGEGENDER "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    const-wide/16 v2, 0x40

    and-long/2addr v2, v0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_9

    .line 475
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->SMALLFEATEXT:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->ablitiesBuffer:Ljava/lang/StringBuffer;

    const-string v2, " SMALLFEATEXT "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_a

    .line 479
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->TRACK_FAST:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->ablitiesBuffer:Ljava/lang/StringBuffer;

    const-string v2, " TRACK_FAST "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_b

    .line 483
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->TRACK_ROBUST:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->ablitiesBuffer:Ljava/lang/StringBuffer;

    const-string v2, " TRACK_ROBUST "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    const-wide/16 v2, 0x200

    and-long/2addr v2, v0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_c

    .line 487
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->DETECT_RECT:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->ablitiesBuffer:Ljava/lang/StringBuffer;

    const-string v2, " DETECT_RECT "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    const-wide/16 v2, 0x1000

    and-long/2addr v2, v0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_d

    .line 491
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->DETECT:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->ablitiesBuffer:Ljava/lang/StringBuffer;

    const-string v2, " DETECT "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    const-wide/16 v2, 0x2000

    and-long/2addr v2, v0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_e

    .line 496
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->IDCARD_QUALITY:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->ablitiesBuffer:Ljava/lang/StringBuffer;

    const-string v2, " IDCARD_QUALITY "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    const-wide/16 v2, 0x4000

    and-long/2addr v2, v0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_f

    .line 501
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->TRACK:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->ablitiesBuffer:Ljava/lang/StringBuffer;

    const-string v2, " TRACK "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    const-wide/32 v2, 0x8000

    and-long/2addr v0, v2

    cmp-long p0, v0, v4

    if-eqz p0, :cond_10

    .line 505
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->ablitiesBuffer:Ljava/lang/StringBuffer;

    const-string v0, " SUPER_FAST "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 506
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    sget-object v0, Lcom/megvii/facepp/sdk/Facepp$Ability;->SUPER_FAST:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_10
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    return-object p0
.end method

.method private static getApiExpirationMillis()J
    .locals 4

    .line 554
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 557
    :cond_0
    invoke-static {}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeGetApiExpication()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getApiExpirationMillis(Landroid/content/Context;[B)J
    .locals 1

    .line 394
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 397
    :cond_0
    invoke-static {p1}, Lcom/megvii/facepp/sdk/Facepp;->getSDKAuthType([B)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 398
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->getApiExpirationMillis()J

    move-result-wide p0

    return-wide p0

    .line 400
    :cond_1
    invoke-static {p1}, Lcom/megvii/facepp/sdk/Facepp;->getApiExpirationMillis([B)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getApiExpirationMillis([B)J
    .locals 4

    .line 409
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 412
    :cond_0
    sget-object v0, Lcom/megvii/facepp/sdk/Facepp;->algorithmInfo:[J

    if-nez v0, :cond_1

    .line 413
    invoke-static {p0}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeGetAlgorithmInfo([B)[J

    move-result-object p0

    sput-object p0, Lcom/megvii/facepp/sdk/Facepp;->algorithmInfo:[J

    .line 415
    :cond_1
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->algorithmInfo:[J

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getApiName()J
    .locals 2

    .line 542
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 545
    :cond_0
    invoke-static {}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeGetApiName()J

    move-result-wide v0

    return-wide v0
.end method

.method private getErrorType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x709

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const-string p1, "MG_RETCODE_INVALID_MODEL"

    return-object p1

    :pswitch_1
    const-string p1, "MG_RETCODE_INVALID_LICENSE"

    return-object p1

    :pswitch_2
    const-string p1, "MG_RETCODE_INVALID_BUNDLEID"

    return-object p1

    :pswitch_3
    const-string p1, "MG_RETCODE_EXPIRE"

    return-object p1

    :cond_0
    const-string p1, "MG_RETCODE_LOAD_ERROR"

    return-object p1

    :cond_1
    const-string p1, "MG_RETCODE_INDEX_OUT_OF_RANGE"

    return-object p1

    :cond_2
    const-string p1, "MG_RETCODE_INVALID_HANDLE"

    return-object p1

    :cond_3
    const-string p1, "MG_RETCODE_INVALID_ARGUMENT"

    return-object p1

    :cond_4
    const-string p1, "MG_RETCODE_OK"

    return-object p1

    :cond_5
    const-string p1, "MG_RETCODE_FAILED"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getJenkinsNumber()Ljava/lang/String;
    .locals 1

    .line 592
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 595
    :cond_0
    invoke-static {}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeGetJenkinsNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKAuthType()I
    .locals 1

    .line 566
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 569
    :cond_0
    invoke-static {}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeGetSDKAuthType()I

    move-result v0

    return v0
.end method

.method public static getSDKAuthType([B)I
    .locals 2

    .line 424
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 427
    :cond_0
    sget-object v0, Lcom/megvii/facepp/sdk/Facepp;->algorithmInfo:[J

    if-nez v0, :cond_1

    .line 428
    invoke-static {p0}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeGetAlgorithmInfo([B)[J

    move-result-object p0

    sput-object p0, Lcom/megvii/facepp/sdk/Facepp;->algorithmInfo:[J

    .line 430
    :cond_1
    sget-object p0, Lcom/megvii/facepp/sdk/Facepp;->algorithmInfo:[J

    const/4 v0, 0x1

    aget-wide v0, p0, v0

    long-to-int p0, v0

    return p0
.end method

.method public static getSDKAuthTypeNew()I
    .locals 1

    .line 605
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 608
    :cond_0
    invoke-static {}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeGetSDKAuthType()I

    move-result v0

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 529
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 532
    :cond_0
    invoke-static {}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isLoadSuccess()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->isLoadSuccess:Z

    return v0
.end method

.method private loadFace3DPoseInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[F)V
    .locals 1

    const/4 v0, 0x0

    .line 683
    aget v0, p2, v0

    iput v0, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->pitch:F

    const/4 v0, 0x1

    .line 684
    aget v0, p2, v0

    iput v0, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->yaw:F

    const/4 v0, 0x2

    .line 685
    aget p2, p2, v0

    iput p2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->roll:F

    return-void
.end method

.method private loadFaceAgeGenderInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[F)V
    .locals 1

    const/4 v0, 0x0

    .line 720
    aget v0, p2, v0

    iput v0, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->age:F

    const/4 v0, 0x1

    .line 721
    aget v0, p2, v0

    iput v0, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->female:F

    const/4 v0, 0x2

    .line 722
    aget p2, p2, v0

    iput p2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->male:F

    return-void
.end method

.method private loadFaceAttributeInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[F)V
    .locals 5

    const/4 v0, 0x0

    .line 652
    aget v1, p2, v0

    iput v1, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->pitch:F

    const/4 v1, 0x1

    .line 653
    aget v1, p2, v1

    iput v1, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->yaw:F

    const/4 v1, 0x2

    .line 654
    aget v1, p2, v1

    iput v1, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->roll:F

    const/4 v1, 0x3

    .line 655
    aget v1, p2, v1

    iput v1, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->happy:F

    const/4 v1, 0x6

    new-array v2, v1, [F

    .line 659
    iput-object v2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->leftEyestatus:[F

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 661
    iget-object v3, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->leftEyestatus:[F

    add-int/lit8 v4, v2, 0x4

    aget v4, p2, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v1, [F

    .line 664
    iput-object v2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->rightEyestatus:[F

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 666
    iget-object v3, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->rightEyestatus:[F

    add-int/lit8 v4, v2, 0xa

    aget v4, p2, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    new-array v2, v1, [F

    .line 670
    iput-object v2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->moutstatus:[F

    :goto_2
    if-ge v0, v1, :cond_2

    .line 672
    iget-object v2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->moutstatus:[F

    add-int/lit8 v3, v0, 0x10

    aget v3, p2, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x14

    .line 675
    aget v0, p2, v0

    iput v0, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->minority:F

    const/16 v0, 0x15

    .line 676
    aget v0, p2, v0

    iput v0, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->blurness:F

    const/16 v0, 0x16

    .line 677
    aget v0, p2, v0

    iput v0, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->age:F

    const/16 v0, 0x17

    .line 678
    aget v0, p2, v0

    iput v0, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->female:F

    const/16 v0, 0x18

    .line 679
    aget p2, p2, v0

    iput p2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->male:F

    return-void
.end method

.method private loadFaceBaseInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[F)V
    .locals 2

    const/4 v0, 0x0

    .line 627
    aget v0, p2, v0

    float-to-int v0, v0

    iput v0, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->trackID:I

    const/4 v0, 0x1

    .line 628
    aget v0, p2, v0

    float-to-int v0, v0

    iput v0, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->index:I

    const/4 v0, 0x2

    .line 629
    aget v0, p2, v0

    iput v0, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->confidence:F

    .line 630
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 631
    iput-object v0, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->rect:Landroid/graphics/Rect;

    const/4 v1, 0x3

    .line 632
    aget v1, p2, v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x4

    .line 633
    aget v1, p2, v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x5

    .line 634
    aget v1, p2, v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x6

    .line 635
    aget v1, p2, v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x7

    .line 636
    aget v0, p2, v0

    iput v0, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->pitch:F

    const/16 v0, 0x8

    .line 637
    aget v0, p2, v0

    iput v0, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->yaw:F

    const/16 v0, 0x9

    .line 638
    aget p2, p2, v0

    iput p2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->roll:F

    return-void
.end method

.method private loadFaceBlurnessInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[F)V
    .locals 1

    const/4 v0, 0x0

    .line 716
    aget p2, p2, v0

    iput p2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->blurness:F

    return-void
.end method

.method private loadFaceEyeStatusInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[F)V
    .locals 5

    const/4 v0, 0x6

    new-array v1, v0, [F

    .line 691
    iput-object v1, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->leftEyestatus:[F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 693
    iget-object v3, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->leftEyestatus:[F

    add-int/lit8 v4, v2, 0x0

    aget v4, p2, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v0, [F

    .line 696
    iput-object v2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->rightEyestatus:[F

    :goto_1
    if-ge v1, v0, :cond_1

    .line 698
    iget-object v2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->rightEyestatus:[F

    add-int/lit8 v3, v1, 0x6

    aget v3, p2, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private loadFaceMinorityInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[F)V
    .locals 1

    const/4 v0, 0x0

    .line 712
    aget p2, p2, v0

    iput p2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->minority:F

    return-void
.end method

.method private loadFaceMouthStatusInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[F)V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 705
    iput-object v1, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->moutstatus:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 707
    iget-object v2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->moutstatus:[F

    add-int/lit8 v3, v1, 0x0

    aget v3, p2, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadFacePointsInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[FII)V
    .locals 4

    .line 642
    new-array v0, p3, [Landroid/graphics/PointF;

    .line 643
    iput-object v0, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->points:[Landroid/graphics/PointF;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_0

    .line 645
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, p1

    .line 646
    aget-object v1, v0, p1

    mul-int/lit8 v2, p1, 0x2

    add-int v3, p4, v2

    aget v3, p2, v3

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 647
    aget-object v1, v0, p1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, p4

    aget v2, p2, v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static shutDown()I
    .locals 1

    .line 617
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 620
    :cond_0
    invoke-static {}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeShutDown()I

    move-result v0

    return v0
.end method


# virtual methods
.method public detect([BIII)[Lcom/megvii/facepp/sdk/Facepp$Face;
    .locals 8

    .line 137
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lcom/megvii/facepp/sdk/Facepp$Face;

    return-object p1

    .line 140
    :cond_0
    iget-wide v2, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    new-array p1, v1, [Lcom/megvii/facepp/sdk/Facepp$Face;

    return-object p1

    :cond_1
    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 143
    invoke-static/range {v2 .. v7}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeDetect(J[BIII)I

    move-result p1

    .line 144
    new-array p2, p1, [Lcom/megvii/facepp/sdk/Facepp$Face;

    :goto_0
    if-ge v1, p1, :cond_2

    .line 146
    iget-wide p3, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    invoke-static {p3, p4, v1}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeFaceInfo(JI)[F

    move-result-object p3

    .line 147
    new-instance p4, Lcom/megvii/facepp/sdk/Facepp$Face;

    invoke-direct {p4}, Lcom/megvii/facepp/sdk/Facepp$Face;-><init>()V

    .line 148
    invoke-direct {p0, p4, p3}, Lcom/megvii/facepp/sdk/Facepp;->loadFaceBaseInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[F)V

    const/16 v0, 0x51

    const/16 v2, 0xa

    .line 149
    invoke-direct {p0, p4, p3, v0, v2}, Lcom/megvii/facepp/sdk/Facepp;->loadFacePointsInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[FII)V

    .line 150
    aput-object p4, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public faceCompare(Lcom/megvii/facepp/sdk/Facepp$Face;Lcom/megvii/facepp/sdk/Facepp$Face;)D
    .locals 7

    .line 347
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    if-nez v0, :cond_0

    return-wide v1

    .line 350
    :cond_0
    iget-wide v3, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->feature:[B

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/megvii/facepp/sdk/Facepp$Face;->feature:[B

    if-nez v0, :cond_1

    goto :goto_0

    .line 352
    :cond_1
    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    iget-object v2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->feature:[B

    iget-object p2, p2, Lcom/megvii/facepp/sdk/Facepp$Face;->feature:[B

    iget-object p1, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->feature:[B

    array-length p1, p1

    div-int/lit8 p1, p1, 0x4

    invoke-static {v0, v1, v2, p2, p1}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeFaceCompare(J[B[BI)D

    move-result-wide p1

    return-wide p1

    :cond_2
    :goto_0
    return-wide v1
.end method

.method public faceCompare([B[B)D
    .locals 7

    .line 362
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    if-nez v0, :cond_0

    return-wide v1

    .line 365
    :cond_0
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    return-wide v1

    .line 368
    :cond_1
    iget-wide v3, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    .line 370
    :cond_2
    array-length v0, p1

    div-int/lit8 v0, v0, 0x4

    invoke-static {v3, v4, p1, p2, v0}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeFaceCompare(J[B[BI)D

    move-result-wide p1

    return-wide p1

    :cond_3
    :goto_0
    return-wide v1
.end method

.method public get3DPose(Lcom/megvii/facepp/sdk/Facepp$Face;)Z
    .locals 6

    .line 213
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 216
    :cond_0
    iget-wide v2, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    sget-object v0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->POSE:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 219
    :cond_1
    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    iget v2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->index:I

    invoke-static {v0, v1, v2}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativePose3D(JI)[F

    move-result-object v0

    .line 220
    invoke-direct {p0, p1, v0}, Lcom/megvii/facepp/sdk/Facepp;->loadFace3DPoseInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[F)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getAgeGender(Lcom/megvii/facepp/sdk/Facepp$Face;)Z
    .locals 6

    .line 295
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 298
    :cond_0
    iget-wide v2, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    sget-object v0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->AGEGENDER:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 300
    :cond_1
    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    iget v2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->index:I

    invoke-static {v0, v1, v2}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeAgeGender(JI)[F

    move-result-object v0

    .line 301
    invoke-direct {p0, p1, v0}, Lcom/megvii/facepp/sdk/Facepp;->loadFaceAgeGenderInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[F)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getAttribute(Lcom/megvii/facepp/sdk/Facepp$Face;)V
    .locals 4

    .line 196
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    return-void

    .line 203
    :cond_1
    iget v2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->index:I

    invoke-static {v0, v1, v2}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeAttribute(JI)[F

    move-result-object v0

    .line 204
    invoke-direct {p0, p1, v0}, Lcom/megvii/facepp/sdk/Facepp;->loadFaceAttributeInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[F)V

    return-void
.end method

.method public getBlurness(Lcom/megvii/facepp/sdk/Facepp$Face;)Z
    .locals 6

    .line 279
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 282
    :cond_0
    iget-wide v2, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    sget-object v0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->BLURNESS:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 284
    :cond_1
    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    iget v2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->index:I

    invoke-static {v0, v1, v2}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeBlurness(JI)[F

    move-result-object v0

    .line 285
    invoke-direct {p0, p1, v0}, Lcom/megvii/facepp/sdk/Facepp;->loadFaceBlurnessInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[F)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getExtractFeature(Lcom/megvii/facepp/sdk/Facepp$Face;)Z
    .locals 6

    .line 326
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 329
    :cond_0
    sget-object v0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->SMALLFEATEXT:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 331
    :cond_1
    iget v0, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->index:I

    invoke-static {v2, v3, v0}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeExtractFeature(JI)I

    move-result v0

    if-gtz v0, :cond_2

    return v1

    .line 335
    :cond_2
    iget-wide v1, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    invoke-static {v1, v2, v0}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeGetFeatureData(JI)[B

    move-result-object v0

    iput-object v0, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->feature:[B

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public getEyeStatus(Lcom/megvii/facepp/sdk/Facepp$Face;)Z
    .locals 6

    .line 231
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 234
    :cond_0
    iget-wide v2, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    sget-object v0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->EYESTATUS:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    iget v2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->index:I

    invoke-static {v0, v1, v2}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeEyeStatus(JI)[F

    move-result-object v0

    .line 237
    invoke-direct {p0, p1, v0}, Lcom/megvii/facepp/sdk/Facepp;->loadFaceEyeStatusInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[F)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getFaceppConfig()Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;
    .locals 5

    .line 83
    new-instance v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;

    invoke-direct {v0}, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;-><init>()V

    .line 84
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 88
    :cond_0
    iget-wide v1, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    return-object v0

    .line 91
    :cond_1
    invoke-static {v1, v2}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeGetFaceppConfig(J)[F

    move-result-object v1

    const/4 v2, 0x0

    .line 92
    aget v3, v1, v2

    float-to-int v3, v3

    iput v3, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->minFaceSize:I

    const/4 v3, 0x1

    .line 93
    aget v4, v1, v3

    float-to-int v4, v4

    iput v4, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->rotation:I

    const/4 v4, 0x2

    .line 94
    aget v4, v1, v4

    float-to-int v4, v4

    iput v4, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->interval:I

    const/4 v4, 0x3

    .line 95
    aget v4, v1, v4

    float-to-int v4, v4

    iput v4, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->detectionMode:I

    const/4 v4, 0x4

    .line 96
    aget v4, v1, v4

    float-to-int v4, v4

    iput v4, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->roi_left:I

    const/4 v4, 0x5

    .line 97
    aget v4, v1, v4

    float-to-int v4, v4

    iput v4, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->roi_top:I

    const/4 v4, 0x6

    .line 98
    aget v4, v1, v4

    float-to-int v4, v4

    iput v4, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->roi_right:I

    const/4 v4, 0x7

    .line 99
    aget v4, v1, v4

    float-to-int v4, v4

    iput v4, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->roi_bottom:I

    const/16 v4, 0x8

    .line 100
    aget v4, v1, v4

    iput v4, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->face_confidence_filter:F

    const/16 v4, 0x9

    .line 101
    aget v4, v1, v4

    float-to-int v4, v4

    iput v4, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->one_face_tracking:I

    const/16 v4, 0xa

    .line 102
    aget v4, v1, v4

    float-to-int v4, v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    iput-boolean v4, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->is_smooth:Z

    const/16 v4, 0xb

    .line 103
    aget v1, v1, v4

    float-to-int v1, v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->is_back_camera:Z

    return-object v0
.end method

.method public getLandmark(Lcom/megvii/facepp/sdk/Facepp$Face;I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    return-void

    .line 170
    :cond_1
    iget v2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->index:I

    invoke-static {v0, v1, v2, p2}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeLandMark(JII)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/megvii/facepp/sdk/Facepp;->loadFacePointsInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[FII)V

    return-void
.end method

.method public getLandmarkRaw(Lcom/megvii/facepp/sdk/Facepp$Face;I)V
    .locals 3

    .line 182
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    iget v2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->index:I

    invoke-static {v0, v1, v2, p2}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeLandMarkRaw(JII)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 186
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/megvii/facepp/sdk/Facepp;->loadFacePointsInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[FII)V

    return-void
.end method

.method public getMinorityStatus(Lcom/megvii/facepp/sdk/Facepp$Face;)Z
    .locals 6

    .line 263
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 266
    :cond_0
    iget-wide v2, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    sget-object v0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->MINORITY:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 268
    :cond_1
    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    iget v2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->index:I

    invoke-static {v0, v1, v2}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeMinority(JI)[F

    move-result-object v0

    .line 269
    invoke-direct {p0, p1, v0}, Lcom/megvii/facepp/sdk/Facepp;->loadFaceMinorityInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[F)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getMouthStatus(Lcom/megvii/facepp/sdk/Facepp$Face;)Z
    .locals 6

    .line 247
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 250
    :cond_0
    iget-wide v2, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    sget-object v0, Lcom/megvii/facepp/sdk/Facepp;->abilities:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/megvii/facepp/sdk/Facepp$Ability;->MOUTHSTATUS:Lcom/megvii/facepp/sdk/Facepp$Ability;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 252
    :cond_1
    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    iget v2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->index:I

    invoke-static {v0, v1, v2}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeMouthStatus(JI)[F

    move-result-object v0

    .line 253
    invoke-direct {p0, p1, v0}, Lcom/megvii/facepp/sdk/Facepp;->loadFaceMouthStatusInfo(Lcom/megvii/facepp/sdk/Facepp$Face;[F)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getRect(Lcom/megvii/facepp/sdk/Facepp$Face;)V
    .locals 4

    .line 306
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 309
    :cond_0
    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    return-void

    .line 311
    :cond_1
    iget v2, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->index:I

    invoke-static {v0, v1, v2}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeRect(JI)[F

    move-result-object v0

    .line 313
    iget-object v1, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->rect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 314
    iget-object v1, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->rect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    aget v2, v0, v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 315
    iget-object v1, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->rect:Landroid/graphics/Rect;

    const/4 v2, 0x2

    aget v2, v0, v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 316
    iget-object p1, p1, Lcom/megvii/facepp/sdk/Facepp$Face;->rect:Landroid/graphics/Rect;

    const/4 v1, 0x3

    aget v0, v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public init(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, p2, v0}, Lcom/megvii/facepp/sdk/Facepp;->init(Landroid/content/Context;[BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;[BI)Ljava/lang/String;
    .locals 1

    .line 58
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x709

    .line 59
    invoke-direct {p0, p1}, Lcom/megvii/facepp/sdk/Facepp;->getErrorType(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {p2}, Lcom/megvii/facepp/sdk/Facepp;->getAbility([B)Ljava/util/ArrayList;

    .line 67
    invoke-static {p1, p2, p3}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeInit(Landroid/content/Context;[BI)J

    move-result-wide p1

    long-to-int p3, p1

    .line 68
    invoke-direct {p0, p3}, Lcom/megvii/facepp/sdk/Facepp;->getErrorType(I)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    .line 70
    iput-wide p1, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    const/4 p1, 0x0

    return-object p1

    :cond_2
    return-object p3

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 63
    invoke-direct {p0, p1}, Lcom/megvii/facepp/sdk/Facepp;->getErrorType(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 5

    .line 377
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 381
    :cond_0
    iget-wide v0, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-void

    .line 383
    :cond_1
    invoke-static {v0, v1}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeRelease(J)V

    .line 384
    iput-wide v2, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    return-void
.end method

.method public resetTrack()I
    .locals 6

    .line 577
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 580
    :cond_0
    iget-wide v2, p0, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    .line 582
    :cond_1
    invoke-static {v2, v3}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeResetTrack(J)I

    move-result v0

    return v0
.end method

.method public setFaceppConfig(Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;)V
    .locals 20

    move-object/from16 v0, p1

    .line 114
    invoke-static {}, Lcom/megvii/facepp/sdk/Facepp;->isLoadSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p0

    .line 117
    iget-wide v2, v1, Lcom/megvii/facepp/sdk/Facepp;->FaceppHandle:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    return-void

    .line 120
    :cond_1
    iget v4, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->minFaceSize:I

    int-to-float v4, v4

    iget v5, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->rotation:I

    int-to-float v5, v5

    iget v6, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->interval:I

    int-to-float v6, v6

    iget v7, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->detectionMode:I

    int-to-float v7, v7

    iget v8, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->roi_left:I

    int-to-float v8, v8

    iget v9, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->roi_top:I

    int-to-float v9, v9

    iget v10, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->roi_right:I

    int-to-float v10, v10

    iget v11, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->roi_bottom:I

    int-to-float v11, v11

    iget v12, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->face_confidence_filter:F

    iget v13, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->one_face_tracking:I

    int-to-float v13, v13

    iget-boolean v14, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->is_smooth:Z

    iget-boolean v15, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->is_back_camera:Z

    iget-boolean v1, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->is_smooth_track:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->is_rect_Qualcomm:Z

    move/from16 v17, v1

    iget v1, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->happy_confidence_filter:F

    move/from16 v18, v1

    iget v0, v0, Lcom/megvii/facepp/sdk/Facepp$FaceppConfig;->happy_threshold:F

    move/from16 v19, v0

    invoke-static/range {v2 .. v19}, Lcom/megvii/facepp/sdk/jni/NativeFaceppAPI;->nativeSetFaceppConfig(JFFFFFFFFFFZZZZFF)I

    return-void
.end method
