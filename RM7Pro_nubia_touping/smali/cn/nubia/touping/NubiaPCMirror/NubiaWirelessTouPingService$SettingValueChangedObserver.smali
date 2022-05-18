.class Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;
.super Landroid/database/ContentObserver;
.source "NubiaWirelessTouPingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingValueChangedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;


# direct methods
.method public constructor <init>(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)V
    .locals 1
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .prologue
    .line 891
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .line 892
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 893
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 10
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 896
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 898
    if-nez p2, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    :try_start_0
    const-string v6, "NubiaWirelessTouPingService"

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

    .line 900
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 901
    .local v5, "urlName":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 902
    const-string v6, "app_mirror_status"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 903
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-virtual {v6}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->isSmall_Mittot_Status()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 904
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1602(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;J)J

    .line 905
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1700(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;

    move-result-object v6

    const/16 v7, 0x63

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 937
    .end local v5    # "urlName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 938
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 908
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "urlName":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    sget-object v7, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_package:Ljava/lang/String;

    sget-object v8, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_appName:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->startThreadRunable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 910
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_package:Ljava/lang/String;

    sput-object v6, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    .line 911
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    sget-object v7, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    invoke-static {v6, v7}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1800(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_app:Ljava/lang/String;

    .line 912
    const-string v6, "NubiaWirelessTouPingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adddot back_small pause_package\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 914
    :cond_3
    const-string v6, "app_mirror_list"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 915
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-virtual {v6}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "app_mirror_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, "currentPackageNameAndActivity":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 918
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1900(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 919
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1900(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1900(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1900(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 920
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1900(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 921
    .local v2, "index":I
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1900(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 922
    .local v4, "lastSmall_mirror_open_app_package":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v6, v4}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1800(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 923
    .local v3, "lastSmall_mirror_open_appName":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v3, v7}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->startThreadRunable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 924
    const-string v6, "NubiaWirelessTouPingService"

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

    .line 926
    .end local v2    # "index":I
    .end local v3    # "lastSmall_mirror_open_appName":Ljava/lang/String;
    .end local v4    # "lastSmall_mirror_open_app_package":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$600(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)V

    .line 928
    :cond_5
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1602(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;J)J

    .line 929
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-virtual {v7}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "app_mirror_list"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1902(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;)Ljava/lang/String;

    .line 931
    const-string v6, "NubiaWirelessTouPingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adddot_change_packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v8}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$1900(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   flag"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 932
    .end local v0    # "currentPackageNameAndActivity":Ljava/lang/String;
    :cond_6
    const-string v6, "pip_pkg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 933
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$100(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Ljava/lang/String;

    .line 935
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-virtual {v6}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->setNubiaTouPingP2pPackageList2System()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
