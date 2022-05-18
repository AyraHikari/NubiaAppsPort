.class public Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;
.super Landroid/os/Handler;
.source "NubiaCloudTaskService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/xcloud/NubiaCloudTaskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;


# direct methods
.method public constructor <init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;Landroid/os/Looper;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 325
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 468
    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$700(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 469
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$200(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/cloud/backup/Backup;->getInstance(Landroid/content/Context;)Lcn/nubia/cloud/backup/Backup;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcn/nubia/cloud/backup/Backup;->setBackupState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 472
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 443
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->removeTask(I)V

    goto/16 :goto_0

    .line 430
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$300(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$900(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$902(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 434
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$900(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 435
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$900(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Ljava/util/ArrayList;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    :cond_1
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->restartTask(I)V

    goto :goto_0

    .line 427
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$200(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 422
    :pswitch_4
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$700(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 423
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$800(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->startTask(Z)V

    goto :goto_0

    .line 385
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$700(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 386
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$200(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/cloud/backup/Backup;->getInstance(Landroid/content/Context;)Lcn/nubia/cloud/backup/Backup;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcn/nubia/cloud/backup/Backup;->setBackupState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 390
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 327
    :cond_3
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$300(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 348
    :cond_4
    :try_start_2
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$700(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 349
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$200(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/cloud/backup/Backup;->getInstance(Landroid/content/Context;)Lcn/nubia/cloud/backup/Backup;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/cloud/backup/Backup;->setBackupState(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 353
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
