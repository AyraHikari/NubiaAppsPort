.class Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$5;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MiracastTouPingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;


# direct methods
.method constructor <init>(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .prologue
    .line 636
    iput-object p1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$5;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 639
    const-string v0, "MiracastTouPingService"

    const-string v1, "changed MediaRouter onRouteAdded 1111111 = onRouteAdded"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$5;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1400(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;I)V

    .line 641
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 645
    const-string v0, "MiracastTouPingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed MediaRouter onRouteChanged  info.isSelected() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcn/nubia/touping/MiracastTouPing/MiracastRouterInfoUtils;->isSelected(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  changed MediaRouter 222222 = onRouteChanged info.isConnecting() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$5;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1400(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;I)V

    .line 647
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcn/nubia/touping/MiracastTouPing/MiracastRouterInfoUtils;->isSelected(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    :cond_0
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 654
    const-string v0, "MiracastTouPingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed MediaRouter onRouteRemoved info.isSelected() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcn/nubia/touping/MiracastTouPing/MiracastRouterInfoUtils;->isSelected(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "changed MediaRouter 333333 = onRouteSelected  info.isConnecting() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$5;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1400(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;I)V

    .line 656
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 660
    const-string v0, "MiracastTouPingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed MediaRouter onRouteSelected info.isSelected() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcn/nubia/touping/MiracastTouPing/MiracastRouterInfoUtils;->isSelected(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "changed MediaRouter 444444 = onRouteSelected  info.isConnecting() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$5;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1400(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;I)V

    .line 662
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 666
    const-string v0, "MiracastTouPingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed MediaRouter onRouteUnselected info.isSelected() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcn/nubia/touping/MiracastTouPing/MiracastRouterInfoUtils;->isSelected(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "changed MediaRouter 5555555 = onRouteUnselected  info.isConnecting() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$5;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1400(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;I)V

    .line 668
    if-eqz p3, :cond_0

    invoke-static {p3}, Lcn/nubia/touping/MiracastTouPing/MiracastRouterInfoUtils;->isSelected(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    :cond_0
    return-void
.end method
