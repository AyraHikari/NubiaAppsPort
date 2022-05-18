.class Lcn/nubia/camera/q/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/q/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/b;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 931
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_1

    .line 932
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 935
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-static {v0}, Lcn/nubia/camera/q/b;->g(Lcn/nubia/camera/q/b;)Lcn/nubia/camera/z/b;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/q/b$1$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/q/b$1$1;-><init>(Lcn/nubia/camera/q/b$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/z/b;->a(Lcn/nubia/camera/z/d;)V

    goto :goto_0

    .line 945
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-static {v0}, Lcn/nubia/camera/q/b;->g(Lcn/nubia/camera/q/b;)Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->c()V

    :goto_0
    return-void
.end method

.method private a(Lcn/nubia/camera/af/a;)V
    .locals 4

    .line 918
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-static {v0}, Lcn/nubia/camera/q/b;->i(Lcn/nubia/camera/q/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    .line 919
    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    .line 920
    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    .line 921
    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 922
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 923
    iget-object v1, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-static {v1}, Lcn/nubia/camera/q/b;->j(Lcn/nubia/camera/q/b;)Lcn/nubia/camera/q/b$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 924
    iget-object v1, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-static {v1}, Lcn/nubia/camera/q/b;->j(Lcn/nubia/camera/q/b;)Lcn/nubia/camera/q/b$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/nubia/camera/q/b$a;->a(Landroid/os/Bundle;)V

    .line 926
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v1}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v2}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v3}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/q/i;

    invoke-virtual {v3}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v3

    invoke-static {v1, p1, v2, v3, v0}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/zoom/c;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/q/b$1;)V
    .locals 0

    .line 853
    invoke-direct {p0}, Lcn/nubia/camera/q/b$1;->e()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 950
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->d:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_1

    .line 951
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 954
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-static {v0}, Lcn/nubia/camera/q/b;->h(Lcn/nubia/camera/q/b;)Lcn/nubia/camera/j/b;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/q/b$1$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/q/b$1$2;-><init>(Lcn/nubia/camera/q/b$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/j/b;->a(Lcn/nubia/camera/j/c;)V

    goto :goto_0

    .line 964
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-static {v0}, Lcn/nubia/camera/q/b;->h(Lcn/nubia/camera/q/b;)Lcn/nubia/camera/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/j/b;->a()V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 969
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    iget-object v0, v0, Lcn/nubia/camera/q/b;->a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-static {v1}, Lcn/nubia/camera/q/b;->k(Lcn/nubia/camera/q/b;)Lcn/nubia/camera/f/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/f/b;->a(Lcn/nubia/camera/f/c;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 856
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    iget-object v0, v0, Lcn/nubia/camera/q/b;->a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    iget-object v0, v0, Lcn/nubia/camera/q/b;->a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    invoke-interface {v0, p1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    const-string v0, "BottomBarFragment"

    const-string v1, "onShutterButtonClick"

    .line 863
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v1, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v1}, Lcn/nubia/camera/q/b;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 867
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v1}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->E()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "First frame haven\'t arrived. Forbidden take picture"

    .line 868
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 871
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->N()Lcn/nubia/camera/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/a;->c()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    .line 872
    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->O:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_3

    .line 873
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v1}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/a;)V

    return-void

    .line 876
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/q/b$1;->a(Lcn/nubia/camera/af/a;)V

    .line 877
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-static {v0}, Lcn/nubia/camera/q/b;->g(Lcn/nubia/camera/q/b;)Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 878
    invoke-direct {p0}, Lcn/nubia/camera/q/b$1;->a()V

    goto :goto_0

    .line 879
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-static {v0}, Lcn/nubia/camera/q/b;->h(Lcn/nubia/camera/q/b;)Lcn/nubia/camera/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/j/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 880
    invoke-direct {p0}, Lcn/nubia/camera/q/b$1;->d()V

    goto :goto_0

    .line 882
    :cond_5
    invoke-direct {p0}, Lcn/nubia/camera/q/b$1;->e()V

    .line 885
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    .line 886
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-eq v1, v2, :cond_6

    .line 887
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v1, v2, :cond_6

    .line 888
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/c;->d:Lcn/nubia/camera/d/c;

    if-eq v1, v2, :cond_6

    .line 889
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->b:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_7

    .line 890
    :cond_6
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/h;->q()V

    :cond_7
    return-void
.end method

.method public c()V
    .locals 3

    .line 896
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 899
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->E()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BottomBarFragment"

    const-string v1, "First frame haven\'t arrived. Forbidden take picture"

    .line 900
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 903
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    iget-object v0, v0, Lcn/nubia/camera/q/b;->a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 904
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    iget-object v0, v0, Lcn/nubia/camera/q/b;->a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    invoke-interface {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;->c()V

    .line 907
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    .line 908
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-eq v1, v2, :cond_3

    .line 909
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v1, v2, :cond_3

    .line 910
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/c;->d:Lcn/nubia/camera/d/c;

    if-eq v1, v2, :cond_3

    .line 911
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->b:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_4

    .line 912
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/h;->q()V

    :cond_4
    return-void
.end method
