.class Lcn/nubia/music/fragment/PlayHistoryFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "PlayHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/PlayHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/PlayHistoryFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/PlayHistoryFragment;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcn/nubia/music/fragment/PlayHistoryFragment$4;->a:Lcn/nubia/music/fragment/PlayHistoryFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment$4;->a:Lcn/nubia/music/fragment/PlayHistoryFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mTrackList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment$4;->a:Lcn/nubia/music/fragment/PlayHistoryFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 233
    :cond_0
    return-void
.end method
