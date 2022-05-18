.class Lcn/nubia/music/activity/MediaPlaybackActivity$9;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
    .line 1541
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$9;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 1546
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$9;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1000(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$9;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1000(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->a()V

    .line 1548
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$9;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1002(Lcn/nubia/music/activity/MediaPlaybackActivity;Lcn/nubia/music/activity/MediaPlaybackActivity$c;)Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    .line 1551
    :cond_0
    return-void
.end method
