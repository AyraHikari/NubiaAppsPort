.class Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$1;
.super Ljava/lang/Object;
.source "MiracastTouPingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->startThreadRunable(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

.field final synthetic val$cast_app:Ljava/lang/String;

.field final synthetic val$cast_package:Ljava/lang/String;

.field final synthetic val$small_window:Z


# direct methods
.method constructor <init>(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .prologue
    .line 406
    iput-object p1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$1;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    iput-object p2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$1;->val$cast_package:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$1;->val$cast_app:Ljava/lang/String;

    iput-boolean p4, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$1;->val$small_window:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 409
    const-string v6, "content://cn.nubia.touping.TouPingProvider/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 410
    .local v5, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 411
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "BURYINGPOINT_WIRELESS_CALL4"

    const-string v7, "MiracastTouPingService"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$1;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-virtual {v6}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, ""

    const-string v8, "CALL_4"

    invoke-virtual {v6, v5, v7, v8, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 415
    .local v1, "bundleResult":Landroid/os/Bundle;
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$1;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$800(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)J

    move-result-wide v2

    .line 416
    .local v2, "durationTime":J
    const-string v6, "CALL_4_KEY5"

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

    .line 417
    const v4, 0x7a1200

    .line 418
    .local v4, "realBirRate":I
    const-string v6, "CALL_4_KEY8"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v6, "CALL_4_KEY14"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$1;->val$cast_package:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v6, "CALL_4_KEY15"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$1;->val$cast_app:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-boolean v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$1;->val$small_window:Z

    if-eqz v6, :cond_0

    .line 423
    const-string v6, "CALL_4_KEY17"

    const-string v7, "small_window"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :goto_0
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$1;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v6, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setAllNeedData2SystemForWireLessMiracast(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 428
    return-void

    .line 425
    :cond_0
    const-string v6, "CALL_4_KEY17"

    const-string v7, "mirror"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
