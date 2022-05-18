.class Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$3;
.super Ljava/lang/Object;
.source "NubiaWirelessTouPingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->startThreadRunableForUSBCollectData(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

.field final synthetic val$cast_app:Ljava/lang/String;

.field final synthetic val$cast_package:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .prologue
    .line 520
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$3;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$3;->val$cast_package:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$3;->val$cast_app:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 524
    :try_start_0
    const-string v6, "content://cn.nubia.touping.TouPingProvider/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 525
    .local v5, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 526
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "BURYINGPOINT_WIRELESS_CALL44"

    const-string v7, "NubiaWirelessTouPingService"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$3;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-virtual {v6}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, ""

    const-string v8, "CALL_44"

    invoke-virtual {v6, v5, v7, v8, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 530
    .local v1, "bundleResult":Landroid/os/Bundle;
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$3;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$000(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)J

    move-result-wide v2

    .line 531
    .local v2, "durationTime":J
    const-string v6, "duration"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v6, "cast_package"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$3;->val$cast_package:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v6, "cast_app"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$3;->val$cast_app:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$3;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v6, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setAllNeedData2SystemForUSBMirror(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    .end local v2    # "durationTime":J
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 535
    :catch_0
    move-exception v4

    .line 536
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
