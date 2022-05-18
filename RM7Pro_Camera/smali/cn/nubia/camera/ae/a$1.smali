.class Lcn/nubia/camera/ae/a$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ae/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ae/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ae/a;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcn/nubia/camera/ae/a$1;->a:Lcn/nubia/camera/ae/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MemberScrollerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "reset disableMemberScrollerForAWhile"

    .line 81
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p1, p0, Lcn/nubia/camera/ae/a$1;->a:Lcn/nubia/camera/ae/a;

    invoke-static {p1, v3}, Lcn/nubia/camera/ae/a;->a(Lcn/nubia/camera/ae/a;Z)Z

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/ae/a$1;->a:Lcn/nubia/camera/ae/a;

    invoke-static {p1}, Lcn/nubia/camera/ae/a;->b(Lcn/nubia/camera/ae/a;)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/ae/a$1;->a:Lcn/nubia/camera/ae/a;

    invoke-static {p1}, Lcn/nubia/camera/ae/a;->a(Lcn/nubia/camera/ae/a;)Lcom/android/common/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/c/e;->d()V

    goto :goto_0

    .line 72
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/ae/a$1;->a:Lcn/nubia/camera/ae/a;

    invoke-static {p1}, Lcn/nubia/camera/ae/a;->a(Lcn/nubia/camera/ae/a;)Lcom/android/common/c/e;

    move-result-object p1

    invoke-virtual {p1, v3, v2, v3}, Lcom/android/common/c/e;->a(IIZ)V

    goto :goto_0

    .line 69
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/ae/a$1;->a:Lcn/nubia/camera/ae/a;

    invoke-static {v0}, Lcn/nubia/camera/ae/a;->a(Lcn/nubia/camera/ae/a;)Lcom/android/common/c/e;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v3, v3, p1}, Lcom/android/common/c/e;->a(IIZ)V

    :goto_0
    return-void
.end method
