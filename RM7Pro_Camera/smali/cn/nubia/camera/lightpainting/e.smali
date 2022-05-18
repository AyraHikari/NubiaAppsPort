.class public Lcn/nubia/camera/lightpainting/e;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# instance fields
.field private final b:[I

.field private final c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 6

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 26
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcn/nubia/camera/lightpainting/e;->b:[I

    const-string v0, "-1"

    const-string v1, "0.5"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    const-string v5, "4"

    .line 27
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/lightpainting/e;->c:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        -0x1
        0x64
        0xc8
        0x190
        0x320
        0x640
    .end array-data
.end method


# virtual methods
.method public a()Lcn/nubia/camera/k/x$b;
    .locals 10

    .line 35
    invoke-super {p0}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v0

    .line 36
    invoke-super {p0}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/x$b;->c()Landroid/util/Size;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v4

    .line 39
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v3

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v5, v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-double v7, v2

    div-double/2addr v5, v7

    const-wide v7, 0x3fb99999a0000000L    # 0.10000000149011612

    const v9, 0x2dc6c00

    invoke-virtual/range {v3 .. v9}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DDI)Landroid/util/Size;

    move-result-object v2

    .line 40
    new-instance v3, Lcn/nubia/camera/k/x$b;

    invoke-direct {v3, p0, v0, v2, v1}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v3
.end method

.method public ab()I
    .locals 1

    .line 97
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x75

    return v0

    .line 100
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->ab()I

    move-result v0

    return v0
.end method

.method protected f()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/e;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f01f1

    .line 79
    invoke-virtual {p0, v1}, Lcn/nubia/camera/lightpainting/e;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_light_draw_step"

    .line 78
    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0

    .line 82
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->f()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method protected h()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected m()J
    .locals 7

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/e;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f01f1

    .line 59
    invoke-virtual {p0, v1}, Lcn/nubia/camera/lightpainting/e;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_light_draw_step"

    .line 58
    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/e;->I()Lcn/nubia/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/b;->e()Landroid/util/Range;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 65
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 66
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/e;->c:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v1, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    return-wide v2

    :cond_1
    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    return-wide v4

    :cond_2
    return-wide v0
.end method

.method public n()I
    .locals 3

    .line 50
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/e;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f01f1

    .line 51
    invoke-virtual {p0, v1}, Lcn/nubia/camera/lightpainting/e;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_light_draw_step"

    .line 50
    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 52
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/e;->b:[I

    aget v0, v1, v0

    return v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected t()Lcn/nubia/b/i;
    .locals 1

    .line 45
    sget-object v0, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    return-object v0
.end method
