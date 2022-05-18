.class Landroid/support/v4/view/ViewCompat$ViewCompatApi19Impl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatApi18Impl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatApi19Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1171
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi18Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityLiveRegion(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1174
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v0

    return v0
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1199
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public isLaidOut(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1189
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    return v0
.end method

.method public isLayoutDirectionResolved(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1194
    invoke-virtual {p1}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v0

    return v0
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1179
    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 1180
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1184
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1185
    return-void
.end method
