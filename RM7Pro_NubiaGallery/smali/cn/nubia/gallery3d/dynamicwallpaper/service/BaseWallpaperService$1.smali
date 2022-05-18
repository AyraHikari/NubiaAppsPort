.class Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$1;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 205
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$1;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->access$302(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;Z)Z

    :cond_0
    return-void
.end method
