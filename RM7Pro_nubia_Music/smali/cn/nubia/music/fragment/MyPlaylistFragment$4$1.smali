.class Lcn/nubia/music/fragment/MyPlaylistFragment$4$1;
.super Ljava/lang/Object;
.source "MyPlaylistFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/MyPlaylistFragment$4;->onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/MyPlaylistFragment$4;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/MyPlaylistFragment$4;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4$1;->a:Lcn/nubia/music/fragment/MyPlaylistFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4$1;->a:Lcn/nubia/music/fragment/MyPlaylistFragment$4;

    iget-object v0, v0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$100(Lcn/nubia/music/fragment/MyPlaylistFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4$1;->a:Lcn/nubia/music/fragment/MyPlaylistFragment$4;

    iget-object v0, v0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4$1;->a:Lcn/nubia/music/fragment/MyPlaylistFragment$4;

    iget-object v0, v0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;

    .line 362
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;->setEnable(Z)V

    .line 363
    invoke-interface {v0}, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;->onForceVisible()V

    goto :goto_0
.end method
