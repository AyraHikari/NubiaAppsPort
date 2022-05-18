.class public Lcn/nubia/camera/aimoon/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:F = 2.0f

.field public static b:F = 6.0f

.field public static final c:Z

.field public static d:Z

.field public static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MoonUtil"

    const/4 v1, 0x3

    .line 30
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/camera/aimoon/l;->c:Z

    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lcn/nubia/camera/aimoon/l;->d:Z

    .line 32
    sput-boolean v0, Lcn/nubia/camera/aimoon/l;->e:Z

    return-void
.end method

.method public static a(FF)F
    .locals 1

    div-float/2addr p0, p1

    const/high16 p1, 0x40400000    # 3.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static a(Lcom/android/preference/c;)I
    .locals 2

    const-string v0, "pref_moon_type_key"

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;FFF)Landroid/graphics/Rect;
    .locals 5

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x1

    aget v2, p0, v2

    const/4 v3, 0x2

    aget v3, p0, v3

    const/4 v4, 0x3

    aget p0, p0, v4

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    div-float/2addr p1, p2

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float p0, p1, p0

    const p2, 0x358637bd    # 1.0E-6f

    cmpl-float p0, p0, p2

    if-lez p0, :cond_0

    .line 50
    iget p0, v0, Landroid/graphics/Rect;->right:I

    iget p2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p2

    int-to-float p0, p0

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    div-float/2addr p0, p1

    .line 51
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, p1

    .line 52
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    int-to-float p1, p1

    div-float/2addr p1, p2

    .line 53
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, p2

    mul-float/2addr p0, p3

    sub-float p2, p1, p0

    float-to-int p2, p2

    .line 54
    iput p2, v0, Landroid/graphics/Rect;->left:I

    add-float/2addr p1, p0

    float-to-int p0, p1

    .line 55
    iput p0, v0, Landroid/graphics/Rect;->right:I

    mul-float/2addr v1, p3

    sub-float p0, v2, v1

    float-to-int p0, p0

    .line 56
    iput p0, v0, Landroid/graphics/Rect;->top:I

    add-float/2addr v2, v1

    float-to-int p0, v2

    .line 57
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-object v0
.end method
