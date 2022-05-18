.class Lcn/nubia/camera/bb/ab$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/bb/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/ab;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/ab;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcn/nubia/camera/bb/ab$1;->a:Lcn/nubia/camera/bb/ab;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcn/nubia/camera/bb/ab$1;->a:Lcn/nubia/camera/bb/ab;

    invoke-static {v0}, Lcn/nubia/camera/bb/ab;->a(Lcn/nubia/camera/bb/ab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fragment is puased ignore "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoShutterButtonClickManager"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 47
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/bb/ab$1;->a:Lcn/nubia/camera/bb/ab;

    invoke-static {p1, v0}, Lcn/nubia/camera/bb/ab;->a(Lcn/nubia/camera/bb/ab;Z)Z

    :goto_0
    return-void
.end method
