.class public Lcn/nubia/camera/b/b;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# instance fields
.field a:Lcn/nubia/camera/g/c;

.field private b:Lcn/nubia/camera/b/f;

.field private c:Lcn/nubia/camera/g/h;

.field private i:Lcn/nubia/camera/g/e;

.field private j:Lcn/nubia/camera/b/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    .line 108
    new-instance v0, Lcn/nubia/camera/b/b$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/b/b$1;-><init>(Lcn/nubia/camera/b/b;)V

    iput-object v0, p0, Lcn/nubia/camera/b/b;->a:Lcn/nubia/camera/g/c;

    return-void
.end method

.method private constructor <init>(Lcn/nubia/camera/b/f;Lcn/nubia/camera/b/k;)V
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/a;-><init>(I)V

    .line 108
    new-instance v0, Lcn/nubia/camera/b/b$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/b/b$1;-><init>(Lcn/nubia/camera/b/b;)V

    iput-object v0, p0, Lcn/nubia/camera/b/b;->a:Lcn/nubia/camera/g/c;

    .line 40
    iput-object p1, p0, Lcn/nubia/camera/b/b;->b:Lcn/nubia/camera/b/f;

    .line 41
    iput-object p2, p0, Lcn/nubia/camera/b/b;->j:Lcn/nubia/camera/b/k;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/b/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcn/nubia/camera/b/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcn/nubia/camera/b/f;Lcn/nubia/camera/b/k;)Lcn/nubia/camera/b/b;
    .locals 1

    .line 34
    new-instance v0, Lcn/nubia/camera/b/b;

    invoke-direct {v0, p0, p1}, Lcn/nubia/camera/b/b;-><init>(Lcn/nubia/camera/b/f;Lcn/nubia/camera/b/k;)V

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 4

    .line 96
    invoke-virtual {p0}, Lcn/nubia/camera/b/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/b/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/b/b;->b:Lcn/nubia/camera/b/f;

    iget-object v1, p0, Lcn/nubia/camera/b/b;->c:Lcn/nubia/camera/g/h;

    iget-object v2, p0, Lcn/nubia/camera/b/b;->i:Lcn/nubia/camera/g/e;

    invoke-virtual {v2}, Lcn/nubia/camera/g/e;->a()Lcn/nubia/camera/k/o;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/b/f;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    .line 51
    iget-boolean v0, p0, Lcn/nubia/camera/b/b;->d:Z

    if-eqz v0, :cond_0

    return-object p3

    :cond_0
    const p3, 0x7f0c001c

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 55
    new-instance p2, Lcn/nubia/camera/g/h;

    invoke-virtual {p0}, Lcn/nubia/camera/b/b;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p0}, Lcn/nubia/camera/b/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcn/nubia/camera/g/h;-><init>(Landroid/content/Context;Lcn/nubia/j/a;)V

    iput-object p2, p0, Lcn/nubia/camera/b/b;->c:Lcn/nubia/camera/g/h;

    .line 56
    new-instance p2, Lcn/nubia/camera/g/e;

    invoke-virtual {p0}, Lcn/nubia/camera/b/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/camera/b/b;->b:Lcn/nubia/camera/b/f;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/nubia/camera/b/b;->a:Lcn/nubia/camera/g/c;

    invoke-direct {p2, p3, v0, v1, v2}, Lcn/nubia/camera/g/e;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/z/b;Lcn/nubia/camera/g/c;)V

    iput-object p2, p0, Lcn/nubia/camera/b/b;->i:Lcn/nubia/camera/g/e;

    .line 57
    iget-object p2, p0, Lcn/nubia/camera/b/b;->j:Lcn/nubia/camera/b/k;

    invoke-virtual {p0}, Lcn/nubia/camera/b/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/camera/b/b;->b:Lcn/nubia/camera/b/f;

    invoke-virtual {p0}, Lcn/nubia/camera/b/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/i;

    invoke-virtual {v1}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v1

    invoke-virtual {p2, p1, p3, v0, v1}, Lcn/nubia/camera/b/k;->a(Landroid/view/View;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/zoom/c;)V

    .line 58
    iget-object p2, p0, Lcn/nubia/camera/b/b;->j:Lcn/nubia/camera/b/k;

    invoke-virtual {p0, p2}, Lcn/nubia/camera/b/b;->a(Ljava/lang/Object;)V

    const p2, 0x7f0900ac

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/camera/b/b;->b(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 75
    iget-boolean v0, p0, Lcn/nubia/camera/b/b;->d:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/b/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->T()Lcn/nubia/camera/facedetection/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/b/b;->j:Lcn/nubia/camera/b/k;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/facedetection/a;->b(Lcn/nubia/camera/k/k;)V

    .line 80
    iget-object v0, p0, Lcn/nubia/camera/b/b;->j:Lcn/nubia/camera/b/k;

    invoke-virtual {v0}, Lcn/nubia/camera/b/k;->b()V

    .line 81
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 65
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 66
    iget-boolean v0, p0, Lcn/nubia/camera/b/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/b/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->T()Lcn/nubia/camera/facedetection/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/b/b;->j:Lcn/nubia/camera/b/k;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/facedetection/a;->a(Lcn/nubia/camera/k/k;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/b/b;->j:Lcn/nubia/camera/b/k;

    invoke-virtual {v0}, Lcn/nubia/camera/b/k;->a()V

    return-void
.end method
