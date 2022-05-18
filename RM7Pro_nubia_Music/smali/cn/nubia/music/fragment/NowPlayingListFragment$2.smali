.class Lcn/nubia/music/fragment/NowPlayingListFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "NowPlayingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/NowPlayingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/NowPlayingListFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/NowPlayingListFragment;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcn/nubia/music/fragment/NowPlayingListFragment$2;->a:Lcn/nubia/music/fragment/NowPlayingListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn.nubia.music.preset.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment$2;->a:Lcn/nubia/music/fragment/NowPlayingListFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/NowPlayingListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn.nubia.music.preset.queuechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment$2;->a:Lcn/nubia/music/fragment/NowPlayingListFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/NowPlayingListFragment;->queueChanged()V

    goto :goto_0
.end method
