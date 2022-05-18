.class Lcn/nubia/music/fragment/MyPlaylistFragment$1;
.super Landroid/database/ContentObserver;
.source "MyPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/MyPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/MyPlaylistFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/MyPlaylistFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$1;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 106
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$1;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->loadData()V

    .line 107
    return-void
.end method
