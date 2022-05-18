.class Landroid/support/v7/widget/v$a;
.super La/b/d/c/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private b:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, La/b/d/c/a/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroid/support/v7/widget/v$a;->b:Z

    return-void
.end method


# virtual methods
.method c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/widget/v$a;->b:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/v$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, La/b/d/c/a/c;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/v$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, La/b/d/c/a/c;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/v$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, La/b/d/c/a/c;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/v$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, La/b/d/c/a/c;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/v$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, La/b/d/c/a/c;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
