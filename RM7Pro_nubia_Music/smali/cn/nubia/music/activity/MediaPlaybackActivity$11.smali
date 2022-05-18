.class Lcn/nubia/music/activity/MediaPlaybackActivity$11;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/MediaPlaybackActivity;->initView()V
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
    .line 230
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 234
    .line 236
    new-instance v0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity$11;Landroid/view/View;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 259
    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 260
    return-void
.end method
