.class public Lcn/nubia/videogenerator/common/ParamSetUtils;
.super Ljava/lang/Object;
.source "ParamSetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;
    }
.end annotation


# static fields
.field public static final FF_MPEG4_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

.field public static final FF_MPEG4_CSD_1:Ljava/nio/ByteBuffer;

.field public static final FF_MPEG4_PARAM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

.field public static final MTK_HIGH_PROFILE_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

.field public static final MTK_HIGH_PROFILE_CSD_1:Ljava/nio/ByteBuffer;

.field public static final MTK_HIGH_PROFILE_PARAM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

.field public static final MTK_MAIN_PROFILE_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

.field public static final MTK_MAIN_PROFILE_CSD_1:Ljava/nio/ByteBuffer;

.field public static final MTK_MAIN_PROFILE_PARAM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

.field public static final MTK_SLOW_MOTION_CSD_1:Ljava/nio/ByteBuffer;

.field public static final MTK_SLOW_MOTION_PARAM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

.field public static final QCOM_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

.field public static final QCOM_CSD_0_SDM:Ljava/nio/ByteBuffer;

.field public static final QCOM_CSD_1:Ljava/nio/ByteBuffer;

.field public static final QCOM_CSD_1_SDM:Ljava/nio/ByteBuffer;

.field public static final QCOM_CSD_1_SMSNILE:Ljava/nio/ByteBuffer;

.field public static final QCOM_PARAM_SDM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

.field public static final QCOM_PARAM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

