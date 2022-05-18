.class Landroid/support/v4/view/ViewCompat$ViewCompatApi16Impl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatApi15Impl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatApi16Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1003
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi15Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 2

    .prologue
    .line 1049
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .line 1050
    if-eqz v1, :cond_0

    .line 1051
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    .line 1053
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1079
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    return v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1030
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1068
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1063
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 1058
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1084
    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1006
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1014
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 1015
    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 1018
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->postInvalidateOnAnimation(IIII)V

    .line 1019
    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1022
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1023
    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 1026
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 1027
    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1074
    invoke-virtual {p1}, Landroid/view/View;->requestFitSystemWindows()V

    .line 1075
    return-void
.end method

.method public setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1089
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1090
    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1010
    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1011
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1037
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1038
    const/4 p2, 0x2

    .line 1041
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1042
    return-void
.end method
