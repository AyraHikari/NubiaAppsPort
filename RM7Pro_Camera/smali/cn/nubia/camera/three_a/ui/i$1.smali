.class Lcn/nubia/camera/three_a/ui/i$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/three_a/ui/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/three_a/ui/i;


# direct methods
.method constructor <init>(Lcn/nubia/camera/three_a/ui/i;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/i$1;->a:Lcn/nubia/camera/three_a/ui/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 213
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 214
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "VerticalSeekBar"

    const-string v0, "end Ev"

    .line 216
    invoke-static {p1, v0}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/i$1;->a:Lcn/nubia/camera/three_a/ui/i;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/three_a/ui/i;->a(Lcn/nubia/camera/three_a/ui/i;Z)Z

    .line 218
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/i$1;->a:Lcn/nubia/camera/three_a/ui/i;

    invoke-static {p1}, Lcn/nubia/camera/three_a/ui/i;->a(Lcn/nubia/camera/three_a/ui/i;)Lcn/nubia/camera/three_a/ui/i$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 219
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/i$1;->a:Lcn/nubia/camera/three_a/ui/i;

    invoke-static {p1}, Lcn/nubia/camera/three_a/ui/i;->a(Lcn/nubia/camera/three_a/ui/i;)Lcn/nubia/camera/three_a/ui/i$a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/i$1;->a:Lcn/nubia/camera/three_a/ui/i;

    invoke-interface {p1, v0}, Lcn/nubia/camera/three_a/ui/i$a;->b(Lcn/nubia/camera/three_a/ui/i;)V

    :cond_1
    :goto_0
    return-void
.end method
