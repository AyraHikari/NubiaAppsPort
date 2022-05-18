.class public abstract Lcn/nubia/collage/o/a/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final h:Landroid/graphics/Path$Direction;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field e:Landroid/graphics/Rect;

.field f:Landroid/graphics/Path;

.field g:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    sput-object v0, Lcn/nubia/collage/o/a/c;->h:Landroid/graphics/Path$Direction;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/collage/o/a/c;->a:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/collage/o/a/c;->b:Z

    iput-boolean v0, p0, Lcn/nubia/collage/o/a/c;->c:Z

    iput-boolean v0, p0, Lcn/nubia/collage/o/a/c;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    iput-object v0, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    iput-object v0, p0, Lcn/nubia/collage/o/a/c;->g:Landroid/graphics/Path;

    return-void
.end method

.method public static l(F)Z
    .locals 2

    const v0, 0x38d1b717    # 1.0E-4f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(II)V
    .locals 0

    return-void
.end method

.method public abstract b()I
.end method

.method public abstract c()Landroid/graphics/Path;
.end method

.method public abstract d()I
.end method

.method public abstract e()Landroid/graphics/Path;
.end method

.method public abstract f()Landroid/graphics/Rect;
.end method

.method public abstract g()I
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcn/nubia/collage/o/a/c;->c:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcn/nubia/collage/o/a/c;->b:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcn/nubia/collage/o/a/c;->d:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcn/nubia/collage/o/a/c;->a:Z

    return v0
.end method

.method public abstract m(F)Lcn/nubia/collage/o/a/c;
.end method

.method public n(I)V
    .locals 0

    return-void
.end method

.method public abstract o(I)V
.end method
