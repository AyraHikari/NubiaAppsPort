.class public Lcn/nubia/video/commonui/app/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/commonui/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcn/nubia/video/commonui/app/AlertController$c;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcn/nubia/video/commonui/app/b;->f(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/video/commonui/app/b$a;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcn/nubia/video/commonui/app/AlertController$c;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-static {p1, p2}, Lcn/nubia/video/commonui/app/b;->f(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcn/nubia/video/commonui/app/AlertController$c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    .line 5
    iput p2, p0, Lcn/nubia/video/commonui/app/b$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/video/commonui/app/b;
    .locals 4

    .line 1
    new-instance v0, Lcn/nubia/video/commonui/app/b;

    iget-object v1, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iget-object v1, v1, Lcn/nubia/video/commonui/app/AlertController$c;->a:Landroid/content/Context;

    iget v2, p0, Lcn/nubia/video/commonui/app/b$a;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/video/commonui/app/b;-><init>(Landroid/content/Context;IZ)V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    invoke-static {v0}, Lcn/nubia/video/commonui/app/b;->d(Lcn/nubia/video/commonui/app/b;)Lcn/nubia/video/commonui/app/AlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/video/commonui/app/AlertController$c;->a(Lcn/nubia/video/commonui/app/AlertController;)V

    .line 3
    iget-object v1, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iget-boolean v1, v1, Lcn/nubia/video/commonui/app/AlertController$c;->o:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    iget-object v1, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iget-boolean v1, v1, Lcn/nubia/video/commonui/app/AlertController$c;->o:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/d;->setCanceledOnTouchOutside(Z)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iget-object v1, v1, Lcn/nubia/video/commonui/app/AlertController$c;->p:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 7
    iget-object v1, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iget-object v1, v1, Lcn/nubia/video/commonui/app/AlertController$c;->q:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8
    iget-object v1, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iget-object v1, v1, Lcn/nubia/video/commonui/app/AlertController$c;->r:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public b(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iput-object p1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->t:Landroid/widget/ListAdapter;

    .line 2
    iput-object p2, v0, Lcn/nubia/video/commonui/app/AlertController$c;->u:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c(Z)Lcn/nubia/video/commonui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iput-boolean p1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->o:Z

    return-object p0
.end method

.method public d(Landroid/view/View;)Lcn/nubia/video/commonui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iput-object p1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->g:Landroid/view/View;

    return-object p0
.end method

.method public e(I)Lcn/nubia/video/commonui/app/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iget-object v1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public f(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iget-object v1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->k:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iput-object p2, p1, Lcn/nubia/video/commonui/app/AlertController$c;->l:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public g(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iput-object p1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->k:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, v0, Lcn/nubia/video/commonui/app/AlertController$c;->l:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public h(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iget-object v1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->i:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iput-object p2, p1, Lcn/nubia/video/commonui/app/AlertController$c;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iput-object p1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->i:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, v0, Lcn/nubia/video/commonui/app/AlertController$c;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public j([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iput-object p1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->s:[Ljava/lang/CharSequence;

    .line 2
    iput-object p3, v0, Lcn/nubia/video/commonui/app/AlertController$c;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput p2, v0, Lcn/nubia/video/commonui/app/AlertController$c;->F:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->E:Z

    return-object p0
.end method

.method public k(I)Lcn/nubia/video/commonui/app/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iget-object v1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public l(Ljava/lang/CharSequence;)Lcn/nubia/video/commonui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iput-object p1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public m(Landroid/view/View;)Lcn/nubia/video/commonui/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b$a;->a:Lcn/nubia/video/commonui/app/AlertController$c;

    iput-object p1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->w:Landroid/view/View;

    const/4 p1, 0x0

    .line 2
    iput p1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->v:I

    .line 3
    iput-boolean p1, v0, Lcn/nubia/video/commonui/app/AlertController$c;->B:Z

    return-object p0
.end method

.method public n()Lcn/nubia/video/commonui/app/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/commonui/app/b$a;->a()Lcn/nubia/video/commonui/app/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b;->show()V

    return-object v0
.end method
