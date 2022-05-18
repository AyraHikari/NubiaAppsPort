.class public Lpl/droidsonroids/gif/MultiCallback;
.super Ljava/lang/Object;
.source "MultiCallback.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;
    }
.end annotation


# instance fields
.field private final mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 73
    :goto_0
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 74
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;

    .line 75
    invoke-virtual {v1}, Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_0

    .line 78
    iget-object v2, p0, Lpl/droidsonroids/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lpl/droidsonroids/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;

    invoke-direct {v1, p1}, Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 27
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;

    .line 28
    invoke-virtual {v1}, Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {v2, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 33
    :cond_0
    iget-object v2, p0, Lpl/droidsonroids/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 90
    :goto_0
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 91
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;

    .line 92
    invoke-virtual {v1}, Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    if-ne v2, p1, :cond_1

    .line 95
    :cond_0
    iget-object v2, p0, Lpl/droidsonroids/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 3

    const/4 v0, 0x0

    .line 40
    :goto_0
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 41
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;

    .line 42
    invoke-virtual {v1}, Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/view/View;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 47
    :cond_0
    iget-object v2, p0, Lpl/droidsonroids/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 2

    const/4 p2, 0x0

    .line 54
    :goto_0
    iget-object v0, p0, Lpl/droidsonroids/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 55
    iget-object v0, p0, Lpl/droidsonroids/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;

    .line 56
    invoke-virtual {v0}, Lpl/droidsonroids/gif/MultiCallback$ViewWeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1, p1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 61
    :cond_0
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mViewList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
