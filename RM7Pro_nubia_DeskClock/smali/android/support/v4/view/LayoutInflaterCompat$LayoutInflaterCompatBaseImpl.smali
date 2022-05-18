.class Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatBaseImpl;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/LayoutInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutInflaterCompatBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFactory(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    .line 118
    .local v0, "factory":Landroid/view/LayoutInflater$Factory;
    instance-of v1, v0, Landroid/support/v4/view/LayoutInflaterCompat$Factory2Wrapper;

    if-eqz v1, :cond_0

    .line 119
    check-cast v0, Landroid/support/v4/view/LayoutInflaterCompat$Factory2Wrapper;

    .end local v0    # "factory":Landroid/view/LayoutInflater$Factory;
    iget-object v1, v0, Landroid/support/v4/view/LayoutInflaterCompat$Factory2Wrapper;->mDelegateFactory:Landroid/support/v4/view/LayoutInflaterFactory;

    .line 121
    :goto_0
    return-object v1

    .restart local v0    # "factory":Landroid/view/LayoutInflater$Factory;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "factory"    # Landroid/support/v4/view/LayoutInflaterFactory;

    .prologue
    .line 96
    if-eqz p2, :cond_0

    new-instance v0, Landroid/support/v4/view/LayoutInflaterCompat$Factory2Wrapper;

    invoke-direct {v0, p2}, Landroid/support/v4/view/LayoutInflaterCompat$Factory2Wrapper;-><init>(Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 98
    .local v0, "factory2":Landroid/view/LayoutInflater$Factory2;
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatBaseImpl;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 99
    return-void

    .line 96
    .end local v0    # "factory2":Landroid/view/LayoutInflater$Factory2;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .prologue
    .line 102
    invoke-virtual {p1, p2}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 104
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    .line 105
    .local v0, "f":Landroid/view/LayoutInflater$Factory;
    instance-of v1, v0, Landroid/view/LayoutInflater$Factory2;

    if-eqz v1, :cond_0

    .line 108
    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    .end local v0    # "f":Landroid/view/LayoutInflater$Factory;
    invoke-static {p1, v0}, Landroid/support/v4/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 113
    :goto_0
    return-void

    .line 111
    .restart local v0    # "f":Landroid/view/LayoutInflater$Factory;
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0
.end method
