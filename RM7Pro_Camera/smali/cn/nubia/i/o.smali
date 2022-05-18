.class public Lcn/nubia/i/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/i/o$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:I

.field private c:Lcn/nubia/i/n;

.field private d:Lcn/nubia/i/o$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/nubia/i/o;->a:Landroid/app/Activity;

    .line 22
    iput p2, p0, Lcn/nubia/i/o;->b:I

    .line 24
    invoke-static {}, Lcn/nubia/i/j;->a()Lcn/nubia/i/j;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/i/o;->a:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/i/j;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/i/o;)Lcn/nubia/i/o$a;
    .locals 0

    .line 10
    iget-object p0, p0, Lcn/nubia/i/o;->d:Lcn/nubia/i/o$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/nubia/i/o;->c:Lcn/nubia/i/n;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lcn/nubia/i/n;->b()V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/i/b;)V
    .locals 1

    .line 105
    invoke-static {}, Lcn/nubia/i/j;->a()Lcn/nubia/i/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/i/j;->a(Lcn/nubia/i/b;)V

    return-void
.end method

.method public a(Lcn/nubia/i/o$a;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcn/nubia/i/o;->d:Lcn/nubia/i/o$a;

    return-void
.end method

.method public a(Ljava/lang/String;Lcn/nubia/i/a;)V
    .locals 1

    .line 113
    invoke-static {}, Lcn/nubia/i/j;->a()Lcn/nubia/i/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/i/j;->a(Ljava/lang/String;Lcn/nubia/i/a;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcn/nubia/i/o;->c:Lcn/nubia/i/n;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcn/nubia/i/n;->a()V

    :cond_0
    return-void
.end method

.method public b(Lcn/nubia/i/b;)V
    .locals 1

    .line 109
    invoke-static {}, Lcn/nubia/i/j;->a()Lcn/nubia/i/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/i/j;->b(Lcn/nubia/i/b;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 40
    invoke-static {}, Lcn/nubia/i/j;->a()Lcn/nubia/i/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/i/j;->b()V

    return-void
.end method

.method public d()Z
    .locals 4

    .line 49
    iget v0, p0, Lcn/nubia/i/o;->b:I

    if-lez v0, :cond_3

    .line 52
    iget-object v0, p0, Lcn/nubia/i/o;->a:Landroid/app/Activity;

    const-string v1, "PrismaDownloadPage"

    if-nez v0, :cond_0

    const-string v0, "Activity is release!"

    .line 53
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "showPage"

    .line 56
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcn/nubia/i/o;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "primatag"

    .line 58
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 59
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    if-nez v2, :cond_1

    .line 61
    new-instance v2, Lcn/nubia/i/n;

    invoke-direct {v2}, Lcn/nubia/i/n;-><init>()V

    iput-object v2, p0, Lcn/nubia/i/o;->c:Lcn/nubia/i/n;

    .line 62
    new-instance v3, Lcn/nubia/i/o$1;

    invoke-direct {v3, p0}, Lcn/nubia/i/o$1;-><init>(Lcn/nubia/i/o;)V

    invoke-virtual {v2, v3}, Lcn/nubia/i/n;->a(Lcn/nubia/i/n$a;)V

    .line 70
    sget v2, Lcn/nubia/i/q$a;->c:I

    sget v3, Lcn/nubia/i/q$a;->d:I

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 71
    iget v2, p0, Lcn/nubia/i/o;->b:I

    iget-object v3, p0, Lcn/nubia/i/o;->c:Lcn/nubia/i/n;

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 72
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 74
    :cond_1
    sget v1, Lcn/nubia/i/q$a;->c:I

    sget v3, Lcn/nubia/i/q$a;->d:I

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 75
    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 76
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 79
    :goto_0
    iget-object v0, p0, Lcn/nubia/i/o;->d:Lcn/nubia/i/o$a;

    if-eqz v0, :cond_2

    .line 80
    invoke-interface {v0}, Lcn/nubia/i/o$a;->a()V

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "containerViewId should be valid view id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .locals 3

    .line 86
    iget-object v0, p0, Lcn/nubia/i/o;->c:Lcn/nubia/i/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/i/n;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PrismaDownloadPage"

    const-string v1, "hidePage"

    .line 87
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcn/nubia/i/o;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 89
    sget v1, Lcn/nubia/i/q$a;->a:I

    sget v2, Lcn/nubia/i/q$a;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 90
    iget-object v1, p0, Lcn/nubia/i/o;->c:Lcn/nubia/i/n;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 92
    iget-object v0, p0, Lcn/nubia/i/o;->d:Lcn/nubia/i/o$a;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Lcn/nubia/i/o$a;->b()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcn/nubia/i/o;->c:Lcn/nubia/i/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/i/n;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
