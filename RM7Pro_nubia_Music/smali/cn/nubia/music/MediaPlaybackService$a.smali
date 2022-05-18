.class Lcn/nubia/music/MediaPlaybackService$a;
.super Landroid/database/ContentObserver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/music/MediaPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/music/MediaPlaybackService;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 696
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 697
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService$a;->a:Ljava/lang/ref/WeakReference;

    .line 698
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 702
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 703
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/MediaPlaybackService;

    .line 704
    if-eqz v0, :cond_0

    .line 705
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$2100(Lcn/nubia/music/MediaPlaybackService;)V

    .line 707
    :cond_0
    return-void
.end method
