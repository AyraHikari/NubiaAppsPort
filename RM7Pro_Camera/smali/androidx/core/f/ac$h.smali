.class Landroidx/core/f/ac$h;
.super Landroidx/core/f/ac$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/f/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/f/ac;Landroid/view/WindowInsets;)V
    .locals 0

    .line 752
    invoke-direct {p0, p1, p2}, Landroidx/core/f/ac$g;-><init>(Landroidx/core/f/ac;Landroid/view/WindowInsets;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/f/ac;Landroidx/core/f/ac$h;)V
    .locals 0

    .line 756
    invoke-direct {p0, p1, p2}, Landroidx/core/f/ac$g;-><init>(Landroidx/core/f/ac;Landroidx/core/f/ac$g;)V

    return-void
.end method


# virtual methods
.method e()Landroidx/core/f/c;
    .locals 1

    .line 762
    iget-object v0, p0, Landroidx/core/f/ac$h;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/f/c;->a(Ljava/lang/Object;)Landroidx/core/f/c;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 774
    :cond_0
    instance-of v0, p1, Landroidx/core/f/ac$h;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 775
    :cond_1
    check-cast p1, Landroidx/core/f/ac$h;

    .line 777
    iget-object v0, p0, Landroidx/core/f/ac$h;->b:Landroid/view/WindowInsets;

    iget-object p1, p1, Landroidx/core/f/ac$h;->b:Landroid/view/WindowInsets;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method f()Landroidx/core/f/ac;
    .locals 1

    .line 768
    iget-object v0, p0, Landroidx/core/f/ac$h;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/f/ac;->a(Landroid/view/WindowInsets;)Landroidx/core/f/ac;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 782
    iget-object v0, p0, Landroidx/core/f/ac$h;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hashCode()I

    move-result v0

    return v0
.end method
