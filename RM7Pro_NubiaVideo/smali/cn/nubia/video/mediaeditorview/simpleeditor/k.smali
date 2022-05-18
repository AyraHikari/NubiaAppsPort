.class public Lcn/nubia/video/mediaeditorview/simpleeditor/k;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lb/a/a/c/f;
.implements Lb/a/a/c/h;
.implements Lb/a/a/c/g;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Lcn/nubia/video/mediaeditorview/o/a;

.field private e:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

.field private f:Lcn/nubia/video/commonui/app/f;

.field private g:I

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->g:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->h:Landroid/content/Context;

    return-void
.end method

.method static synthetic u(Lcn/nubia/video/mediaeditorview/simpleeditor/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->v()V

    return-void
.end method

.method private v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->f:Lcn/nubia/video/commonui/app/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->y(Z)V

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->w()V

    :cond_0
    return-void
.end method

.method private w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->f:Lcn/nubia/video/commonui/app/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->f:Lcn/nubia/video/commonui/app/f;

    :cond_0
    return-void
.end method

.method private x(Landroid/net/Uri;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "android.intent.category.DEFAULT"

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->h:Landroid/content/Context;

    sget v1, Lcn/nubia/video/mediaeditorview/i;->y:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->h:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 8
    invoke-static {}, Lb/a/b/a/j/a;->i()Lb/a/b/a/j/a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_edit_used"

    const-string v2, "share"

    const-string v3, "null"

    invoke-virtual {p1, v0, v1, v2, v3}, Lb/a/b/a/j/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->h:Landroid/content/Context;

    sget v0, Lcn/nubia/video/mediaeditorview/i;->r:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private z(I)V
    .locals 3

    .line 1
    new-instance v0, Lcn/nubia/video/commonui/app/f;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->e:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    sget v2, Lcn/nubia/video/mediaeditorview/j;->a:I

    invoke-direct {v0, v1, v2}, Lcn/nubia/video/commonui/app/f;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->f:Lcn/nubia/video/commonui/app/f;

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->e:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    sget v2, Lcn/nubia/video/mediaeditorview/i;->e:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->f:Lcn/nubia/video/commonui/app/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->f:Lcn/nubia/video/commonui/app/f;

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/f;->u(Z)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->f:Lcn/nubia/video/commonui/app/f;

    invoke-virtual {v0, p1}, Lcn/nubia/video/commonui/app/f;->w(I)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->f:Lcn/nubia/video/commonui/app/f;

    invoke-virtual {p1, v1}, Lcn/nubia/video/commonui/app/d;->setCanceledOnTouchOutside(Z)V

    .line 7
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->f:Lcn/nubia/video/commonui/app/f;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/video/commonui/app/f;->A(I)V

    .line 8
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->f:Lcn/nubia/video/commonui/app/f;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcn/nubia/video/commonui/app/f;->z(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->f:Lcn/nubia/video/commonui/app/f;

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->e:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/video/mediaeditorview/i;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/nubia/video/mediaeditorview/simpleeditor/k$a;

    invoke-direct {v1, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/k$a;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/k;)V

    invoke-virtual {p1, v0, v1}, Lcn/nubia/video/commonui/app/b;->i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->f:Lcn/nubia/video/commonui/app/f;

    new-instance v0, Lcn/nubia/video/mediaeditorview/simpleeditor/k$b;

    invoke-direct {v0, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/k$b;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/k;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 11
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->f:Lcn/nubia/video/commonui/app/f;

    invoke-virtual {p1}, Lcn/nubia/video/commonui/app/b;->show()V

    return-void
.end method


# virtual methods
.method public f(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->f:Lcn/nubia/video/commonui/app/f;

    if-eqz v0, :cond_0

    long-to-int p1, p1

    .line 2
    invoke-virtual {v0, p1}, Lcn/nubia/video/commonui/app/f;->x(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcn/nubia/video/mediaeditorview/g;->G:I

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_3

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "confirm mProgress == null : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->f:Lcn/nubia/video/commonui/app/f;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TopMenuFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->d:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->C()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iput v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->g:I

    .line 6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->f:Lcn/nubia/video/commonui/app/f;

    if-nez p1, :cond_7

    .line 7
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->d:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->D()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->d:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->G()V

    .line 9
    :cond_1
    invoke-direct {p0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->z(I)V

    .line 10
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->d:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1, v3}, Lcn/nubia/video/mediaeditorview/o/a;->k(Z)V

    goto :goto_1

    .line 11
    :cond_2
    new-instance p1, Lcn/nubia/video/player/p;

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->h:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcn/nubia/video/player/p;-><init>(Landroid/content/Context;)V

    sget v0, Lcn/nubia/video/mediaeditorview/i;->U:I

    invoke-virtual {p1, v0}, Lcn/nubia/video/player/p;->g(I)V

    goto :goto_1

    .line 12
    :cond_3
    sget v0, Lcn/nubia/video/mediaeditorview/g;->F:I

    if-ne p1, v0, :cond_4

    .line 13
    iput v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->g:I

    .line 14
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->e:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 15
    :cond_4
    sget v0, Lcn/nubia/video/mediaeditorview/g;->J:I

    if-ne p1, v0, :cond_7

    .line 16
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->d:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->C()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    iput v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->g:I

    .line 18
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->f:Lcn/nubia/video/commonui/app/f;

    if-nez p1, :cond_7

    .line 19
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->d:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->D()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->d:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->G()V

    .line 21
    :cond_5
    invoke-direct {p0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->z(I)V

    .line 22
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->d:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1, v2}, Lcn/nubia/video/mediaeditorview/o/a;->k(Z)V

    goto :goto_1

    .line 23
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->p()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->x(Landroid/net/Uri;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->w()V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->d:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->z()Landroid/net/Uri;

    move-result-object v0

    .line 3
    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->g:I

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->h:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 6
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 7
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 8
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->e:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->y(Z)V

    .line 10
    invoke-direct {p0, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->x(Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcn/nubia/video/mediaeditorview/h;->h:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->e:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    .line 3
    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->h:Landroid/content/Context;

    .line 4
    sget p2, Lcn/nubia/video/mediaeditorview/g;->G:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->a:Landroid/widget/Button;

    .line 5
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget p2, Lcn/nubia/video/mediaeditorview/g;->F:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->b:Landroid/widget/Button;

    .line 7
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget p2, Lcn/nubia/video/mediaeditorview/g;->J:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->c:Landroid/widget/Button;

    .line 9
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-static {}, Lcn/nubia/video/mediaeditorview/o/a;->s()Lcn/nubia/video/mediaeditorview/o/a;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->d:Lcn/nubia/video/mediaeditorview/o/a;

    .line 11
    invoke-virtual {p2, p0}, Lcn/nubia/video/mediaeditorview/o/a;->S(Lb/a/a/c/f;)V

    .line 12
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->d:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p2, p0}, Lcn/nubia/video/mediaeditorview/o/a;->V(Lb/a/a/c/h;)V

    .line 13
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->d:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p2, p0}, Lcn/nubia/video/mediaeditorview/o/a;->T(Lb/a/a/c/g;)V

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->d:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->C()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->v()V

    return-void
.end method

.method public s(I)V
    .locals 0

    return-void
.end method

.method public y(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->e:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-virtual {v0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->A(Z)V

    return-void
.end method
