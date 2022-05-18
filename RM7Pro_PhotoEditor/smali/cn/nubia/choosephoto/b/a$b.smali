.class Lcn/nubia/choosephoto/b/a$b;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/choosephoto/b/a;->s(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/choosephoto/b/a;


# direct methods
.method constructor <init>(Lcn/nubia/choosephoto/b/a;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/choosephoto/b/a$b;->a:Lcn/nubia/choosephoto/b/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcn/nubia/choosephoto/b/a$b;->a:Lcn/nubia/choosephoto/b/a;

    new-instance v1, Lcn/nubia/choosephoto/b/a$b$a;

    invoke-direct {v1, p0}, Lcn/nubia/choosephoto/b/a$b$a;-><init>(Lcn/nubia/choosephoto/b/a$b;)V

    invoke-static {v0, v1}, Lcn/nubia/choosephoto/b/a;->d(Lcn/nubia/choosephoto/b/a;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/choosephoto/b/a$b;->a:Lcn/nubia/choosephoto/b/a;

    invoke-static {v0}, Lcn/nubia/choosephoto/b/a;->h(Lcn/nubia/choosephoto/b/a;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
