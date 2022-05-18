.class Lcn/nubia/choosephoto/b/a$b$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/choosephoto/b/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/choosephoto/b/a$b;


# direct methods
.method constructor <init>(Lcn/nubia/choosephoto/b/a$b;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/choosephoto/b/a$b$a;->a:Lcn/nubia/choosephoto/b/a$b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p0, Lcn/nubia/choosephoto/b/a$b$a;->a:Lcn/nubia/choosephoto/b/a$b;

    iget-object p1, p1, Lcn/nubia/choosephoto/b/a$b;->a:Lcn/nubia/choosephoto/b/a;

    invoke-static {p1}, Lcn/nubia/choosephoto/b/a;->e(Lcn/nubia/choosephoto/b/a;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/choosephoto/b/a$b$a;->a:Lcn/nubia/choosephoto/b/a$b;

    iget-object v0, v0, Lcn/nubia/choosephoto/b/a$b;->a:Lcn/nubia/choosephoto/b/a;

    invoke-static {v0}, Lcn/nubia/choosephoto/b/a;->f(Lcn/nubia/choosephoto/b/a;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcn/nubia/choosephoto/b/a$b$a;->a:Lcn/nubia/choosephoto/b/a$b;

    iget-object p1, p1, Lcn/nubia/choosephoto/b/a$b;->a:Lcn/nubia/choosephoto/b/a;

    invoke-static {p1}, Lcn/nubia/choosephoto/b/a;->g(Lcn/nubia/choosephoto/b/a;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
