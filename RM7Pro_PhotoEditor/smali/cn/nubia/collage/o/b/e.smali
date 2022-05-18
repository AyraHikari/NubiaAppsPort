.class public abstract Lcn/nubia/collage/o/b/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected a:Z

.field protected b:F

.field protected c:F

.field protected d:Lcn/nubia/collage/o/a/c;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/collage/o/b/e;->a:Z

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/Canvas;Z)V
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcn/nubia/collage/o/b/e;->a:Z

    return v0
.end method

.method public abstract c()Landroid/graphics/Rect;
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(Lcn/nubia/collage/o/a/c;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/o/b/e;->d:Lcn/nubia/collage/o/a/c;

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/nubia/collage/o/b/e;->a:Z

    return-void
.end method
