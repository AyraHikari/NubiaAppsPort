.class public final Lc/d/a/c/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lc/d/a/b/j/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xd33

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    aget v0, v0, v2

    const/16 v1, 0x800

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lc/d/a/b/j/e;

    invoke-direct {v1, v0, v0}, Lc/d/a/b/j/e;-><init>(II)V

    sput-object v1, Lc/d/a/c/a;->a:Lc/d/a/b/j/e;

    return-void
.end method

.method public static a(Lc/d/a/b/j/e;Lc/d/a/b/j/e;Lc/d/a/b/j/h;Z)I
    .locals 6

    invoke-virtual {p0}, Lc/d/a/b/j/e;->b()I

    move-result v0

    invoke-virtual {p0}, Lc/d/a/b/j/e;->a()I

    move-result p0

    invoke-virtual {p1}, Lc/d/a/b/j/e;->b()I

    move-result v1

    invoke-virtual {p1}, Lc/d/a/b/j/e;->a()I

    move-result p1

    sget-object v2, Lc/d/a/c/a$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    move v4, v2

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    div-int/lit8 p2, v0, 0x2

    div-int/lit8 v3, p0, 0x2

    move v4, v2

    :goto_0
    div-int v5, p2, v4

    if-le v5, v1, :cond_5

    div-int v5, v3, v4

    if-le v5, p1, :cond_5

    mul-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_1
    div-int p2, v0, v1

    div-int p1, p0, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    div-int/lit8 p2, v0, 0x2

    div-int/lit8 v3, p0, 0x2

    move v4, v2

    :goto_1
    div-int v5, p2, v4

    if-gt v5, v1, :cond_3

    div-int v5, v3, v4

    if-le v5, p1, :cond_5

    :cond_3
    mul-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_4
    div-int p2, v0, v1

    div-int p1, p0, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_5
    :goto_2
    if-ge v4, v2, :cond_6

    goto :goto_3

    :cond_6
    move v2, v4

    :goto_3
    invoke-static {v0, p0, v2, p3}, Lc/d/a/c/a;->d(IIIZ)I

    move-result p0

    return p0
.end method

.method public static b(Lc/d/a/b/j/e;Lc/d/a/b/j/e;Lc/d/a/b/j/h;Z)F
    .locals 7

    invoke-virtual {p0}, Lc/d/a/b/j/e;->b()I

    move-result v0

    invoke-virtual {p0}, Lc/d/a/b/j/e;->a()I

    move-result p0

    invoke-virtual {p1}, Lc/d/a/b/j/e;->b()I

    move-result v1

    invoke-virtual {p1}, Lc/d/a/b/j/e;->a()I

    move-result p1

    int-to-float v2, v0

    int-to-float v3, v1

    div-float v3, v2, v3

    int-to-float v4, p0

    int-to-float v5, p1

    div-float v5, v4, v5

    sget-object v6, Lc/d/a/b/j/h;->a:Lc/d/a/b/j/h;

    if-ne p2, v6, :cond_0

    cmpl-float v6, v3, v5

    if-gez v6, :cond_1

    :cond_0
    sget-object v6, Lc/d/a/b/j/h;->b:Lc/d/a/b/j/h;

    if-ne p2, v6, :cond_2

    cmpg-float p2, v3, v5

    if-gez p2, :cond_2

    :cond_1
    div-float/2addr v4, v3

    float-to-int p1, v4

    goto :goto_0

    :cond_2
    div-float p2, v2, v5

    float-to-int v1, p2

    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    if-nez p3, :cond_3

    if-ge v1, v0, :cond_3

    if-lt p1, p0, :cond_4

    :cond_3
    if-eqz p3, :cond_5

    if-eq v1, v0, :cond_5

    if-eq p1, p0, :cond_5

    :cond_4
    int-to-float p0, v1

    div-float p2, p0, v2

    :cond_5
    return p2
.end method

.method public static c(Lc/d/a/b/j/e;)I
    .locals 3

    invoke-virtual {p0}, Lc/d/a/b/j/e;->b()I

    move-result v0

    invoke-virtual {p0}, Lc/d/a/b/j/e;->a()I

    move-result p0

    sget-object v1, Lc/d/a/c/a;->a:Lc/d/a/b/j/e;

    invoke-virtual {v1}, Lc/d/a/b/j/e;->b()I

    move-result v1

    sget-object v2, Lc/d/a/c/a;->a:Lc/d/a/b/j/e;

    invoke-virtual {v2}, Lc/d/a/b/j/e;->a()I

    move-result v2

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float p0, p0

    int-to-float v1, v2

    div-float/2addr p0, v1

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static d(IIIZ)I
    .locals 3

    sget-object v0, Lc/d/a/c/a;->a:Lc/d/a/b/j/e;

    invoke-virtual {v0}, Lc/d/a/b/j/e;->b()I

    move-result v0

    sget-object v1, Lc/d/a/c/a;->a:Lc/d/a/b/j/e;

    invoke-virtual {v1}, Lc/d/a/b/j/e;->a()I

    move-result v1

    :goto_0
    div-int v2, p0, p2

    if-gt v2, v0, :cond_1

    div-int v2, p1, p2

    if-le v2, v1, :cond_0

    goto :goto_1

    :cond_0
    return p2

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    mul-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static e(Lc/d/a/b/n/a;Lc/d/a/b/j/e;)Lc/d/a/b/j/e;
    .locals 1

    invoke-interface {p0}, Lc/d/a/b/n/a;->c()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lc/d/a/b/j/e;->b()I

    move-result v0

    :cond_0
    invoke-interface {p0}, Lc/d/a/b/n/a;->d()I

    move-result p0

    if-gtz p0, :cond_1

    invoke-virtual {p1}, Lc/d/a/b/j/e;->a()I

    move-result p0

    :cond_1
    new-instance p1, Lc/d/a/b/j/e;

    invoke-direct {p1, v0, p0}, Lc/d/a/b/j/e;-><init>(II)V

    return-object p1
.end method
