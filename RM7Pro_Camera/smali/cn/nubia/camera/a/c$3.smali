.class Lcn/nubia/camera/a/c$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a/c;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcn/nubia/camera/a/c$3;->a:Lcn/nubia/camera/a/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 186
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 187
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/a/c$3;->a:Lcn/nubia/camera/a/c;

    invoke-static {p1}, Lcn/nubia/camera/a/c;->f(Lcn/nubia/camera/a/c;)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/a/c$3;->a:Lcn/nubia/camera/a/c;

    invoke-static {p1}, Lcn/nubia/camera/a/c;->b(Lcn/nubia/camera/a/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->p()Z

    move-result p1

    if-nez p1, :cond_3

    .line 190
    iget-object p1, p0, Lcn/nubia/camera/a/c$3;->a:Lcn/nubia/camera/a/c;

    invoke-static {p1}, Lcn/nubia/camera/a/c;->d(Lcn/nubia/camera/a/c;)Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    const-string p1, "CameraKeepScreenHelper"

    const-string v1, "Close camera time arrived."

    .line 191
    invoke-static {p1, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p1, p0, Lcn/nubia/camera/a/c$3;->a:Lcn/nubia/camera/a/c;

    invoke-static {p1}, Lcn/nubia/camera/a/c;->e(Lcn/nubia/camera/a/c;)Lcn/nubia/camera/a/c$a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 193
    iget-object p1, p0, Lcn/nubia/camera/a/c$3;->a:Lcn/nubia/camera/a/c;

    invoke-static {p1}, Lcn/nubia/camera/a/c;->e(Lcn/nubia/camera/a/c;)Lcn/nubia/camera/a/c$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/a/c$a;->f()V

    .line 195
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/a/c$3;->a:Lcn/nubia/camera/a/c;

    invoke-static {p1, v0}, Lcn/nubia/camera/a/c;->a(Lcn/nubia/camera/a/c;Z)V

    :cond_3
    :goto_0
    return-void
.end method
