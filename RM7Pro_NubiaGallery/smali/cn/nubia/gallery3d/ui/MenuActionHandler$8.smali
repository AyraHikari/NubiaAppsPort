.class Lcn/nubia/gallery3d/ui/MenuActionHandler$8;
.super Ljava/lang/Object;
.source "MenuActionHandler.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSupportedOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/MenuActionHandler;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$8;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler$8;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 5

    .line 270
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$8;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$200(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->calculateMenuOption()Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$602(Lcn/nubia/gallery3d/ui/MenuActionHandler;Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;)Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;

    .line 272
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$8;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$600(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;->getOperation()J

    move-result-wide v0

    .line 273
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 276
    :cond_0
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$8;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$900(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcn/nubia/gallery3d/ui/MenuActionHandler$8$1;

    invoke-direct {v4, p0, p1, v0, v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler$8$1;-><init>(Lcn/nubia/gallery3d/ui/MenuActionHandler$8;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;J)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3
.end method
