.class Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$1;
.super Landroid/os/Handler;
.source "NubiaWirelessTouPingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .prologue
    .line 112
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 115
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 116
    if-nez p1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 120
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 121
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->restart()V

    goto :goto_0

    .line 125
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_3

    .line 128
    .local v1, "sendRateIs60":Z
    :goto_1
    :try_start_0
    const-string v2, "NubiaWirelessTouPingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRateIs60_2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RefreshRateController.getisShowingSmallCicle() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->getisShowingSmallCicle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    if-eqz v1, :cond_4

    .line 130
    invoke-static {}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->getisShowingSmallCicle()Z

    move-result v2

    if-nez v2, :cond_2

    .line 131
    invoke-static {}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->getsInstance()Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->showSurface()V

    .line 133
    :cond_2
    const/4 v2, 0x1

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setTurnOffSkipSwitch(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "sendRateIs60":Z
    :cond_3
    move v1, v2

    .line 125
    goto :goto_1

    .line 135
    .restart local v1    # "sendRateIs60":Z
    :cond_4
    :try_start_1
    sget v2, Lcn/nubia/touping/WiredTouPingMainActivity;->maxFps:I

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_6

    .line 136
    invoke-static {}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->getisShowingSmallCicle()Z

    move-result v2

    if-nez v2, :cond_5

    .line 137
    invoke-static {}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->getsInstance()Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->showSurface()V

    .line 139
    :cond_5
    const/4 v2, 0x1

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setTurnOffSkipSwitch(Z)V

    goto :goto_0

    .line 141
    :cond_6
    invoke-static {}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->getisShowingSmallCicle()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 142
    invoke-static {}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->getsInstance()Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->hideSurface()V

    .line 144
    :cond_7
    const/4 v2, 0x0

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setTurnOffSkipSwitch(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
