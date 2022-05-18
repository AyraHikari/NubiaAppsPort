.class Landroid/support/v4/view/ViewCompat$ViewCompatApi26Impl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatApi24Impl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatApi26Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1523
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi24Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public addKeyboardNavigationClusters(Landroid/view/View;Ljava/util/Collection;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1568
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 1569
    return-void
.end method

.method public getNextClusterForwardId(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1531
    invoke-virtual {p1}, Landroid/view/View;->getNextClusterForwardId()I

    move-result v0

    return v0
.end method

.method public isFocusedByDefault(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1551
    invoke-virtual {p1}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    return v0
.end method

.method public isKeyboardNavigationCluster(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1541
    invoke-virtual {p1}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    move-result v0

    return v0
.end method

.method public keyboardNavigationClusterSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 1562
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public restoreDefaultFocus(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1573
    invoke-virtual {p1}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0
.end method

.method public setFocusedByDefault(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1556
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusedByDefault(Z)V

    .line 1557
    return-void
.end method

.method public setKeyboardNavigationCluster(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1546
    invoke-virtual {p1, p2}, Landroid/view/View;->setKeyboardNavigationCluster(Z)V

    .line 1547
    return-void
.end method

.method public setNextClusterForwardId(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1536
    invoke-virtual {p1, p2}, Landroid/view/View;->setNextClusterForwardId(I)V

    .line 1537
    return-void
.end method

.method public setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1526
    invoke-virtual {p1, p2}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1527
    return-void
.end method