.field public static final QCOM_PARAM_SMSNILE_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x7

    new-array v1, v0, [B

    .line 12
    fill-array-data v1, :array_0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lcn/nubia/videogenerator/common/ParamSetUtils;->QCOM_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 13
    fill-array-data v3, :array_1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sput-object v3, Lcn/nubia/videogenerator/common/ParamSetUtils;->QCOM_CSD_1:Ljava/nio/ByteBuffer;

    const/16 v4, 0x17

    new-array v4, v4, [B

    .line 14
    fill-array-data v4, :array_2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sput-object v4, Lcn/nubia/videogenerator/common/ParamSetUtils;->QCOM_CSD_0_SDM:Ljava/nio/ByteBuffer;

    const/16 v5, 0x9

    new-array v6, v5, [B

    .line 16
    fill-array-data v6, :array_3

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sput-object v6, Lcn/nubia/videogenerator/common/ParamSetUtils;->QCOM_CSD_1_SDM:Ljava/nio/ByteBuffer;

    new-array v7, v5, [B

    .line 17
    fill-array-data v7, :array_4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sput-object v7, Lcn/nubia/videogenerator/common/ParamSetUtils;->QCOM_CSD_1_SMSNILE:Ljava/nio/ByteBuffer;

    new-array v0, v0, [B

    .line 18
    fill-array-data v0, :array_5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcn/nubia/videogenerator/common/ParamSetUtils;->MTK_MAIN_PROFILE_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

    new-array v8, v2, [B

    .line 19
    fill-array-data v8, :array_6

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sput-object v8, Lcn/nubia/videogenerator/common/ParamSetUtils;->MTK_MAIN_PROFILE_CSD_1:Ljava/nio/ByteBuffer;

    const/16 v9, 0xb

    new-array v9, v9, [B

    .line 21
    fill-array-data v9, :array_7

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    sput-object v9, Lcn/nubia/videogenerator/common/ParamSetUtils;->MTK_HIGH_PROFILE_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

    new-array v2, v2, [B

    .line 23
    fill-array-data v2, :array_8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sput-object v2, Lcn/nubia/videogenerator/common/ParamSetUtils;->MTK_HIGH_PROFILE_CSD_1:Ljava/nio/ByteBuffer;

    new-array v5, v5, [B

    .line 24
    fill-array-data v5, :array_9

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    sput-object v5, Lcn/nubia/videogenerator/common/ParamSetUtils;->MTK_SLOW_MOTION_CSD_1:Ljava/nio/ByteBuffer;

    const/16 v10, 0x1a

    new-array v10, v10, [B

    .line 25
    fill-array-data v10, :array_a

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    sput-object v10, Lcn/nubia/videogenerator/common/ParamSetUtils;->FF_MPEG4_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

    const/4 v11, 0x4

    new-array v11, v11, [B

    .line 27
    fill-array-data v11, :array_b

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    sput-object v11, Lcn/nubia/videogenerator/common/ParamSetUtils;->FF_MPEG4_CSD_1:Ljava/nio/ByteBuffer;

    .line 28
    new-instance v12, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    invoke-direct {v12, v1, v3}, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v12, Lcn/nubia/videogenerator/common/ParamSetUtils;->QCOM_PARAM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    .line 29
    new-instance v1, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    invoke-direct {v1, v4, v6}, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v1, Lcn/nubia/videogenerator/common/ParamSetUtils;->QCOM_PARAM_SDM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    .line 30
    new-instance v1, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    invoke-direct {v1, v4, v7}, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v1, Lcn/nubia/videogenerator/common/ParamSetUtils;->QCOM_PARAM_SMSNILE_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    .line 31
    new-instance v1, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    invoke-direct {v1, v0, v8}, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v1, Lcn/nubia/videogenerator/common/ParamSetUtils;->MTK_MAIN_PROFILE_PARAM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    .line 32
    new-instance v0, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    invoke-direct {v0, v9, v2}, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v0, Lcn/nubia/videogenerator/common/ParamSetUtils;->MTK_HIGH_PROFILE_PARAM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    .line 33
    new-instance v0, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    invoke-direct {v0, v9, v5}, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v0, Lcn/nubia/videogenerator/common/ParamSetUtils;->MTK_SLOW_MOTION_PARAM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    .line 34
    new-instance v0, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    invoke-direct {v0, v10, v11}, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v0, Lcn/nubia/videogenerator/common/ParamSetUtils;->FF_MPEG4_PARAM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x80t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0x6t
        -0x1et
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x67t
        0x64t
        0x0t
        0x28t
        -0x54t
        -0x4ct
        0x3t
        -0x40t
        0x11t
        0x3ft
        0x2ct
        -0x54t
        0x14t
        0x18t
        0x14t
        0x1bt
        0x42t
        -0x7ct
        -0x2ct
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x12t
        0x6t
        -0x1et
        -0x40t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x12t
        0x6t
        -0xet
        -0x40t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x36t
        0x43t
        -0x38t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x67t
        0x64t
        0x0t
        0x29t
        -0x54t
        0x1bt
        0x1at
    .end array-data

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x16t
        0x43t
        -0x35t
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x7t
        0x8t
        0x3ct
        -0x50t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x1t
        -0x50t
        0x1t
        0x0t
        0x0t
        0x1t
        -0x4bt
        -0x77t
        0x13t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x20t
        0x0t
        -0x3ct
        -0x73t
        -0x78t
        0x0t
        -0xbt
        0x3ct
    .end array-data

    nop

    :array_b
    .array-data 1
        -0x80t
        -0x80t
        -0x80t
        -0x80t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParamSet(Ljava/lang/String;)Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;
    .locals 11

    const-string v0, "csd-1"

    const-string v1, "csd-0"

    const-string v2, "mime"

    .line 53
    new-instance v3, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    invoke-direct {v3}, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;-><init>()V

    .line 54
    new-instance v4, Landroid/media/MediaExtractor;

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V

    .line 56
    :try_start_0
    invoke-virtual {v4, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 p0, 0x0

    move v5, p0

    .line 57
    :goto_0
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 58
    invoke-virtual {v4, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    .line 59
    invoke-virtual {v6, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 60
    invoke-virtual {v6, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "video/"

    .line 61
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 62
    invoke-virtual {v6, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/16 v10, -0x80

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v6, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v3, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    new-array v1, v8, [B

    aput-byte v10, v1, p0

    aput-byte v10, v1, v9

    aput-byte v10, v1, v7

    aput-byte v10, v1, v5

    .line 65
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v3, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    .line 67
    :goto_1
    invoke-virtual {v6, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v6, v0}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    iput-object p0, v3, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_1
    new-array v0, v8, [B

    aput-byte v10, v0, p0

    aput-byte v10, v0, v9

    aput-byte v10, v0, v7

    aput-byte v10, v0, v5

    .line 70
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    iput-object p0, v3, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 80
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    .line 81
    throw p0

    .line 80
    :catch_0
    :cond_3
    :goto_2
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    return-object v3
.end method

.method public static isAVCAccutateTrimSupport(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z
    .locals 2

    .line 132
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "msm"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-static {p0}, Lcn/nubia/videogenerator/common/ParamSetUtils;->isQcomParamSet(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z

    move-result p0

    return p0

    :cond_0
    const-string v1, "mt"

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    invoke-static {p0}, Lcn/nubia/videogenerator/common/ParamSetUtils;->isMTKParamSet(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isMTKHighProfileParamSet(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z
    .locals 1

    .line 120
    sget-object v0, Lcn/nubia/videogenerator/common/ParamSetUtils;->MTK_HIGH_PROFILE_PARAM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    invoke-static {p0, v0}, Lcn/nubia/videogenerator/common/ParamSetUtils;->isParamSetSame(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z

    move-result p0

    return p0
.end method

.method public static isMTKMainProfileParamSet(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z
    .locals 1

    .line 116
    sget-object v0, Lcn/nubia/videogenerator/common/ParamSetUtils;->MTK_MAIN_PROFILE_PARAM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    invoke-static {p0, v0}, Lcn/nubia/videogenerator/common/ParamSetUtils;->isParamSetSame(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z

    move-result p0

    return p0
.end method

.method public static isMTKParamSet(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z
    .locals 1

    .line 124
    sget-object v0, Lcn/nubia/videogenerator/common/ParamSetUtils;->MTK_MAIN_PROFILE_PARAM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    invoke-static {p0, v0}, Lcn/nubia/videogenerator/common/ParamSetUtils;->isParamSetSame(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/nubia/videogenerator/common/ParamSetUtils;->MTK_HIGH_PROFILE_PARAM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    invoke-static {p0, v0}, Lcn/nubia/videogenerator/common/ParamSetUtils;->isParamSetSame(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isMTKSlowMotionParamSet(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z
    .locals 1

    .line 128
    sget-object v0, Lcn/nubia/videogenerator/common/ParamSetUtils;->MTK_SLOW_MOTION_PARAM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    invoke-static {p0, v0}, Lcn/nubia/videogenerator/common/ParamSetUtils;->isParamSetSame(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z

    move-result p0

    return p0
.end method

.method public static isParamSetSame(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 88
    iget-object v1, p0, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p1, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p1, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 92
    :cond_0
    iget-object v1, p1, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 94
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 95
    iget-object v2, p1, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 99
    :goto_0
    iget-object v3, p1, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 100
    iget-object p0, p0, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    iget-object v4, p1, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v3, p0, v0, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 102
    iget-object p0, p1, Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-nez p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    if-eqz v1, :cond_3

    if-eqz p0, :cond_3

    move v0, v2

    :cond_3
    :goto_2
    return v0
.end method

.method public static isQcomParamSet(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z
    .locals 1

    .line 110
    sget-object v0, Lcn/nubia/videogenerator/common/ParamSetUtils;->QCOM_PARAM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    invoke-static {p0, v0}, Lcn/nubia/videogenerator/common/ParamSetUtils;->isParamSetSame(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/nubia/videogenerator/common/ParamSetUtils;->QCOM_PARAM_SDM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    .line 111
    invoke-static {p0, v0}, Lcn/nubia/videogenerator/common/ParamSetUtils;->isParamSetSame(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/nubia/videogenerator/common/ParamSetUtils;->QCOM_PARAM_SMSNILE_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    .line 112
    invoke-static {p0, v0}, Lcn/nubia/videogenerator/common/ParamSetUtils;->isParamSetSame(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isTimeLapseTrimSupport(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z
    .locals 1

    .line 145
    sget-object v0, Lcn/nubia/videogenerator/common/ParamSetUtils;->FF_MPEG4_PARAM_SET:Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;

    invoke-static {p0, v0}, Lcn/nubia/videogenerator/common/ParamSetUtils;->isParamSetSame(Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;Lcn/nubia/videogenerator/common/ParamSetUtils$ParamSet;)Z

    move-result p0

    return p0
.end method
