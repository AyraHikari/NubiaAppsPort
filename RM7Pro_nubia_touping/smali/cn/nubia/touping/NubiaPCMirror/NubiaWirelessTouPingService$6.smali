.class Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$6;
.super Ljava/lang/Object;
.source "NubiaWirelessTouPingService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->startMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

.field final synthetic val$displayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Landroid/hardware/display/DisplayManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .prologue
    .line 966
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$6;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$6;->val$displayManager:Landroid/hardware/display/DisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 970
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 979
    const-string v2, "NubiaWirelessTouPingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisplayChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    if-nez p1, :cond_0

    .line 983
    :try_start_0
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$6;->val$displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    float-to-int v1, v2

    .line 984
    .local v1, "num":I
    const-string v2, "NubiaWirelessTouPingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayManager.getDisplay(i).getRefreshRate() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :goto_0
    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentPhoneRateNum(I)V

    .line 993
    .end local v1    # "num":I
    :cond_0
    return-void

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 987
    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getPhoneScreenRefreshRate()I

    move-result v1

    .line 988
    .restart local v1    # "num":I
    const-string v2, "NubiaWirelessTouPingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRefreshRate() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 975
    return-void
.end method
