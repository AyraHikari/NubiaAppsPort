.class Landroid/support/v4/view/ViewCompat$ViewCompatApi26Impl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatApi24Impl;
.source ""


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
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    return-void
.end method

.method public getNextClusterForwardId(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getNextClusterForwardId()I

    move-result p1

    return p1
.end method

.method public hasExplicitFocusable(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result p1

    return p1
.end method

.method public isFocusedByDefault(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->isFocusedByDefault()Z

    move-result p1

    return p1
.end method

.method public isKeyboardNavigationCluster(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    move-result p1

    return p1
.end method

.method public keyboardNavigationClusterSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public restoreDefaultFocus(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result p1

    return p1
.end method

.method public setFocusedByDefault(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusedByDefault(Z)V

    return-void
.end method

.method public setKeyboardNavigationCluster(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setKeyboardNavigationCluster(Z)V

    return-void
.end method

.method public setNextClusterForwardId(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setNextClusterForwardId(I)V

    return-void
.end method

.method public setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method
