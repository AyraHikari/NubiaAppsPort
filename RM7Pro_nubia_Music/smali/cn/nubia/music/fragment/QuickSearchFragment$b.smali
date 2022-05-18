.class Lcn/nubia/music/fragment/QuickSearchFragment$b;
.super Landroid/database/ContentObserver;
.source "QuickSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/QuickSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/music/fragment/QuickSearchFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcn/nubia/music/fragment/QuickSearchFragment;)V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 171
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment$b;->a:Ljava/lang/ref/WeakReference;

    .line 172
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 177
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/fragment/QuickSearchFragment;

    .line 178
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcn/nubia/music/fragment/QuickSearchFragment;->startSearch()V

    .line 181
    :cond_0
    return-void
.end method
