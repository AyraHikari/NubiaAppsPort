.class Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$2;
.super Ljava/lang/Object;
.source "NubiaWirelessTouPingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->startThreadRunable(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

.field final synthetic val$cast_app:Ljava/lang/String;

.field final synthetic val$cast_package:Ljava/lang/String;

.field final synthetic val$small_window:Z


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .prologue
    .line 489
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$2;->val$cast_package:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$2;->val$cast_app:Ljava/lang/String;

    iput-boolean p4, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$2;->val$small_window:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 493
    :try_start_0
    const-string v7, "content://cn.nubia.touping.TouPingProvider/"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 494
    .local v6, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 495
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "BURYINGPOINT_WIRELESS_CALL4"

    const-string v8, "NubiaWirelessTouPingService"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-virtual {v7}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, ""

    const-string v9, "CALL_4"

    invoke-virtual {v7, v6, v8, v9, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 499
    .local v1, "bundleResult":Landroid/os/Bundle;
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v7}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$000(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)J

    move-result-wide v2

    .line 500
    .local v2, "durationTime":J
    const-string v7, "CALL_4_KEY5"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getRealBitRate()I

    move-result v5

    .line 502
    .local v5, "realBirRate":I
    const-string v7, "CALL_4_KEY8"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v7, "CALL_4_KEY14"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$2;->val$cast_package:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v7, "CALL_4_KEY15"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$2;->val$cast_app:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-boolean v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$2;->val$small_window:Z

    if-eqz v7, :cond_0

    .line 507
    const-string v7, "CALL_4_KEY17"

    const-string v8, "small_window"

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :goto_0
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v7, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setAllNeedData2SystemForWireLess(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 515
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    .end local v2    # "durationTime":J
    .end local v5    # "realBirRate":I
    .end local v6    # "uri":Landroid/net/Uri;
    :goto_1
    return-void

    .line 509
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundleResult":Landroid/os/Bundle;
    .restart local v2    # "durationTime":J
    .restart local v5    # "realBirRate":I
    .restart local v6    # "uri":Landroid/net/Uri;
    :cond_0
    const-string v7, "CALL_4_KEY17"

    const-string v8, "mirror"

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    .end local v2    # "durationTime":J
    .end local v5    # "realBirRate":I
    .end local v6    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 513
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
