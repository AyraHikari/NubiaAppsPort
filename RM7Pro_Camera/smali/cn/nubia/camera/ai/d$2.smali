.class Lcn/nubia/camera/ai/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/g/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ai/d;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ai/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ai/d;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcn/nubia/camera/ai/d$2;->a:Lcn/nubia/camera/ai/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 68
    iget-object p1, p0, Lcn/nubia/camera/ai/d$2;->a:Lcn/nubia/camera/ai/d;

    invoke-static {p1}, Lcn/nubia/camera/ai/d;->b(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->o()Z

    move-result p1

    if-nez p1, :cond_0

    .line 69
    iget-object p1, p0, Lcn/nubia/camera/ai/d$2;->a:Lcn/nubia/camera/ai/d;

    invoke-static {p1}, Lcn/nubia/camera/ai/d;->b(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 73
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ai/d$2;->a:Lcn/nubia/camera/ai/d;

    invoke-static {p1}, Lcn/nubia/camera/ai/d;->b(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->o()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/ai/d$2;->a:Lcn/nubia/camera/ai/d;

    .line 74
    invoke-static {p1}, Lcn/nubia/camera/ai/d;->b(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 75
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/ai/d$2;->a:Lcn/nubia/camera/ai/d;

    invoke-static {p1}, Lcn/nubia/camera/ai/d;->b(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->n()V

    .line 78
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/ai/d$2;->a:Lcn/nubia/camera/ai/d;

    invoke-static {p1}, Lcn/nubia/camera/ai/d;->f(Lcn/nubia/camera/ai/d;)V

    .line 79
    iget-object p1, p0, Lcn/nubia/camera/ai/d$2;->a:Lcn/nubia/camera/ai/d;

    invoke-static {p1}, Lcn/nubia/camera/ai/d;->g(Lcn/nubia/camera/ai/d;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
