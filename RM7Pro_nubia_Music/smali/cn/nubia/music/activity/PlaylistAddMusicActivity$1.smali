.class Lcn/nubia/music/activity/PlaylistAddMusicActivity$1;
.super Ljava/lang/Object;
.source "PlaylistAddMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/PlaylistAddMusicActivity;->showScanDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$1;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$1;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->access$000(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$1;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->access$000(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/Dialog;->dismiss()V

    .line 62
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$1;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->access$102(Lcn/nubia/music/activity/PlaylistAddMusicActivity;Z)Z

    .line 63
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$1;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    new-instance v1, Lcn/nubia/music/app/scan/MusicScanManager;

    iget-object v2, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$1;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcn/nubia/music/app/scan/MusicScanManager;-><init>(Landroid/content/Context;Z)V

    invoke-static {v0, v1}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->access$202(Lcn/nubia/music/activity/PlaylistAddMusicActivity;Lcn/nubia/music/app/scan/MusicScanManager;)Lcn/nubia/music/app/scan/MusicScanManager;

    .line 65
    :cond_0
    return-void
.end method
