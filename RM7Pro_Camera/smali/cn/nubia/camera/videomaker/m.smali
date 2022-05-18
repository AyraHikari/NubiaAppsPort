.class public Lcn/nubia/camera/videomaker/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# instance fields
.field private a:Lcn/nubia/camera/videomaker/f;

.field private b:Lcn/nubia/camera/k/ah;

.field private c:Lcn/nubia/camera/k/q;

.field private d:Lcn/nubia/camera/k/z;

.field private e:Lcn/nubia/k/a/a;

.field private f:Lcn/nubia/camera/ad/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/k/a/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/videomaker/f;)V
    .locals 7

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p3, p0, Lcn/nubia/camera/videomaker/m;->e:Lcn/nubia/k/a/a;

    .line 34
    iput-object p2, p0, Lcn/nubia/camera/videomaker/m;->f:Lcn/nubia/camera/ad/a;

    .line 35
    iput-object p4, p0, Lcn/nubia/camera/videomaker/m;->b:Lcn/nubia/camera/k/ah;

    .line 37
    iput-object p5, p0, Lcn/nubia/camera/videomaker/m;->a:Lcn/nubia/camera/videomaker/f;

    .line 38
    new-instance p4, Lcn/nubia/camera/videomaker/g;

    iget-object p5, p0, Lcn/nubia/camera/videomaker/m;->f:Lcn/nubia/camera/ad/a;

    invoke-virtual {p5}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/videomaker/m;->b:Lcn/nubia/camera/k/ah;

    iget-object v6, p0, Lcn/nubia/camera/videomaker/m;->a:Lcn/nubia/camera/videomaker/f;

    move-object v0, p4

    move-object v1, p3

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/videomaker/g;-><init>(Lcn/nubia/k/a/a;Lcn/nubia/camera/ad/a;Landroid/content/Context;Lcn/nubia/l/a/b;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/videomaker/f;)V

    iput-object p4, p0, Lcn/nubia/camera/videomaker/m;->d:Lcn/nubia/camera/k/z;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcn/nubia/camera/videomaker/m;->a:Lcn/nubia/camera/videomaker/f;

    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/f;->D()Z

    move-result p1

    if-nez p1, :cond_0

    .line 46
    iget-object p1, p0, Lcn/nubia/camera/videomaker/m;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->r()V

    .line 49
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/videomaker/m;->a:Lcn/nubia/camera/videomaker/f;

    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/f;->d()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcn/nubia/camera/videomaker/m;->b:Lcn/nubia/camera/k/ah;

    iget-object v1, p0, Lcn/nubia/camera/videomaker/m;->c:Lcn/nubia/camera/k/q;

    iget-object v2, p0, Lcn/nubia/camera/videomaker/m;->d:Lcn/nubia/camera/k/z;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/videomaker/m;->a:Lcn/nubia/camera/videomaker/f;

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/f;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcn/nubia/camera/videomaker/m;->a:Lcn/nubia/camera/videomaker/f;

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/f;->p()V

    .line 64
    iget-object v0, p0, Lcn/nubia/camera/videomaker/m;->a:Lcn/nubia/camera/videomaker/f;

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->d()V

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/videomaker/m;->a:Lcn/nubia/camera/videomaker/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/videomaker/f;->e(Z)V

    :cond_0
    return-void
.end method
