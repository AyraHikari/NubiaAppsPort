.class public Lcn/nubia/video/editor/ParamSet;
.super Ljava/lang/Object;
.source "ParamSet.java"


# static fields
.field public static final FF_MPEG4_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

.field public static final FF_MPEG4_CSD_1:Ljava/nio/ByteBuffer;

.field public static final MTK_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

.field public static final MTK_CSD_1:Ljava/nio/ByteBuffer;

.field public static final QCOM_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

.field public static final QCOM_CSD_1:Ljava/nio/ByteBuffer;


# instance fields
.field public CSD0:Ljava/nio/ByteBuffer;

.field public CSD1:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v1, v0, [B

    .line 7
    fill-array-data v1, :array_0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lcn/nubia/video/editor/ParamSet;->QCOM_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    new-array v2, v1, [B

    .line 8
    fill-array-data v2, :array_1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sput-object v2, Lcn/nubia/video/editor/ParamSet;->QCOM_CSD_1:Ljava/nio/ByteBuffer;

    new-array v0, v0, [B

    .line 9
    fill-array-data v0, :array_2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcn/nubia/video/editor/ParamSet;->MTK_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

    new-array v0, v1, [B

    .line 10
    fill-array-data v0, :array_3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcn/nubia/video/editor/ParamSet;->MTK_CSD_1:Ljava/nio/ByteBuffer;

    const/16 v0, 0x1a

    new-array v0, v0, [B

    .line 11
    fill-array-data v0, :array_4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcn/nubia/video/editor/ParamSet;->FF_MPEG4_CSD_0_PREFIX:Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 13
    fill-array-data v0, :array_5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcn/nubia/video/editor/ParamSet;->FF_MPEG4_CSD_1:Ljava/nio/ByteBuffer;

    return-void

    nop

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
        0x42t
        0x0t
    .end array-data

    :array_3
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

    :array_4
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

    :array_5
    .array-data 1
        -0x80t
        -0x80t
        -0x80t
        -0x80t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcn/nubia/video/editor/ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    .line 17
    iput-object v0, p0, Lcn/nubia/video/editor/ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    .line 25
    iput-object v0, p0, Lcn/nubia/video/editor/ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    .line 26
    iput-object v0, p0, Lcn/nubia/video/editor/ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcn/nubia/video/editor/ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    .line 17
    iput-object v0, p0, Lcn/nubia/video/editor/ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    .line 20
    iput-object p1, p0, Lcn/nubia/video/editor/ParamSet;->CSD0:Ljava/nio/ByteBuffer;

    .line 21
    iput-object p2, p0, Lcn/nubia/video/editor/ParamSet;->CSD1:Ljava/nio/ByteBuffer;

    return-void
.end method
