.class Lcn/nubia/music/activity/MediaPlaybackActivity$c$1;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/MediaPlaybackActivity$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/MediaPlaybackActivity$c;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/MediaPlaybackActivity$c;)V
    .locals 0

    .prologue
    .line 1461
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c$1;->a:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1464
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c$1;->a:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->a(Lcn/nubia/music/activity/MediaPlaybackActivity$c;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1465
    return-void
.end method
