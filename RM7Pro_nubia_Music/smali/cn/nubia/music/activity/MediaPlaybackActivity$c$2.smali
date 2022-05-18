.class Lcn/nubia/music/activity/MediaPlaybackActivity$c$2;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/nubia/music/activity/MediaPlaybackActivity$c;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/MediaPlaybackActivity$c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1486
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c$2;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    iput-object p2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1490
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c$2;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    iget-object v0, v0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$500(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/activity/MediaPlaybackActivity$b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity$b;->a(Ljava/lang/CharSequence;)V

    .line 1491
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c$2;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->a(Lcn/nubia/music/activity/MediaPlaybackActivity$c;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1492
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c$2;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->a(Lcn/nubia/music/activity/MediaPlaybackActivity$c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1493
    return-void
.end method
