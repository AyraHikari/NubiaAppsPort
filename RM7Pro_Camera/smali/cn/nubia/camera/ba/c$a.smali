.class abstract Lcn/nubia/camera/ba/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ba/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field private a:F

.field b:[I

.field c:[F

.field d:[F

.field e:[F

.field private f:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcn/nubia/camera/ba/c$a;->a:F

    .line 23
    iput p2, p0, Lcn/nubia/camera/ba/c$a;->f:F

    .line 24
    invoke-virtual {p0, p1}, Lcn/nubia/camera/ba/c$a;->a(F)V

    return-void
.end method


# virtual methods
.method public a(I)F
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 31
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/ba/c$a;->b:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 32
    aget v3, v2, v1

    if-ge p1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    .line 37
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ba/c$a;->c:[F

    array-length v3, v0

    if-ge v1, v3, :cond_3

    add-int/lit8 v0, v1, -0x1

    goto :goto_2

    :cond_3
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 39
    :goto_2
    iget-object v1, p0, Lcn/nubia/camera/ba/c$a;->c:[F

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_4

    iget-object v3, p0, Lcn/nubia/camera/ba/c$a;->d:[F

    aget v3, v3, v0

    aget v1, v1, v0

    aget v0, v2, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v3, v1

    goto :goto_3

    :cond_4
    const/high16 v3, 0x42c80000    # 100.0f

    iget-object v4, p0, Lcn/nubia/camera/ba/c$a;->e:[F

    aget v4, v4, v0

    aget v1, v1, v0

    aget v0, v2, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v4, v1

    div-float/2addr v3, v4

    .line 43
    :goto_3
    iget p1, p0, Lcn/nubia/camera/ba/c$a;->a:F

    cmpl-float v0, v3, p1

    const/4 v1, 0x0

    if-lez v0, :cond_5

    move v3, p1

    goto :goto_4

    :cond_5
    cmpg-float p1, p1, v1

    if-gez p1, :cond_6

    move v3, v1

    :cond_6
    :goto_4
    return v3
.end method

.method abstract a(F)V
.end method

.method public b(F)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 48
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/ba/c$a;->d:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 49
    aget v3, v2, v1

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    move v1, v0

    goto :goto_3

    .line 54
    :cond_2
    iget-object v3, p0, Lcn/nubia/camera/ba/c$a;->c:[F

    array-length v4, v3

    if-ge v1, v4, :cond_3

    goto :goto_2

    :cond_3
    array-length v1, v3

    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 56
    :goto_3
    iget-object v3, p0, Lcn/nubia/camera/ba/c$a;->c:[F

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_4

    iget-object v4, p0, Lcn/nubia/camera/ba/c$a;->b:[I

    aget v4, v4, v1

    int-to-float v4, v4

    aget v2, v2, v1

    sub-float/2addr p1, v2

    aget v1, v3, v1

    div-float/2addr p1, v1

    add-float/2addr v4, p1

    float-to-int p1, v4

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcn/nubia/camera/ba/c$a;->b:[I

    aget v2, v2, v1

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v4, p1

    iget-object p1, p0, Lcn/nubia/camera/ba/c$a;->e:[F

    aget p1, p1, v1

    sub-float/2addr v4, p1

    aget p1, v3, v1

    div-float/2addr v4, p1

    add-float/2addr v2, v4

    float-to-int p1, v2

    :goto_4
    const/16 v1, 0x64

    if-le p1, v1, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    if-gez p1, :cond_6

    goto :goto_5

    :cond_6
    move v0, p1

    :goto_5
    return v0
.end method
