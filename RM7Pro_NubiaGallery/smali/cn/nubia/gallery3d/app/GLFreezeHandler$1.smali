.class Lcn/nubia/gallery3d/app/GLFreezeHandler$1;
.super Landroid/os/Handler;
.source "GLFreezeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/GLFreezeHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/GLFreezeHandler;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/GLFreezeHandler;Landroid/os/Looper;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcn/nubia/gallery3d/app/GLFreezeHandler$1;->this$0:Lcn/nubia/gallery3d/app/GLFreezeHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 27
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GLFreezeHandler$1;->this$0:Lcn/nubia/gallery3d/app/GLFreezeHandler;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/GLFreezeHandler;->access$000(Lcn/nubia/gallery3d/app/GLFreezeHandler;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/GLRoot;

    if-eqz p1, :cond_1

    .line 31
    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/GLRoot;->unfreeze()V

    :cond_1
    :goto_0
    return-void
.end method
