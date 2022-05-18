.class public abstract Lcn/nubia/collage/o/a/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:Lcn/nubia/collage/o/a/c;


# direct methods
.method public constructor <init>(Lcn/nubia/collage/o/a/c;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/collage/o/a/d;->a:I

    iput-object p1, p0, Lcn/nubia/collage/o/a/d;->b:Lcn/nubia/collage/o/a/c;

    iput p2, p0, Lcn/nubia/collage/o/a/d;->a:I

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/collage/o/a/c;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/a/d;->b:Lcn/nubia/collage/o/a/c;

    return-object v0
.end method

.method public b()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/a/d;->b:Lcn/nubia/collage/o/a/c;

    invoke-virtual {v0}, Lcn/nubia/collage/o/a/c;->c()Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcn/nubia/collage/o/a/d;->a:I

    return v0
.end method

.method public d()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/a/d;->b:Lcn/nubia/collage/o/a/c;

    invoke-virtual {v0}, Lcn/nubia/collage/o/a/c;->e()Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/a/d;->b:Lcn/nubia/collage/o/a/c;

    invoke-virtual {v0}, Lcn/nubia/collage/o/a/c;->f()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method
