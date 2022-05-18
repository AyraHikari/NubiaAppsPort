.class public Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediaeditorview/simpleeditor/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$e;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/app/FragmentManager;

.field private b:Lcn/nubia/video/mediaeditorview/simpleeditor/k;

.field private c:Lcn/nubia/video/mediaeditorview/simpleeditor/b;

.field private d:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;

.field private e:Landroid/net/Uri;

.field private f:Ljava/lang/String;

.field private g:Lcn/nubia/video/player/a;

.field protected h:Landroid/app/Activity;

.field private i:Z

.field private j:Z

.field private k:Lcn/nubia/video/mediaeditorview/o/a;

.field private l:Lcn/nubia/video/commonui/app/b;

.field private m:I

.field private n:Lcn/nubia/video/commonui/app/f;

.field private o:Z

.field private p:Z

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->f:Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->i:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->j:Z

    .line 5
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->k:Lcn/nubia/video/mediaeditorview/o/a;

    .line 6
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->l:Lcn/nubia/video/commonui/app/b;

    const/4 v2, -0x1

    .line 7
    iput v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->m:I

    .line 8
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->n:Lcn/nubia/video/commonui/app/f;

    .line 9
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->o:Z

    .line 10
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->p:Z

    .line 11
    iput v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->q:I

    return-void
.end method

