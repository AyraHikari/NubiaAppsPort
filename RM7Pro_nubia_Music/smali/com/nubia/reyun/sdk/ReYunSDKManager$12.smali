.class Lcom/nubia/reyun/sdk/ReYunSDKManager$12;
.super Ljava/lang/Object;
.source "ReYunSDKManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackEventByDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

.field private final synthetic val$eventName:Ljava/lang/String;

.field private final synthetic val$extra:Ljava/util/Map;

.field private final synthetic val$type:Ljava/lang/String;

.field private final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$12;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iput-object p2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$12;->val$eventName:Ljava/lang/String;

    iput-object p3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$12;->val$extra:Ljava/util/Map;

    iput-object p4, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$12;->val$type:Ljava/lang/String;

    iput-object p5, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$12;->val$value:Ljava/lang/String;

    .line 1962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1968
    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$12;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isUpload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1986
    :cond_0
    :goto_0
    return-void

    .line 1971
    :cond_1
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$12;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$12;->val$eventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->checkDisableEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1974
    iget-object v4, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$12;->val$extra:Ljava/util/Map;

    .line 1975
    if-nez v4, :cond_2

    .line 1976
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1978
    :cond_2
    const-string v0, "devicetype"

    invoke-static {}, Lcn/nubia/analytic/util/AppUtil;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    const-string v0, "device_info_device_internal"

    invoke-static {}, Lcn/nubia/analytic/util/AppUtil;->getDeviceInternal()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    const-string v0, "device_info_rom_version"

    invoke-static {}, Lcn/nubia/analytic/util/AppUtil;->getRomVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$12;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$12;->val$eventName:Ljava/lang/String;

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$12;->val$type:Ljava/lang/String;

    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$12;->val$value:Ljava/lang/String;

    const/4 v5, 0x0

    .line 1982
    iget-object v6, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$12;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v6}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$10(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Ljava/lang/String;

    move-result-object v6

    .line 1981
    invoke-static/range {v0 .. v6}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$26(Lcom/nubia/reyun/sdk/ReYunSDKManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1983
    :catch_0
    move-exception v0

    .line 1984
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
