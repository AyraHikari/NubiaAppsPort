.class Landroidx/appcompat/widget/c$d;
.super Landroidx/appcompat/widget/p;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ActionMenuView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/c;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/c;Landroid/content/Context;)V
    .locals 2

    .line 628
    iput-object p1, p0, Landroidx/appcompat/widget/c$d;->a:Landroidx/appcompat/widget/c;

    .line 629
    sget v0, Landroidx/appcompat/a$a;->k:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Landroidx/appcompat/widget/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 631
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/c$d;->setClickable(Z)V

    .line 632
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/c$d;->setFocusable(Z)V

    const/4 v0, 0x0

    .line 633
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/c$d;->setVisibility(I)V

    .line 634
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/c$d;->setEnabled(Z)V

    .line 636
    invoke-virtual {p0}, Landroidx/appcompat/widget/c$d;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p0, p2}, Landroidx/appcompat/widget/az;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 638
    new-instance p2, Landroidx/appcompat/widget/c$d$1;

    invoke-direct {p2, p0, p0, p1}, Landroidx/appcompat/widget/c$d$1;-><init>(Landroidx/appcompat/widget/c$d;Landroid/view/View;Landroidx/appcompat/widget/c;)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/c$d;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .line 671
    invoke-super {p0}, Landroidx/appcompat/widget/p;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 675
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/c$d;->playSoundEffect(I)V

    .line 676
    iget-object v0, p0, Landroidx/appcompat/widget/c$d;->a:Landroidx/appcompat/widget/c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->d()Z

    return v1
.end method

.method protected setFrame(IIII)Z
    .locals 4

    .line 692
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/p;->setFrame(IIII)Z

    move-result p1

    .line 695
    invoke-virtual {p0}, Landroidx/appcompat/widget/c$d;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 696
    invoke-virtual {p0}, Landroidx/appcompat/widget/c$d;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 698
    invoke-virtual {p0}, Landroidx/appcompat/widget/c$d;->getWidth()I

    move-result p2

    .line 699
    invoke-virtual {p0}, Landroidx/appcompat/widget/c$d;->getHeight()I

    move-result p4

    .line 700
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 701
    invoke-virtual {p0}, Landroidx/appcompat/widget/c$d;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/c$d;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 702
    invoke-virtual {p0}, Landroidx/appcompat/widget/c$d;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/c$d;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr p2, v1

    .line 703
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p4, v2

    .line 704
    div-int/lit8 p4, p4, 0x2

    sub-int v1, p2, v0

    sub-int v2, p4, v0

    add-int/2addr p2, v0

    add-int/2addr p4, v0

    .line 705
    invoke-static {p3, v1, v2, p2, p4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    return p1
.end method
