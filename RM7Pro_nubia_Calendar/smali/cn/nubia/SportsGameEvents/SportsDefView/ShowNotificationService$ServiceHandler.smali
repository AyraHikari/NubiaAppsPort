.class final Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;
.super Landroid/os/Handler;
.source "ShowNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;


# direct methods
.method public constructor <init>(Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 40
    iput-object p1, p0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;

    .line 41
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/util/HashMap;

    .line 49
    .local v12, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-string v16, "hasSaveMatchId"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 51
    .local v4, "hasSaveMatchId":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 52
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->finishStartingService(Landroid/app/Service;I)V

    .line 77
    const-string v16, "JobParameters"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/job/JobParameters;

    .line 79
    .local v10, "mJobParameters":Landroid/app/job/JobParameters;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 81
    .end local v4    # "hasSaveMatchId":Ljava/lang/String;
    :goto_0
    return-void

    .line 56
    .end local v10    # "mJobParameters":Landroid/app/job/JobParameters;
    .restart local v4    # "hasSaveMatchId":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v16, "-"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "idArrary":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDBIntance(Landroid/content/Context;)Lcn/nubia/SportsGameEvents/SportsDB;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDataListForce()Ljava/util/List;

    move-result-object v9

    .line 58
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v0, v7

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_4

    .line 59
    aget-object v6, v7, v5

    .line 60
    .local v6, "id":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_3

    .line 61
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    .line 62
    .local v11, "mNuCmsSportsItem":Lcom/nubia/nucms/bean/NuCmsSportsItem;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v11}, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->getPendingIntent(Landroid/content/Context;Lcom/nubia/nucms/bean/NuCmsSportsItem;)Landroid/app/PendingIntent;

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v11}, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->getPendingIntent(Landroid/content/Context;Lcom/nubia/nucms/bean/NuCmsSportsItem;)Landroid/app/PendingIntent;

    move-result-object v13

    .line 65
    .local v13, "pindingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;

    move-object/from16 v16, v0

    const-string v17, "alarm"

    invoke-virtual/range {v16 .. v17}, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 66
    .local v2, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v11}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getMatchTime()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/32 v18, 0xdbba0

    sub-long v14, v16, v18

    .line 67
    .local v14, "remindTime":J
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0, v14, v15, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .end local v2    # "alarmManager":Landroid/app/AlarmManager;
    .end local v13    # "pindingIntent":Landroid/app/PendingIntent;
    .end local v14    # "remindTime":J
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 58
    .end local v11    # "mNuCmsSportsItem":Lcom/nubia/nucms/bean/NuCmsSportsItem;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 76
    .end local v6    # "id":Ljava/lang/String;
    .end local v8    # "k":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->finishStartingService(Landroid/app/Service;I)V

    .line 77
    const-string v16, "JobParameters"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/job/JobParameters;

    .line 79
    .restart local v10    # "mJobParameters":Landroid/app/job/JobParameters;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto/16 :goto_0

    .line 73
    .end local v4    # "hasSaveMatchId":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "idArrary":[Ljava/lang/String;
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    .end local v10    # "mJobParameters":Landroid/app/job/JobParameters;
    :catch_0
    move-exception v3

    .line 74
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->finishStartingService(Landroid/app/Service;I)V

    .line 77
    const-string v16, "JobParameters"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/job/JobParameters;

    .line 79
    .restart local v10    # "mJobParameters":Landroid/app/job/JobParameters;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto/16 :goto_0

    .line 76
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v10    # "mJobParameters":Landroid/app/job/JobParameters;
    :catchall_0
    move-exception v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->finishStartingService(Landroid/app/Service;I)V

    .line 77
    const-string v17, "JobParameters"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/job/JobParameters;

    .line 79
    .restart local v10    # "mJobParameters":Landroid/app/job/JobParameters;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService$ServiceHandler;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcn/nubia/SportsGameEvents/SportsDefView/ShowNotificationService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 80
    throw v16
.end method
