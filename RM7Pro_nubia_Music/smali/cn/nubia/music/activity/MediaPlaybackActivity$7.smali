.class Lcn/nubia/music/activity/MediaPlaybackActivity$7;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1199
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$7;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 1205
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$7;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$4100(Lcn/nubia/music/activity/MediaPlaybackActivity;I)V

    .line 1206
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1207
    return-void
.end method
