.class Lcn/nubia/touping/LelinkProcessService$ServiceHandler;
.super Landroid/os/Handler;
.source "LelinkProcessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/LelinkProcessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/LelinkProcessService;


# direct methods
.method public constructor <init>(Lcn/nubia/touping/LelinkProcessService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/LelinkProcessService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 332
    iput-object p1, p0, Lcn/nubia/touping/LelinkProcessService$ServiceHandler;->this$0:Lcn/nubia/touping/LelinkProcessService;

    .line 333
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 334
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 337
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 338
    .local v1, "bundle":Landroid/os/Bundle;
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 389
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 344
    :sswitch_1
    invoke-static {}, Lcn/nubia/touping/LelinkProcessService;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sput-object v6, Lcn/nubia/touping/LelinkProcessService;->pause_package:Ljava/lang/String;

    .line 345
    invoke-static {}, Lcn/nubia/touping/LelinkProcessService;->access$200()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 346
    .local v0, "activityname":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/touping/LelinkProcessService$ServiceHandler;->this$0:Lcn/nubia/touping/LelinkProcessService;

    sget-object v7, Lcn/nubia/touping/LelinkProcessService;->pause_package:Ljava/lang/String;

    invoke-static {v6, v7}, Lcn/nubia/touping/LelinkProcessService;->access$300(Lcn/nubia/touping/LelinkProcessService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcn/nubia/touping/LelinkProcessService;->pause_app:Ljava/lang/String;

    .line 347
    const-string v6, "LelinkProcessService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resumed_package = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcn/nubia/touping/LelinkProcessService;->pause_package:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v6, "LelinkProcessService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resumed_activity = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcn/nubia/touping/LelinkProcessService;->pause_app:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v6, p0, Lcn/nubia/touping/LelinkProcessService$ServiceHandler;->this$0:Lcn/nubia/touping/LelinkProcessService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcn/nubia/touping/LelinkProcessService;->access$402(Lcn/nubia/touping/LelinkProcessService;J)J

    goto :goto_0

    .line 352
    .end local v0    # "activityname":Ljava/lang/String;
    :sswitch_2
    invoke-static {}, Lcn/nubia/touping/LelinkProcessService;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sput-object v6, Lcn/nubia/touping/LelinkProcessService;->pause_package:Ljava/lang/String;

    .line 353
    iget-object v6, p0, Lcn/nubia/touping/LelinkProcessService$ServiceHandler;->this$0:Lcn/nubia/touping/LelinkProcessService;

    sget-object v7, Lcn/nubia/touping/LelinkProcessService;->pause_package:Ljava/lang/String;

    invoke-static {v6, v7}, Lcn/nubia/touping/LelinkProcessService;->access$300(Lcn/nubia/touping/LelinkProcessService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcn/nubia/touping/LelinkProcessService;->pause_app:Ljava/lang/String;

    .line 354
    iget-object v6, p0, Lcn/nubia/touping/LelinkProcessService$ServiceHandler;->this$0:Lcn/nubia/touping/LelinkProcessService;

    invoke-virtual {v6}, Lcn/nubia/touping/LelinkProcessService;->isSmall_Mittot_Status()Z

    move-result v6

    if-nez v6, :cond_0

    .line 355
    iget-object v6, p0, Lcn/nubia/touping/LelinkProcessService$ServiceHandler;->this$0:Lcn/nubia/touping/LelinkProcessService;

    sget-object v7, Lcn/nubia/touping/LelinkProcessService;->pause_package:Ljava/lang/String;

    sget-object v8, Lcn/nubia/touping/LelinkProcessService;->pause_app:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcn/nubia/touping/LelinkProcessService;->startThreadRunable(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v6, "LelinkProcessService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adddot onpause collectAPP:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcn/nubia/touping/LelinkProcessService;->pause_package:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 360
    :sswitch_3
    invoke-static {}, Lcn/nubia/touping/LelinkProcessService;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 361
    .local v3, "startPkg":Ljava/lang/String;
    goto/16 :goto_0

    .line 363
    .end local v3    # "startPkg":Ljava/lang/String;
    :sswitch_4
    invoke-static {}, Lcn/nubia/touping/LelinkProcessService;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 364
    .local v4, "stopPkg":Ljava/lang/String;
    goto/16 :goto_0

    .line 366
    .end local v4    # "stopPkg":Ljava/lang/String;
    :sswitch_5
    iget-object v6, p0, Lcn/nubia/touping/LelinkProcessService$ServiceHandler;->this$0:Lcn/nubia/touping/LelinkProcessService;

    invoke-static {v6}, Lcn/nubia/touping/LelinkProcessService;->access$500(Lcn/nubia/touping/LelinkProcessService;)V

    goto/16 :goto_0

    .line 369
    :sswitch_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 370
    .local v5, "value":Z
    goto/16 :goto_0

    .line 374
    .end local v5    # "value":Z
    :sswitch_7
    const-string v6, "deviceIdle"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 375
    .local v2, "dozeState":Z
    goto/16 :goto_0

    .line 379
    .end local v2    # "dozeState":Z
    :sswitch_8
    iget-object v6, p0, Lcn/nubia/touping/LelinkProcessService$ServiceHandler;->this$0:Lcn/nubia/touping/LelinkProcessService;

    invoke-virtual {v6}, Lcn/nubia/touping/LelinkProcessService;->isSmall_Mittot_Status()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 380
    iget-object v6, p0, Lcn/nubia/touping/LelinkProcessService$ServiceHandler;->this$0:Lcn/nubia/touping/LelinkProcessService;

    invoke-static {v6}, Lcn/nubia/touping/LelinkProcessService;->access$600(Lcn/nubia/touping/LelinkProcessService;)V

    .line 381
    iget-object v6, p0, Lcn/nubia/touping/LelinkProcessService$ServiceHandler;->this$0:Lcn/nubia/touping/LelinkProcessService;

    iget-object v7, p0, Lcn/nubia/touping/LelinkProcessService$ServiceHandler;->this$0:Lcn/nubia/touping/LelinkProcessService;

    invoke-static {v7}, Lcn/nubia/touping/LelinkProcessService;->access$700(Lcn/nubia/touping/LelinkProcessService;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/touping/LelinkProcessService$ServiceHandler;->this$0:Lcn/nubia/touping/LelinkProcessService;

    invoke-static {v8}, Lcn/nubia/touping/LelinkProcessService;->access$800(Lcn/nubia/touping/LelinkProcessService;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcn/nubia/touping/LelinkProcessService;->startThreadRunable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 382
    const-string v6, "LelinkProcessService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adddot_come in small_status collectAPP:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/touping/LelinkProcessService$ServiceHandler;->this$0:Lcn/nubia/touping/LelinkProcessService;

    invoke-static {v8}, Lcn/nubia/touping/LelinkProcessService;->access$700(Lcn/nubia/touping/LelinkProcessService;)Ljava/lang/String;

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

    .line 338
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
