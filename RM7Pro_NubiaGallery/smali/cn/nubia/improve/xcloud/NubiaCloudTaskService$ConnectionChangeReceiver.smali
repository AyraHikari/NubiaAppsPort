.class public Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NubiaCloudTaskService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/xcloud/NubiaCloudTaskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;


# direct methods
.method public constructor <init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 169
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$000(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1, p2}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$002(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;Z)Z

    return-void

    .line 174
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$100(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$100(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->isNubiaCloudTaskCompleted()Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 177
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectionChangeReceiver onReceive taskCompleted :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nubiaCloudTaskService"

    invoke-static {v2, v1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    return-void

    .line 181
    :cond_2
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$200(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionChangeReceiver onReceive mIsTaskPaused : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    .line 183
    invoke-static {v1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$300(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-static {v2, p1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$400(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 185
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-virtual {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->resumeTasks()V

    .line 186
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1, p2}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$302(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;Z)Z

    .line 187
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$500(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)V

    goto :goto_1

    .line 189
    :cond_3
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$300(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 190
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-virtual {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->pauseTasks()V

    .line 191
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$600(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$MyHandler;->sendEmptyMessage(I)Z

    .line 192
    iget-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$ConnectionChangeReceiver;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {p1, v0}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$302(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;Z)Z

    :cond_4
    :goto_1
    return-void
.end method