.method private C()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->a:Landroid/support/v4/app/FragmentManager;

    const-string v2, "bottommenufragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->p:Z

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    new-instance v1, Lcn/nubia/video/mediaeditorview/simpleeditor/b;

    invoke-direct {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/b;-><init>()V

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/b;

    .line 5
    invoke-virtual {v1, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->v(Lcn/nubia/video/mediaeditorview/simpleeditor/b$a;)V

    .line 6
    sget v1, Lcn/nubia/video/mediaeditorview/g;->e:I

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/b;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 7
    :cond_1
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/b;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 8
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void
.end method

.method private E(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "submenufragmenttag"

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-direct {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;-><init>()V

    .line 3
    sget v1, Lcn/nubia/video/mediaeditorview/g;->S:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 4
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 5
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lcn/nubia/video/mediaeditorview/simpleeditor/f;

    invoke-direct {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/f;-><init>()V

    .line 7
    sget v1, Lcn/nubia/video/mediaeditorview/g;->S:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 8
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 9
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Lcn/nubia/video/mediaeditorview/simpleeditor/h;

    invoke-direct {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/h;-><init>()V

    .line 11
    sget v1, Lcn/nubia/video/mediaeditorview/g;->S:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 12
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 13
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 14
    :cond_3
    new-instance p1, Lcn/nubia/video/mediaeditorview/simpleeditor/d;

    invoke-direct {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;-><init>()V

    .line 15
    sget v1, Lcn/nubia/video/mediaeditorview/g;->S:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 16
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 17
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    return-void
.end method

.method private F()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->a:Landroid/support/v4/app/FragmentManager;

    const-string v2, "topmenufragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->p:Z

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    new-instance v1, Lcn/nubia/video/mediaeditorview/simpleeditor/k;

    invoke-direct {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/k;-><init>()V

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/k;

    .line 5
    sget v3, Lcn/nubia/video/mediaeditorview/g;->X:I

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 6
    :cond_1
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 7
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void
.end method

.method static synthetic f(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;)Lcn/nubia/video/mediaeditorview/simpleeditor/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/b;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->n()V

    return-void
.end method

.method static synthetic h(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->v()V

    return-void
.end method

.method static synthetic i(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->j:Z

    return p1
.end method

.method static synthetic j(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->w()V

    return-void
.end method

.method static synthetic k(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;)Lcn/nubia/video/mediaeditorview/o/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->k:Lcn/nubia/video/mediaeditorview/o/a;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->x()V

    return-void
.end method

.method private m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->l:Lcn/nubia/video/commonui/app/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/nubia/video/commonui/app/b$a;

    invoke-direct {v0, p0}, Lcn/nubia/video/commonui/app/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b$a;->a()Lcn/nubia/video/commonui/app/b;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->l:Lcn/nubia/video/commonui/app/b;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->l:Lcn/nubia/video/commonui/app/b;

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/d;->setCanceledOnTouchOutside(Z)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->l:Lcn/nubia/video/commonui/app/b;

    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b;->show()V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->l:Lcn/nubia/video/commonui/app/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    sget v2, Lcn/nubia/video/mediaeditorview/h;->k:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    .line 8
    sget v2, Lcn/nubia/video/mediaeditorview/g;->h:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 9
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 10
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 11
    sget v1, Lcn/nubia/video/mediaeditorview/g;->f:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$b;

    invoke-direct {v2, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$b;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    sget v1, Lcn/nubia/video/mediaeditorview/g;->g:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$c;

    invoke-direct {v1, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$c;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->l:Lcn/nubia/video/commonui/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->l:Lcn/nubia/video/commonui/app/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->l:Lcn/nubia/video/commonui/app/b;

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showPermissionDialog"

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->a:Landroid/support/v4/app/FragmentManager;

    const-string v2, "submenufragmenttag"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->a:Landroid/support/v4/app/FragmentManager;

    const-string v2, "topmenufragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 5
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private u()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showPermissionDialog"

    const/4 v3, 0x1

    .line 4
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method

.method private v()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcn/nubia/video/permission/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcn/nubia/video/permission/RequestPermissionsActivity;->h(Landroid/app/Activity;)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->j:Z

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->w()V

    return-void
.end method

.method private w()V
    .locals 5

    .line 1
    invoke-static {}, Lb/a/b/a/j/a;->i()Lb/a/b/a/j/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->h:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video_edit_launch"

    const-string v4, "key"

    invoke-virtual {v0, v1, v3, v4, v2}, Lb/a/b/a/j/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$e;

    invoke-direct {v0, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$e;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    sget v0, Lcn/nubia/video/mediaeditorview/h;->i:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->a:Landroid/support/v4/app/FragmentManager;

    sget v1, Lcn/nubia/video/mediaeditorview/g;->Y:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->d:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;

    .line 5
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->F()V

    .line 6
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->C()V

    .line 7
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->s()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->p:Z

    .line 9
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->e:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcn/nubia/video/mediaeditorview/m;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->f:Ljava/lang/String;

    .line 11
    :cond_0
    invoke-static {}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->i()Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->f:Ljava/lang/String;

    new-instance v2, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$a;

    invoke-direct {v2, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$a;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->k(Ljava/lang/String;Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;Z)V

    return-void
.end method

.method private x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->k:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->G()V

    return-void
.end method

.method private z()V
    .locals 3

    .line 1
    new-instance v0, Lcn/nubia/video/player/a;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->h:Landroid/app/Activity;

    new-instance v2, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$d;

    invoke-direct {v2, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$d;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;)V

    invoke-direct {v0, v1, v2}, Lcn/nubia/video/player/a;-><init>(Landroid/content/Context;Lcn/nubia/video/player/a$b;)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->g:Lcn/nubia/video/player/a;

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->d:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->F(Z)V

    :cond_0
    return-void
.end method

.method public B(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->m:I

    return-void
.end method

.method public D()V
    .locals 2

    .line 1
    new-instance v0, Lcn/nubia/video/commonui/app/f;

    sget v1, Lcn/nubia/video/mediaeditorview/j;->b:I

    invoke-direct {v0, p0, v1}, Lcn/nubia/video/commonui/app/f;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->n:Lcn/nubia/video/commonui/app/f;

    .line 2
    sget v1, Lcn/nubia/video/mediaeditorview/i;->s:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/f;->j(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->n:Lcn/nubia/video/commonui/app/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->n:Lcn/nubia/video/commonui/app/f;

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/d;->setCanceledOnTouchOutside(Z)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->n:Lcn/nubia/video/commonui/app/f;

    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b;->show()V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->n:Lcn/nubia/video/commonui/app/f;

    sget v1, Lcn/nubia/video/mediaeditorview/d;->d:I

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/b;->g(I)V

    return-void
.end method

.method public G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->g:Lcn/nubia/video/player/a;

    invoke-virtual {v0}, Lcn/nubia/video/player/a;->h()V

    return-void
.end method

.method public e(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBottomMenuClick id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleVideoEditorActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    const/4 v1, 0x0

    const-string v2, "submenufragmenttag"

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/mediaeditorview/simpleeditor/a;

    .line 3
    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/a;->u()V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 5
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->F()V

    .line 6
    iput v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->q:I

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/mediaeditorview/simpleeditor/a;

    .line 8
    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/a;->v()V

    .line 9
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 10
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->F()V

    .line 11
    iput v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->q:I

    goto :goto_0

    .line 12
    :cond_2
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->q:I

    .line 13
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->t()V

    .line 14
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->E(I)V

    goto :goto_0

    .line 15
    :cond_3
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->q:I

    .line 16
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->t()V

    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->E(I)V

    goto :goto_0

    .line 18
    :cond_4
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->q:I

    .line 19
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->t()V

    .line 20
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->E(I)V

    goto :goto_0

    .line 21
    :cond_5
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->q:I

    .line 22
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->t()V

    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->E(I)V

    :goto_0
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->n:Lcn/nubia/video/commonui/app/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->n:Lcn/nubia/video/commonui/app/f;

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->a:Landroid/support/v4/app/FragmentManager;

    const-string v1, "submenufragmenttag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed mSubFragment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimpleVideoEditorActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->q:I

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 5
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->F()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->q:I

    .line 7
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/b;

    invoke-virtual {v1, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->x(I)V

    return-void

    :cond_0
    const-string v0, "onBackPressed finish"

    .line 8
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "SimpleVideoEditorActivity"

    const-string v0, "onCreate"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->h:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->o:Z

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->e:Landroid/net/Uri;

    .line 8
    invoke-static {p0}, Lcn/nubia/video/mediaeditorview/o/a;->F(Landroid/content/Context;)V

    .line 9
    invoke-static {}, Lcn/nubia/video/mediaeditorview/o/a;->s()Lcn/nubia/video/mediaeditorview/o/a;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->k:Lcn/nubia/video/mediaeditorview/o/a;

    .line 10
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->a:Landroid/support/v4/app/FragmentManager;

    .line 11
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->z()V

    .line 12
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->e:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcn/nubia/video/mediaeditorview/m;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->f:Ljava/lang/String;

    .line 13
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->p:Z

    .line 14
    invoke-static {p0}, Lb/a/b/a/k/a;->c(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v2, v1

    iput-boolean v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->i:Z

    .line 15
    invoke-static {}, Lb/a/b/a/j/a;->i()Lb/a/b/a/j/a;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb/a/b/a/j/a;->j(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "P875N02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "com.android.systemui"

    const/4 v3, 0x3

    .line 17
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "dock_non_resizeble_failed_to_dock_text"

    const-string v5, "string"

    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 21
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "NameNotfoundException"

    .line 23
    invoke-static {p1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 25
    :cond_0
    invoke-static {p0}, Lcn/nubia/video/permission/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->i:Z

    if-eqz v0, :cond_1

    .line 26
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->u()Z

    move-result v0

    if-nez v0, :cond_2

    .line 27
    :cond_1
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->j:Z

    .line 28
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->w()V

    .line 29
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ver@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "SimpleVideoEditorActivity"

    const-string v1, "onDestroy"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->k:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->H()V

    .line 3
    invoke-static {p0}, Lcn/nubia/video/mediaeditorview/o/a;->j(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->g:Lcn/nubia/video/player/a;

    .line 5
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "SimpleVideoEditorActivity"

    const-string v1, "onPause"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 3
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->G()V

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->x()V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->k:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->u()Lb/a/c/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->k:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->u()Lb/a/c/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/c/a/e;->P()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->m:I

    .line 7
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->k:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->u()Lb/a/c/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/c/a/e;->E()I

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->y()V

    .line 3
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->m()V

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p0}, Lcn/nubia/video/permission/c;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->o:Z

    if-nez v0, :cond_1

    .line 7
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->o:Z

    .line 8
    invoke-static {p0}, Lcn/nubia/video/permission/RequestPermissionsActivity;->h(Landroid/app/Activity;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    .line 10
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->j:Z

    if-nez v0, :cond_3

    .line 11
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->j:Z

    .line 12
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->w()V

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->k:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->u()Lb/a/c/a/e;

    move-result-object v0

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->m:I

    invoke-virtual {v0, v1}, Lb/a/c/a/e;->Y(I)V

    :goto_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "SimpleVideoEditorActivity"

    const-string v0, "onSaveInstanceState "

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public p()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method public r()Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->d:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;

    return-object v0
.end method

.method public y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->g:Lcn/nubia/video/player/a;

    invoke-virtual {v0}, Lcn/nubia/video/player/a;->g()V

    return-void
.end method
