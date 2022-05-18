.class Landroidx/core/f/u$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/f/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method static a(Landroid/view/View;Landroidx/core/f/ac;Landroid/graphics/Rect;)Landroidx/core/f/ac;
    .locals 1

    .line 4430
    invoke-virtual {p1}, Landroidx/core/f/ac;->i()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4433
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object p0

    .line 4432
    invoke-static {p0}, Landroidx/core/f/ac;->a(Landroid/view/WindowInsets;)Landroidx/core/f/ac;

    move-result-object p0

    return-object p0

    .line 4435
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-object p1
.end method
