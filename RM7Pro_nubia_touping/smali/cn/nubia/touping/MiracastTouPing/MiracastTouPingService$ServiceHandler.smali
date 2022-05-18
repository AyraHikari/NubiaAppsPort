.class Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;
.super Landroid/os/Handler;
.source "MiracastTouPingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;


# direct methods
.method public constructor <init>(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 230
    iput-object p1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .line 231
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 232
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 236
    .local v1, "bundle":Landroid/os/Bundle;
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 287
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 242
    :sswitch_1
    invoke-static {}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sput-object v6, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_package:Ljava/lang/String;

    .line 243
    invoke-static {}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    .local v0, "activityname":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    sget-object v7, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_package:Ljava/lang/String;

    invoke-static {v6, v7}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$200(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_app:Ljava/lang/String;

    .line 245
    const-string v6, "MiracastTouPingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resumed_package = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_package:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v6, "MiracastTouPingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resumed_activity = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_app:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$302(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;J)J

    goto :goto_0

    .line 250
    .end local v0    # "activityname":Ljava/lang/String;
    :sswitch_2
    invoke-static {}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sput-object v6, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_package:Ljava/lang/String;

    .line 251
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    sget-object v7, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_package:Ljava/lang/String;

    invoke-static {v6, v7}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$200(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_app:Ljava/lang/String;

    .line 252
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-virtual {v6}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->isSmall_Mittot_Status()Z

    move-result v6

    if-nez v6, :cond_0

    .line 253
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    sget-object v7, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_package:Ljava/lang/String;

    sget-object v8, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_app:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->startThreadRunable(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v6, "MiracastTouPingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adddot onpause collectAPP:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_package:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :sswitch_3
    invoke-static {}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 259
    .local v3, "startPkg":Ljava/lang/String;
    goto/16 :goto_0

    .line 261
    .end local v3    # "startPkg":Ljava/lang/String;
    :sswitch_4
    invoke-static {}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 262
    .local v4, "stopPkg":Ljava/lang/String;
    goto/16 :goto_0

    .line 264
    .end local v4    # "stopPkg":Ljava/lang/String;
    :sswitch_5
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$400(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)V

    goto/16 :goto_0

    .line 267
    :sswitch_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 268
    .local v5, "value":Z
    goto/16 :goto_0

    .line 272
    .end local v5    # "value":Z
    :sswitch_7
    const-string v6, "deviceIdle"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 273
    .local v2, "dozeState":Z
    goto/16 :goto_0

    .line 277
    .end local v2    # "dozeState":Z
    :sswitch_8
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-virtual {v6}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->isSmall_Mittot_Status()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 278
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v6}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$500(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)V

    .line 279
    iget-object v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    iget-object v7, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v7}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$600(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v8}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$700(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->startThreadRunable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 280
    const-string v6, "MiracastTouPingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adddot_come in small_status collectAPP:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v8}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$600(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x63 -> :sswitch_8
        0x7d1 -> :sswitch_1
        0x7d2 -> :sswitch_2
        0x834 -> :sswitch_3
        0x835 -> :sswitch_4
        0x837 -> :sswitch_7
    .end sparse-switch
.end method
