.class public Lcn/nubia/i/n;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/i/n$a;
    }
.end annotation


# instance fields
.field a:Lcn/nubia/i/e;

.field b:Lcn/nubia/i/j;

.field private c:Lcn/nubia/i/f;

.field private d:Lcn/nubia/i/g;

.field private e:Lcn/nubia/i/n$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcn/nubia/i/n;->e:Lcn/nubia/i/n$a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/i/n;)Lcn/nubia/i/n$a;
    .locals 0

    .line 14
    iget-object p0, p0, Lcn/nubia/i/n;->e:Lcn/nubia/i/n$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcn/nubia/i/n;->d:Lcn/nubia/i/g;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcn/nubia/i/g;->b()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcn/nubia/i/n;->c:Lcn/nubia/i/f;

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0}, Lcn/nubia/i/f;->b()V

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/i/n$a;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcn/nubia/i/n;->e:Lcn/nubia/i/n$a;

    return-void
.end method

.method public b()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcn/nubia/i/n;->c:Lcn/nubia/i/f;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcn/nubia/i/f;->a()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcn/nubia/i/n;->d:Lcn/nubia/i/g;

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Lcn/nubia/i/g;->a()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {}, Lcn/nubia/i/p;->a()V

    .line 32
    invoke-virtual {p0}, Lcn/nubia/i/n;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/i/p;->b(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 91
    sget p3, Lcn/nubia/i/q$e;->c:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 102
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 108
    iget-object v0, p0, Lcn/nubia/i/n;->c:Lcn/nubia/i/f;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p1}, Lcn/nubia/i/f;->a(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 69
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 70
    iget-object v0, p0, Lcn/nubia/i/n;->c:Lcn/nubia/i/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcn/nubia/i/f;->c()V

    .line 72
    iput-object v1, p0, Lcn/nubia/i/n;->c:Lcn/nubia/i/f;

    .line 74
    :cond_0
    iget-object v0, p0, Lcn/nubia/i/n;->d:Lcn/nubia/i/g;

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Lcn/nubia/i/g;->c()V

    .line 76
    iput-object v1, p0, Lcn/nubia/i/n;->d:Lcn/nubia/i/g;

    .line 78
    :cond_1
    iget-object v0, p0, Lcn/nubia/i/n;->a:Lcn/nubia/i/e;

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {v0}, Lcn/nubia/i/e;->a()V

    .line 80
    iput-object v1, p0, Lcn/nubia/i/n;->a:Lcn/nubia/i/e;

    .line 82
    :cond_2
    iget-object v0, p0, Lcn/nubia/i/n;->b:Lcn/nubia/i/j;

    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {v0}, Lcn/nubia/i/j;->b()V

    .line 84
    iput-object v1, p0, Lcn/nubia/i/n;->b:Lcn/nubia/i/j;

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 37
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 38
    invoke-static {}, Lcn/nubia/i/j;->a()Lcn/nubia/i/j;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/i/n;->b:Lcn/nubia/i/j;

    .line 39
    invoke-virtual {p0}, Lcn/nubia/i/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/i/j;->a(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcn/nubia/i/e;

    invoke-virtual {p0}, Lcn/nubia/i/n;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/i/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/i/n;->b:Lcn/nubia/i/j;

    invoke-direct {v0, v1, v2}, Lcn/nubia/i/e;-><init>(Ljava/lang/String;Lcn/nubia/i/j;)V

    iput-object v0, p0, Lcn/nubia/i/n;->a:Lcn/nubia/i/e;

    .line 42
    new-instance v0, Lcn/nubia/i/g;

    invoke-virtual {p0}, Lcn/nubia/i/n;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/i/n;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/i/n;->b:Lcn/nubia/i/j;

    iget-object v4, p0, Lcn/nubia/i/n;->a:Lcn/nubia/i/e;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/i/g;-><init>(Landroid/view/View;Landroid/app/Activity;Lcn/nubia/i/j;Lcn/nubia/i/e;)V

    iput-object v0, p0, Lcn/nubia/i/n;->d:Lcn/nubia/i/g;

    .line 46
    new-instance v0, Lcn/nubia/i/f;

    invoke-virtual {p0}, Lcn/nubia/i/n;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/i/n;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/i/n;->b:Lcn/nubia/i/j;

    iget-object v4, p0, Lcn/nubia/i/n;->a:Lcn/nubia/i/e;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/i/f;-><init>(Landroid/view/View;Landroid/app/Activity;Lcn/nubia/i/j;Lcn/nubia/i/e;)V

    iput-object v0, p0, Lcn/nubia/i/n;->c:Lcn/nubia/i/f;

    .line 50
    iget-object v1, p0, Lcn/nubia/i/n;->d:Lcn/nubia/i/g;

    invoke-virtual {v1, v0}, Lcn/nubia/i/g;->a(Lcn/nubia/i/f;)V

    .line 51
    iget-object v0, p0, Lcn/nubia/i/n;->c:Lcn/nubia/i/f;

    iget-object v1, p0, Lcn/nubia/i/n;->d:Lcn/nubia/i/g;

    invoke-virtual {v0, v1}, Lcn/nubia/i/f;->a(Lcn/nubia/i/g;)V

    .line 53
    invoke-virtual {p0}, Lcn/nubia/i/n;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcn/nubia/i/q$d;->r:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/i/n$1;

    invoke-direct {v1, p0}, Lcn/nubia/i/n$1;-><init>(Lcn/nubia/i/n;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 97
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
