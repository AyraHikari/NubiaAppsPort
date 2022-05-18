.class Lcn/nubia/music/activity/PlayListDetailActivity$4$1;
.super Ljava/lang/Object;
.source "PlayListDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/PlayListDetailActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/PlayListDetailActivity$4;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/PlayListDetailActivity$4;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcn/nubia/music/activity/PlayListDetailActivity$4$1;->a:Lcn/nubia/music/activity/PlayListDetailActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity$4$1;->a:Lcn/nubia/music/activity/PlayListDetailActivity$4;

    iget-object v0, v0, Lcn/nubia/music/activity/PlayListDetailActivity$4;->b:Lcn/nubia/music/activity/PlayListDetailActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayListDetailActivity$4$1;->a:Lcn/nubia/music/activity/PlayListDetailActivity$4;

    iget-object v1, v1, Lcn/nubia/music/activity/PlayListDetailActivity$4;->b:Lcn/nubia/music/activity/PlayListDetailActivity;

    iget-object v1, v1, Lcn/nubia/music/activity/PlayListDetailActivity;->mPlaylistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcn/nubia/music/utils/MusicUtils;->removePlaylist(Landroid/content/Context;J)V

    .line 189
    return-void
.end method
