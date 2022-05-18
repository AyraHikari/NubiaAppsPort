.class Lcn/nubia/music/activity/MediaPlaybackActivity$2;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;


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
    .line 930
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$2;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 2

    .prologue
    .line 934
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$2;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$2;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$3400(Lcn/nubia/music/activity/MediaPlaybackActivity;)[I

    move-result-object v1

    aget v1, v1, p1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$3500(Lcn/nubia/music/activity/MediaPlaybackActivity;I)V

    .line 935
    return-void
.end method
