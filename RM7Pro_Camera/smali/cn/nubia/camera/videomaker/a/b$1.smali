.class Lcn/nubia/camera/videomaker/a/b$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/videomaker/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/videomaker/a/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/videomaker/a/b;Landroid/os/Looper;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcn/nubia/camera/videomaker/a/b$1;->a:Lcn/nubia/camera/videomaker/a/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b$1;->a:Lcn/nubia/camera/videomaker/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handlerMessage what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  msg.arg1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/videomaker/a/b;->a(Lcn/nubia/camera/videomaker/a/b;Ljava/lang/String;)V

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p1, "VideoGenerator"

    const-string v0, "UNKNOWN MESSAGE!"

    .line 91
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b$1;->a:Lcn/nubia/camera/videomaker/a/b;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcn/nubia/camera/videomaker/a/b;->a(I)V

    :goto_0
    return-void
.end method
