.class Lcn/nubia/improve/category/CategoryProcessTask$1;
.super Landroid/os/Handler;
.source "CategoryProcessTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/category/CategoryProcessTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/category/CategoryProcessTask;


# direct methods
.method constructor <init>(Lcn/nubia/improve/category/CategoryProcessTask;Landroid/os/Looper;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcn/nubia/improve/category/CategoryProcessTask$1;->this$0:Lcn/nubia/improve/category/CategoryProcessTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "CategoryProcessTask"

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const-string p1, "txh ==== INTERRUPT ===="

    .line 107
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p1, p0, Lcn/nubia/improve/category/CategoryProcessTask$1;->this$0:Lcn/nubia/improve/category/CategoryProcessTask;

    invoke-static {p1}, Lcn/nubia/improve/category/CategoryProcessTask;->access$200(Lcn/nubia/improve/category/CategoryProcessTask;)V

    .line 109
    iget-object p1, p0, Lcn/nubia/improve/category/CategoryProcessTask$1;->this$0:Lcn/nubia/improve/category/CategoryProcessTask;

    invoke-static {p1}, Lcn/nubia/improve/category/CategoryProcessTask;->access$400(Lcn/nubia/improve/category/CategoryProcessTask;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 110
    iget-object p1, p0, Lcn/nubia/improve/category/CategoryProcessTask$1;->this$0:Lcn/nubia/improve/category/CategoryProcessTask;

    invoke-static {p1}, Lcn/nubia/improve/category/CategoryProcessTask;->access$500(Lcn/nubia/improve/category/CategoryProcessTask;)V

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_1
    const-string p1, "txh ==== ERROR ===="

    .line 102
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p1, p0, Lcn/nubia/improve/category/CategoryProcessTask$1;->this$0:Lcn/nubia/improve/category/CategoryProcessTask;

    invoke-static {p1}, Lcn/nubia/improve/category/CategoryProcessTask;->access$300(Lcn/nubia/improve/category/CategoryProcessTask;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string p1, "txh ==== FINISH ===="

    .line 96
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lcn/nubia/improve/category/CategoryProcessTask$1;->this$0:Lcn/nubia/improve/category/CategoryProcessTask;

    invoke-static {p1}, Lcn/nubia/improve/category/CategoryProcessTask;->access$200(Lcn/nubia/improve/category/CategoryProcessTask;)V

    .line 98
    iget-object p1, p0, Lcn/nubia/improve/category/CategoryProcessTask$1;->this$0:Lcn/nubia/improve/category/CategoryProcessTask;

    invoke-static {p1}, Lcn/nubia/improve/category/CategoryProcessTask;->access$300(Lcn/nubia/improve/category/CategoryProcessTask;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const-string p1, "txh ==== BEGIN ===="

    .line 87
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p1, p0, Lcn/nubia/improve/category/CategoryProcessTask$1;->this$0:Lcn/nubia/improve/category/CategoryProcessTask;

    invoke-static {p1}, Lcn/nubia/improve/category/CategoryProcessTask;->access$000(Lcn/nubia/improve/category/CategoryProcessTask;)V

    .line 92
    :cond_4
    iget-object p1, p0, Lcn/nubia/improve/category/CategoryProcessTask$1;->this$0:Lcn/nubia/improve/category/CategoryProcessTask;

    invoke-static {p1}, Lcn/nubia/improve/category/CategoryProcessTask;->access$100(Lcn/nubia/improve/category/CategoryProcessTask;)V

    :goto_0
    return-void
.end method
