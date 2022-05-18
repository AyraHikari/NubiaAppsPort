.class Lcn/nubia/music/activity/MoreActivity$1;
.super Ljava/lang/Object;
.source "MoreActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/MoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/MoreActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/MoreActivity;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcn/nubia/music/activity/MoreActivity$1;->a:Lcn/nubia/music/activity/MoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$1;->a:Lcn/nubia/music/activity/MoreActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/MoreActivity;->access$002(Lcn/nubia/music/activity/MoreActivity;Z)Z

    .line 84
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$1;->a:Lcn/nubia/music/activity/MoreActivity;

    invoke-static {p2}, Lcn/nubia/music/app/scan/IMusicScanService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/music/app/scan/IMusicScanService;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/MoreActivity;->access$102(Lcn/nubia/music/activity/MoreActivity;Lcn/nubia/music/app/scan/IMusicScanService;)Lcn/nubia/music/app/scan/IMusicScanService;

    .line 85
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$1;->a:Lcn/nubia/music/activity/MoreActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MoreActivity;->access$200(Lcn/nubia/music/activity/MoreActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$1;->a:Lcn/nubia/music/activity/MoreActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MoreActivity;->access$300(Lcn/nubia/music/activity/MoreActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$1;->a:Lcn/nubia/music/activity/MoreActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MoreActivity;->access$400(Lcn/nubia/music/activity/MoreActivity;)V

    .line 88
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$1;->a:Lcn/nubia/music/activity/MoreActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/activity/MoreActivity;->access$002(Lcn/nubia/music/activity/MoreActivity;Z)Z

    .line 78
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$1;->a:Lcn/nubia/music/activity/MoreActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/activity/MoreActivity;->access$102(Lcn/nubia/music/activity/MoreActivity;Lcn/nubia/music/app/scan/IMusicScanService;)Lcn/nubia/music/app/scan/IMusicScanService;

    .line 79
    return-void
.end method
