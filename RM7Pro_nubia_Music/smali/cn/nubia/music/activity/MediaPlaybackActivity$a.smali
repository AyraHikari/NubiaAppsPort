.class Lcn/nubia/music/activity/MediaPlaybackActivity$a;
.super Landroid/database/ContentObserver;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/MediaPlaybackActivity;
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
            "Lcn/nubia/music/activity/MediaPlaybackActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/MediaPlaybackActivity;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 188
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 189
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 194
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/activity/MediaPlaybackActivity;

    .line 195
    if-eqz v0, :cond_0

    .line 196
    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$200(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    .line 199
    :cond_0
    return-void
.end method
