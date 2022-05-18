.class Lcn/nubia/touping/Utils/TouPingProvider$3;
.super Ljava/lang/Object;
.source "TouPingProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/TouPingProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/TouPingProvider;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/TouPingProvider;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/TouPingProvider;

    .prologue
    .line 357
    iput-object p1, p0, Lcn/nubia/touping/Utils/TouPingProvider$3;->this$0:Lcn/nubia/touping/Utils/TouPingProvider;

    iput-object p2, p0, Lcn/nubia/touping/Utils/TouPingProvider$3;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 361
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/Utils/TouPingProvider;->access$200()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :try_start_1
    iget-object v6, p0, Lcn/nubia/touping/Utils/TouPingProvider$3;->val$extras:Landroid/os/Bundle;

    const-string v8, "VIEW_CURRENT_FOCUS_STATUS"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 363
    .local v5, "view_has_focus":I
    const-string v4, ""

    .line 364
    .local v4, "textViewLocal":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/touping/Utils/TouPingProvider$3;->val$extras:Landroid/os/Bundle;

    const-string v8, "VIEW_CURRENT_FOCUS_LOCAL"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 365
    iget-object v6, p0, Lcn/nubia/touping/Utils/TouPingProvider$3;->val$extras:Landroid/os/Bundle;

    const-string v8, "VIEW_CURRENT_FOCUS_LOCAL"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 367
    :cond_0
    sget v6, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->view_has_focusSaved:I

    if-ne v5, v6, :cond_1

    monitor-exit v7

    .line 380
    .end local v4    # "textViewLocal":Ljava/lang/String;
    .end local v5    # "view_has_focus":I
    :goto_0
    return-void

    .line 368
    .restart local v4    # "textViewLocal":Ljava/lang/String;
    .restart local v5    # "view_has_focus":I
    :cond_1
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->getmPcConnection()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    move-result-object v3

    .line 369
    .local v3, "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    const-string v6, "TouPingProvider777888"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "view_has_focus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mPcConnection = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    if-eqz v3, :cond_2

    .line 371
    if-lez v5, :cond_3

    const/4 v2, 0x1

    .line 372
    .local v2, "hasFocus":Z
    :goto_1
    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->createViewFocusStatus(Z)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;

    move-result-object v1

    .line 373
    .local v1, "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    invoke-virtual {v3, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->sendDeviceMessage(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;)V

    .line 374
    sput v5, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->view_has_focusSaved:I

    .line 376
    .end local v1    # "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    .end local v2    # "hasFocus":Z
    :cond_2
    monitor-exit v7

    goto :goto_0

    .end local v3    # "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    .end local v4    # "textViewLocal":Ljava/lang/String;
    .end local v5    # "view_has_focus":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    .restart local v4    # "textViewLocal":Ljava/lang/String;
    .restart local v5    # "view_has_focus":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
