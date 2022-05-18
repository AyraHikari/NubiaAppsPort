.class public Lcn/nubia/gallery3d/app/GLFreezeHandler;
.super Ljava/lang/Object;
.source "GLFreezeHandler.java"


# static fields
.field public static final MSG_UNFREEZE_GLROOT:I = 0x1


# instance fields
.field private glRootRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/nubia/gallery3d/ui/GLRoot;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GLFreezeHandler;->glRootRef:Ljava/lang/ref/WeakReference;

    .line 21
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "gl-freeze-handler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/app/GLFreezeHandler;->handlerThread:Landroid/os/HandlerThread;

    .line 22
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 24
    new-instance p1, Lcn/nubia/gallery3d/app/GLFreezeHandler$1;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/GLFreezeHandler;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcn/nubia/gallery3d/app/GLFreezeHandler$1;-><init>(Lcn/nubia/gallery3d/app/GLFreezeHandler;Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/app/GLFreezeHandler;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/app/GLFreezeHandler;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 10
    iget-object p0, p0, Lcn/nubia/gallery3d/app/GLFreezeHandler;->glRootRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcn/nubia/gallery3d/app/GLFreezeHandler;->handler:Landroid/os/Handler;

    .line 56
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GLFreezeHandler;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public removeMessages(I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GLFreezeHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public sendEmptyMessageDelayed(IJ)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GLFreezeHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
