.class Lcn/nubia/music/fragment/CoverFragment$2;
.super Ljava/lang/Object;
.source "CoverFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/CoverFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/CoverFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/CoverFragment;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcn/nubia/music/fragment/CoverFragment$2;->a:Lcn/nubia/music/fragment/CoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment$2;->a:Lcn/nubia/music/fragment/CoverFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/CoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->createSearchLyricDialog()V

    .line 246
    return-void
.end method
