.class Lcn/nubia/music/activity/MediaPlaybackActivity$1;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$1;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$1;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$000(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/utils/CtsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$1;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->finish()V

    .line 161
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$1;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$000(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/utils/CtsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->markCtsPermissionIsNotFirstLaunch()V

    .line 162
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$1;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$100(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    goto :goto_0
.end method
