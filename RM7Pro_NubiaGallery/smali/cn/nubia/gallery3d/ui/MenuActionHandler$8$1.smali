.class Lcn/nubia/gallery3d/ui/MenuActionHandler$8$1;
.super Ljava/lang/Object;
.source "MenuActionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/MenuActionHandler$8;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/gallery3d/ui/MenuActionHandler$8;

.field final synthetic val$jc:Lcn/nubia/gallery3d/util/ThreadPool$JobContext;

.field final synthetic val$operation:J


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/MenuActionHandler$8;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;J)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$8$1;->this$1:Lcn/nubia/gallery3d/ui/MenuActionHandler$8;

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$8$1;->val$jc:Lcn/nubia/gallery3d/util/ThreadPool$JobContext;

    iput-wide p3, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$8$1;->val$operation:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$8$1;->this$1:Lcn/nubia/gallery3d/ui/MenuActionHandler$8;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuActionHandler$8;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$702(Lcn/nubia/gallery3d/ui/MenuActionHandler;Lcn/nubia/gallery3d/util/Future;)Lcn/nubia/gallery3d/util/Future;

    .line 279
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$8$1;->val$jc:Lcn/nubia/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$8$1;->this$1:Lcn/nubia/gallery3d/ui/MenuActionHandler$8;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuActionHandler$8;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    iget-wide v1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$8$1;->val$operation:J

    invoke-static {v0, v1, v2}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$800(Lcn/nubia/gallery3d/ui/MenuActionHandler;J)V

    :cond_0
    return-void
.end method
