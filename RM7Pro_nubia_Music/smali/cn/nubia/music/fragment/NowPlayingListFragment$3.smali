.class Lcn/nubia/music/fragment/NowPlayingListFragment$3;
.super Ljava/lang/Object;
.source "NowPlayingListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/NowPlayingListFragment;->removeAllTracks()V
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
    .line 159
    iput-object p1, p0, Lcn/nubia/music/fragment/NowPlayingListFragment$3;->a:Lcn/nubia/music/fragment/NowPlayingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    iget-object v1, p0, Lcn/nubia/music/fragment/NowPlayingListFragment$3;->a:Lcn/nubia/music/fragment/NowPlayingListFragment;

    iget-object v1, v1, Lcn/nubia/music/fragment/NowPlayingListFragment;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcn/nubia/music/app/MusicPlayer;->removeTracks(II)I

    .line 164
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment$3;->a:Lcn/nubia/music/fragment/NowPlayingListFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/NowPlayingListFragment;->access$000(Lcn/nubia/music/fragment/NowPlayingListFragment;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 165
    return-void
.end method
