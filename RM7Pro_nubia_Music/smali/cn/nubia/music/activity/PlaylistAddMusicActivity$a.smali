.class Lcn/nubia/music/activity/PlaylistAddMusicActivity$a;
.super Landroid/database/ContentObserver;
.source "PlaylistAddMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/PlaylistAddMusicActivity;
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
            "Lcn/nubia/music/activity/PlaylistAddMusicActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/PlaylistAddMusicActivity;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 142
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 143
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 148
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    .line 150
    if-eqz v0, :cond_0

    .line 151
    invoke-static {v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->access$400(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)V

    .line 154
    :cond_0
    return-void
.end method
