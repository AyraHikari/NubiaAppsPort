.class Lcn/nubia/music/activity/MediaPlaybackActivity$13$1;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/MediaPlaybackActivity$13;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/MediaPlaybackActivity$13;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/MediaPlaybackActivity$13;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$13$1;->a:Lcn/nubia/music/activity/MediaPlaybackActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$13$1;->a:Lcn/nubia/music/activity/MediaPlaybackActivity$13;

    iget-object v0, v0, Lcn/nubia/music/activity/MediaPlaybackActivity$13;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->finish()V

    .line 442
    return-void
.end method
