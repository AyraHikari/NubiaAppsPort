.class Lcn/nubia/music/fragment/MyPlaylistFragment$3$1;
.super Ljava/lang/Object;
.source "MyPlaylistFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/MyPlaylistFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/MyPlaylistFragment$3;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/MyPlaylistFragment$3;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$3$1;->a:Lcn/nubia/music/fragment/MyPlaylistFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$3$1;->a:Lcn/nubia/music/fragment/MyPlaylistFragment$3;

    iget-object v0, v0, Lcn/nubia/music/fragment/MyPlaylistFragment$3;->c:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$3$1;->a:Lcn/nubia/music/fragment/MyPlaylistFragment$3;

    iget-object v1, v1, Lcn/nubia/music/fragment/MyPlaylistFragment$3;->a:[J

    invoke-static {v0, v1}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$000(Lcn/nubia/music/fragment/MyPlaylistFragment;[J)V

    .line 292
    return-void
.end method
