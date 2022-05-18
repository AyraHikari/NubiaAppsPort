.class Lcn/nubia/music/MediaPlaybackService$12;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MediaPlaybackService;->doInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 712
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$12;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 715
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$12;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->registerExternalStorageListener()V

    .line 716
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$12;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->registerA2dpServiceListener()V

    .line 717
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$12;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$2200(Lcn/nubia/music/MediaPlaybackService;)V

    .line 718
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$12;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$2300(Lcn/nubia/music/MediaPlaybackService;)V

    .line 719
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$12;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$2400(Lcn/nubia/music/MediaPlaybackService;)V

    .line 720
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$12;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$2500(Lcn/nubia/music/MediaPlaybackService;)V

    .line 721
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$12;->a:Lcn/nubia/music/MediaPlaybackService;

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$12;->a:Lcn/nubia/music/MediaPlaybackService;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Lcn/nubia/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v1, v0}, Lcn/nubia/music/MediaPlaybackService;->access$2602(Lcn/nubia/music/MediaPlaybackService;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 722
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$12;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$2600(Lcn/nubia/music/MediaPlaybackService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$12;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$2700(Lcn/nubia/music/MediaPlaybackService;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 723
    return-void
.end method
