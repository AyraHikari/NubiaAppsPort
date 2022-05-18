.class final Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "MultiCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/MultiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewWeakReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {p0}, Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast p1, Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 119
    invoke-virtual {p0}, Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
