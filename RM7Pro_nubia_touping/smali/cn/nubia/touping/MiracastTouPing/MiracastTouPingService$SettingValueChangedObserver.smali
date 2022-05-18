.class Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;
.super Landroid/database/ContentObserver;
.source "MiracastTouPingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingValueChangedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;


# direct methods
.method public constructor <init>(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)V
    .locals 1
    .param p1, "this$0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .prologue
    .line 461
    iput-object p1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .line 462
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 463
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 10
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 466
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 468
    if-nez p2, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    :try_start_0
    const-string v6, "MiracastTouPingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adddot currentURL  uri.toString()\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 471
    .local v5, "urlName":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 472
    const-string v6, "app_mirror_status"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 473
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-virtual {v6}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->isSmall_Mittot_Status()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 474
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1002(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;J)J

    .line 475
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1100(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;

    move-result-object v6

    const/16 v7, 0x63

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    .end local v5    # "urlName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 504
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 478
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "urlName":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    iget-object v7, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v7}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$600(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v8}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$700(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->startThreadRunable_Small_Mirror(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 480
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$600(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_package:Ljava/lang/String;

    .line 481
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    sget-object v7, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_package:Ljava/lang/String;

    invoke-static {v6, v7}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1200(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_app:Ljava/lang/String;

    .line 482
    const-string v6, "MiracastTouPingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adddot back_small pause_package\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_package:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 484
    :cond_3
    const-string v6, "app_mirror_list"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 485
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-virtual {v6}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "app_mirror_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "currentPackageNameAndActivity":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 488
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1300(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 489
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1300(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1300(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1300(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 490
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1300(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 491
    .local v2, "index":I
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1300(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 492
    .local v4, "lastSmall_mirror_open_app_package":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v6, v4}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1200(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "lastSmall_mirror_open_appName":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v3, v7}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->startThreadRunable_Small_Mirror(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 494
    const-string v6, "MiracastTouPingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adddot_change_packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .end local v2    # "index":I
    .end local v3    # "lastSmall_mirror_open_appName":Ljava/lang/String;
    .end local v4    # "lastSmall_mirror_open_app_package":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$500(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)V

    .line 498
    :cond_5
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1002(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;J)J

    .line 499
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    iget-object v7, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-virtual {v7}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "app_mirror_list"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1302(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;Ljava/lang/String;)Ljava/lang/String;

    .line 501
    const-string v6, "MiracastTouPingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adddot_change_packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v8}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1300(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   flag"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
