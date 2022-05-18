.class public final Landroidx/appcompat/app/f$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "l"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroid/view/ViewGroup;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Landroidx/appcompat/view/menu/g;

.field k:Landroidx/appcompat/view/menu/e;

.field l:Landroid/content/Context;

.field m:Z

.field n:Z

.field o:Z

.field public p:Z

.field q:Z

.field r:Z

.field s:Landroid/os/Bundle;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 2844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2845
    iput p1, p0, Landroidx/appcompat/app/f$l;->a:I

    const/4 p1, 0x0

    .line 2847
    iput-boolean p1, p0, Landroidx/appcompat/app/f$l;->q:Z

    return-void
.end method


# virtual methods
.method a(Landroidx/appcompat/view/menu/m$a;)Landroidx/appcompat/view/menu/n;
    .locals 3

    .line 2912
    iget-object v0, p0, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2914
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f$l;->k:Landroidx/appcompat/view/menu/e;

    if-nez v0, :cond_1

    .line 2915
    new-instance v0, Landroidx/appcompat/view/menu/e;

    iget-object v1, p0, Landroidx/appcompat/app/f$l;->l:Landroid/content/Context;

    sget v2, Landroidx/appcompat/a$g;->k:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/e;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/app/f$l;->k:Landroidx/appcompat/view/menu/e;

    .line 2917
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/e;->a(Landroidx/appcompat/view/menu/m$a;)V

    .line 2918
    iget-object p1, p0, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    iget-object v0, p0, Landroidx/appcompat/app/f$l;->k:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;)V

    .line 2921
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/f$l;->k:Landroidx/appcompat/view/menu/e;

    iget-object v0, p0, Landroidx/appcompat/app/f$l;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/e;->a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/content/Context;)V
    .locals 4

    .line 2868
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2869
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 2870
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2873
    sget v2, Landroidx/appcompat/a$a;->a:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2874
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    .line 2875
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2879
    :cond_0
    sget v2, Landroidx/appcompat/a$a;->E:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2880
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    .line 2881
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 2883
    :cond_1
    sget v0, Landroidx/appcompat/a$i;->b:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2886
    :goto_0
    new-instance v0, Landroidx/appcompat/view/d;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    .line 2887
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2889
    iput-object v0, p0, Landroidx/appcompat/app/f$l;->l:Landroid/content/Context;

    .line 2891
    sget-object p1, Landroidx/appcompat/a$j;->az:[I

    invoke-virtual {v0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2892
    sget v0, Landroidx/appcompat/a$j;->aC:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/app/f$l;->b:I

    .line 2894
    sget v0, Landroidx/appcompat/a$j;->aB:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/app/f$l;->f:I

    .line 2896
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method a(Landroidx/appcompat/view/menu/g;)V
    .locals 2

    .line 2900
    iget-object v0, p0, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 2903
    iget-object v1, p0, Landroidx/appcompat/app/f$l;->k:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;)V

    .line 2905
    :cond_1
    iput-object p1, p0, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_2

    .line 2907
    iget-object v0, p0, Landroidx/appcompat/app/f$l;->k:Landroidx/appcompat/view/menu/e;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;)V

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 3

    .line 2851
    iget-object v0, p0, Landroidx/appcompat/app/f$l;->h:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2852
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f$l;->i:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 2854
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f$l;->k:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method
