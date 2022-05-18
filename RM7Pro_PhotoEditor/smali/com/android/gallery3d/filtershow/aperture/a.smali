.class public Lcom/android/gallery3d/filtershow/aperture/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final c:[F

.field public static d:[F

.field public static final e:[F

.field public static final f:[F


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x11

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/gallery3d/filtershow/aperture/a;->c:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/gallery3d/filtershow/aperture/a;->e:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/gallery3d/filtershow/aperture/a;->f:[F

    invoke-static {}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->isUseAltek()Z

    move-result v2

    if-eqz v2, :cond_0

    sput-object v1, Lcom/android/gallery3d/filtershow/aperture/a;->d:[F

    goto :goto_0

    :cond_0
    sput-object v0, Lcom/android/gallery3d/filtershow/aperture/a;->d:[F

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3fb33333    # 1.4f
        0x40000000    # 2.0f
        0x4019999a    # 2.4f
        0x40333333    # 2.8f
        0x404ccccd    # 3.2f
        0x40600000    # 3.5f
        0x40800000    # 4.0f
        0x40900000    # 4.5f
        0x40b33333    # 5.6f
        0x40c9999a    # 6.3f
        0x40e33333    # 7.1f
        0x41000000    # 8.0f
        0x41300000    # 11.0f
        0x41500000    # 13.0f
        0x41800000    # 16.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3fb33333    # 1.4f
        0x40000000    # 2.0f
        0x4019999a    # 2.4f
        0x40333333    # 2.8f
        0x404ccccd    # 3.2f
        0x40600000    # 3.5f
        0x40800000    # 4.0f
        0x4089999a    # 4.3f
        0x4099999a    # 4.8f
        0x40a66666    # 5.2f
        0x40b33333    # 5.6f
        0x40c00000    # 6.0f
        0x40f00000    # 7.5f
        0x41080000    # 8.5f
        0x41200000    # 10.0f
    .end array-data

    :array_2
    .array-data 4
        0x42c80000    # 100.0f
        0x42bc0000    # 94.0f
        0x42b00000    # 88.0f
        0x42a40000    # 82.0f
        0x42980000    # 76.0f
        0x428c0000    # 70.0f
        0x42800000    # 64.0f
        0x42680000    # 58.0f
        0x42500000    # 52.0f
        0x42380000    # 46.0f
        0x42200000    # 40.0f
        0x42080000    # 34.0f
        0x41e00000    # 28.0f
        0x41b00000    # 22.0f
        0x41800000    # 16.0f
        0x40e00000    # 7.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    const-string v0, "ApertureInfo"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/aperture/a;->b:Z

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "UserComment"

    invoke-virtual {v1, p1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserCommentInfo "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/aperture/a;->b:Z

    return-void

    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v1, p1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    aget-object p1, p1, v1

    const-string v1, "done"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/aperture/a;->a:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/aperture/a;->b:Z

    goto :goto_1

    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/aperture/a;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/aperture/a;->b:Z

    :goto_1
    return-void
.end method

.method public static a(F)I
    .locals 10

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/aperture/a;->e(F)F

    move-result p0

    sget-object v0, Lcom/android/gallery3d/filtershow/aperture/a;->c:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    cmpg-float v2, p0, v2

    const/high16 v3, 0x42c80000    # 100.0f

    if-gtz v2, :cond_0

    array-length p0, v0

    int-to-float p0, p0

    div-float/2addr v3, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v3, p0

    float-to-int p0, v3

    return p0

    :cond_0
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget v2, v0, v2

    cmpl-float v2, p0, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    if-ltz v2, :cond_1

    array-length p0, v0

    int-to-float p0, p0

    div-float/2addr v3, p0

    float-to-double v1, v3

    array-length p0, v0

    int-to-double v6, p0

    sub-double/2addr v6, v4

    mul-double/2addr v1, v6

    double-to-int p0, v1

    return p0

    :cond_1
    move v0, v1

    :goto_0
    sget-object v2, Lcom/android/gallery3d/filtershow/aperture/a;->c:[F

    array-length v6, v2

    if-ge v0, v6, :cond_3

    aget v6, v2, v0

    sub-float v6, p0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    array-length p0, v2

    int-to-float p0, p0

    div-float/2addr v3, p0

    float-to-double v1, v3

    int-to-double v6, v0

    add-double/2addr v6, v4

    mul-double/2addr v1, v6

    double-to-int p0, v1

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProgress  wrong value:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ApertureInfo"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v0, Lcom/android/gallery3d/filtershow/aperture/a;->c:[F

    array-length v2, v0

    if-ge v1, v2, :cond_5

    aget v2, v0, v1

    sub-float v2, p0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v6, 0x40800000    # 4.0f

    cmpg-float v2, v2, v6

    if-gez v2, :cond_4

    array-length p0, v0

    int-to-float p0, p0

    div-float/2addr v3, p0

    float-to-double v2, v3

    int-to-double v0, v1

    add-double/2addr v0, v4

    mul-double/2addr v2, v0

    double-to-int p0, v2

    return p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/16 p0, 0x32

    return p0
.end method

.method public static b(I)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-gt p0, v1, :cond_0

    move p0, v0

    :cond_0
    const/16 v1, 0x62

    if-lt p0, v1, :cond_1

    const/16 p0, 0x64

    :cond_1
    int-to-float p0, p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    sget-object v1, Lcom/android/gallery3d/filtershow/aperture/a;->d:[F

    array-length v2, v1

    int-to-float v2, v2

    mul-float/2addr p0, v2

    float-to-int p0, p0

    array-length v2, v1

    if-lt p0, v2, :cond_2

    array-length p0, v1

    add-int/lit8 v0, p0, -0x1

    goto :goto_0

    :cond_2
    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, p0

    :goto_0
    aget p0, v1, v0

    return p0
.end method

.method public static e(F)F
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/android/gallery3d/filtershow/aperture/a;->d:[F

    array-length v3, v2

    const v4, 0x3d4ccccd    # 0.05f

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    sub-float v2, p0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    sget-object p0, Lcom/android/gallery3d/filtershow/aperture/a;->c:[F

    aget p0, p0, v1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    sget-object v2, Lcom/android/gallery3d/filtershow/aperture/a;->e:[F

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget v3, v2, v1

    sub-float v3, p0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    sput-object v2, Lcom/android/gallery3d/filtershow/aperture/a;->d:[F

    sget-object p0, Lcom/android/gallery3d/filtershow/aperture/a;->c:[F

    aget p0, p0, v1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    sget-object v1, Lcom/android/gallery3d/filtershow/aperture/a;->f:[F

    array-length v2, v1

    if-ge v0, v2, :cond_5

    aget v2, v1, v0

    sub-float v2, p0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    sput-object v1, Lcom/android/gallery3d/filtershow/aperture/a;->d:[F

    sget-object p0, Lcom/android/gallery3d/filtershow/aperture/a;->c:[F

    aget p0, p0, v0

    return p0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toShow  wrong value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApertureInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static f(Z)V
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/gallery3d/filtershow/aperture/a;->e:[F

    sput-object p0, Lcom/android/gallery3d/filtershow/aperture/a;->d:[F

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/gallery3d/filtershow/aperture/a;->f:[F

    sput-object p0, Lcom/android/gallery3d/filtershow/aperture/a;->d:[F

    :goto_0
    return-void
.end method

.method public static g(F)F
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/gallery3d/filtershow/aperture/a;->c:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    sub-float v1, p0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3d4ccccd    # 0.05f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    sget-object p0, Lcom/android/gallery3d/filtershow/aperture/a;->d:[F

    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toReal  wrong value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApertureInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method


# virtual methods
.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/aperture/a;->b:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/aperture/a;->a:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApetureInfo : isAper?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/aperture/a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   done?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/aperture/a;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
