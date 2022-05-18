.class Lcn/nubia/commonui/actionbar/internal/widget/ListViewCompat$a;
.super Lcn/nubia/commonui/actionbar/graphics/drawable/DrawableWrapper;
.source "ListViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/widget/ListViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ListViewCompat$a;->a:Z

    .line 343
    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 0

    .prologue
    .line 346
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ListViewCompat$a;->a:Z

    .line 347
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ListViewCompat$a;->a:Z

    if-eqz v0, :cond_0

    .line 360
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 362
    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ListViewCompat$a;->a:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/actionbar/graphics/drawable/DrawableWrapper;->setHotspot(FF)V

    .line 369
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ListViewCompat$a;->a:Z

    if-eqz v0, :cond_0

    .line 374
    invoke-super {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/actionbar/graphics/drawable/DrawableWrapper;->setHotspotBounds(IIII)V

    .line 376
    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ListViewCompat$a;->a:Z

    if-eqz v0, :cond_0

    .line 352
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/graphics/drawable/DrawableWrapper;->setState([I)Z

    move-result v0

    .line 354
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ListViewCompat$a;->a:Z

    if-eqz v0, :cond_0

    .line 381
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/actionbar/graphics/drawable/DrawableWrapper;->setVisible(ZZ)Z

    move-result v0

    .line 383
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
