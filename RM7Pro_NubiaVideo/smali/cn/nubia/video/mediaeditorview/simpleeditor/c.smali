.class public Lcn/nubia/video/mediaeditorview/simpleeditor/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[I

.field public static final d:[F


# instance fields
.field private a:[I

.field private b:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcn/nubia/video/mediaeditorview/simpleeditor/c;->c:[I

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/video/mediaeditorview/simpleeditor/c;->d:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0xcfd0
        -0xb5ba0
        -0x100
        -0x993300
        -0xba7500
        -0xffff12
        -0x6ed312
        -0x1000000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/nubia/video/mediaeditorview/simpleeditor/c;->c:[I

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/c;->a:[I

    .line 3
    sget-object v0, Lcn/nubia/video/mediaeditorview/simpleeditor/c;->d:[F

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/c;->b:[F

    return-void
.end method


# virtual methods
.method public a(FFF)F
    .locals 0

    sub-float/2addr p1, p2

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    return p1
.end method

.method public b(F)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/c;->a:[I

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    return p1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/c;->b:[F

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 3
    aget v3, v2, v1

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    if-nez v1, :cond_1

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/c;->a:[I

    aget p1, p1, v0

    return p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/c;->a:[I

    add-int/lit8 v3, v1, -0x1

    aget v4, v0, v3

    .line 6
    aget v0, v0, v1

    .line 7
    aget v3, v2, v3

    aget v1, v2, v1

    invoke-virtual {p0, p1, v3, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/c;->a(FFF)F

    move-result p1

    .line 8
    invoke-virtual {p0, v4, v0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/c;->c(IIF)I

    move-result p1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public c(IIF)I
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 5
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 6
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result p2

    int-to-double v4, v0

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p3

    float-to-double v6, v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v0, v4

    int-to-double v4, v1

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p3

    float-to-double v1, v1

    add-double/2addr v1, v8

    add-double/2addr v4, v1

    double-to-int v1, v4

    int-to-double v2, p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p1, p3

    float-to-double p1, p1

    add-double/2addr p1, v8

    add-double/2addr v2, p1

    double-to-int p1, v2

    const/16 p2, 0xff

    .line 7
    invoke-static {p2, v0, p1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method
