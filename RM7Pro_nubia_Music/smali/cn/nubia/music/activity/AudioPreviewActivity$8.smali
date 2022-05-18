.class Lcn/nubia/music/activity/AudioPreviewActivity$8;
.super Ljava/lang/Object;
.source "AudioPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/AudioPreviewActivity;->waitToPlaying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/AudioPreviewActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/AudioPreviewActivity;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$8;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$8;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1600(Lcn/nubia/music/activity/AudioPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    const-string v0, "wait onResume 1000ms, still no onResume, finish"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$8;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1602(Lcn/nubia/music/activity/AudioPreviewActivity;Z)Z

    .line 504
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$8;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$400(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    .line 505
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$8;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->finish()V

    .line 507
    :cond_0
    return-void
.end method
