.class Lcn/nubia/improve/category/CategoryService$1;
.super Landroid/os/Handler;
.source "CategoryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/category/CategoryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/category/CategoryService;


# direct methods
.method constructor <init>(Lcn/nubia/improve/category/CategoryService;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcn/nubia/improve/category/CategoryService$1;->this$0:Lcn/nubia/improve/category/CategoryService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 25
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "CategoryService"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "txh category finish"

    .line 38
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object p1, p0, Lcn/nubia/improve/category/CategoryService$1;->this$0:Lcn/nubia/improve/category/CategoryService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/improve/category/CategoryService;->access$002(Lcn/nubia/improve/category/CategoryService;Z)Z

    .line 40
    iget-object p1, p0, Lcn/nubia/improve/category/CategoryService$1;->this$0:Lcn/nubia/improve/category/CategoryService;

    invoke-virtual {p1}, Lcn/nubia/improve/category/CategoryService;->stopSelf()V

    goto :goto_0

    :cond_1
    const-string p1, "txh category error"

    .line 33
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lcn/nubia/improve/category/CategoryService$1;->this$0:Lcn/nubia/improve/category/CategoryService;

    invoke-virtual {p1}, Lcn/nubia/improve/category/CategoryService;->stopSelf()V

    goto :goto_0

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "txh category begin, thread = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
