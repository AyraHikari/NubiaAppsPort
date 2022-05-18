.class Lcn/nubia/music/fragment/NowPlayingListFragment$4;
.super Ljava/lang/Object;
.source "NowPlayingListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 169
    iput-object p1, p0, Lcn/nubia/music/fragment/NowPlayingListFragment$4;->a:Lcn/nubia/music/fragment/NowPlayingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 171
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 172
    return-void
.end method
