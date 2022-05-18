.class Landroid/support/v4/view/ViewCompat$ViewCompatApi24Impl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatApi23Impl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatApi24Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1488
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi23Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDragAndDrop(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1513
    invoke-virtual {p1}, Landroid/view/View;->cancelDragAndDrop()V

    .line 1514
    return-void
.end method

.method public dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1496
    invoke-virtual {p1}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 1497
    return-void
.end method

.method public dispatchStartTemporaryDetach(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1491
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1492
    return-void
.end method

.method public setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V
    .locals 1

    .prologue
    .line 1501
    if-eqz p2, :cond_0

    .line 1502
    invoke-virtual {p2}, Landroid/support/v4/view/PointerIconCompat;->getPointerIcon()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/view/PointerIcon;

    check-cast v0, Landroid/view/PointerIcon;

    .line 1501
    invoke-virtual {p1, v0}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 1503
    return-void

    .line 1502
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V
    .locals 0

    .prologue
    .line 1518
    invoke-virtual {p1, p2}, Landroid/view/View;->updateDragShadow(Landroid/view/View$DragShadowBuilder;)V

    .line 1519
    return-void
.end method
