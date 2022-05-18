.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi21Impl;
.super Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi18Impl;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi18Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public isTransitionGroup(Landroid/view/ViewGroup;)Z
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    return v0
.end method

.method public setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 91
    return-void
.end method
