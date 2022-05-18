.class public Lcn/nubia/app/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/app/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcn/nubia/app/AlertController$c;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/app/a;->g(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/app/a$a;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/nubia/app/AlertController$c;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lcn/nubia/app/a;->g(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcn/nubia/app/AlertController$c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/app/a$a;->a:Lcn/nubia/app/AlertController$c;

    iput p2, p0, Lcn/nubia/app/a$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/app/a;
    .locals 4

    new-instance v0, Lcn/nubia/app/a;

    iget-object v1, p0, Lcn/nubia/app/a$a;->a:Lcn/nubia/app/AlertController$c;

    iget-object v1, v1, Lcn/nubia/app/AlertController$c;->a:Landroid/content/Context;

    iget v2, p0, Lcn/nubia/app/a$a;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/app/a;-><init>(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcn/nubia/app/a$a;->a:Lcn/nubia/app/AlertController$c;

    invoke-static {v0}, Lcn/nubia/app/a;->e(Lcn/nubia/app/a;)Lcn/nubia/app/AlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/app/AlertController$c;->a(Lcn/nubia/app/AlertController;)V

    iget-object v1, p0, Lcn/nubia/app/a$a;->a:Lcn/nubia/app/AlertController$c;

    iget-boolean v1, v1, Lcn/nubia/app/AlertController$c;->o:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, Lcn/nubia/app/a$a;->a:Lcn/nubia/app/AlertController$c;

    iget-boolean v1, v1, Lcn/nubia/app/AlertController$c;->o:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/app/b;->setCanceledOnTouchOutside(Z)V

    :cond_0
    iget-object v1, p0, Lcn/nubia/app/a$a;->a:Lcn/nubia/app/AlertController$c;

    iget-object v1, v1, Lcn/nubia/app/AlertController$c;->p:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcn/nubia/app/a$a;->a:Lcn/nubia/app/AlertController$c;

    iget-object v1, v1, Lcn/nubia/app/AlertController$c;->q:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcn/nubia/app/a$a;->a:Lcn/nubia/app/AlertController$c;

    iget-object v1, v1, Lcn/nubia/app/AlertController$c;->r:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public b(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/app/a$a;
    .locals 1

    iget-object v0, p0, Lcn/nubia/app/a$a;->a:Lcn/nubia/app/AlertController$c;

    iput-object p1, v0, Lcn/nubia/app/AlertController$c;->t:Landroid/widget/ListAdapter;

    iput-object p2, v0, Lcn/nubia/app/AlertController$c;->u:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/app/a$a;
    .locals 2

    iget-object v0, p0, Lcn/nubia/app/a$a;->a:Lcn/nubia/app/AlertController$c;

    iget-object v1, v0, Lcn/nubia/app/AlertController$c;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/app/AlertController$c;->k:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcn/nubia/app/a$a;->a:Lcn/nubia/app/AlertController$c;

    iput-object p2, p1, Lcn/nubia/app/AlertController$c;->l:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public d()Lcn/nubia/app/a;
    .locals 1

    invoke-virtual {p0}, Lcn/nubia/app/a$a;->a()Lcn/nubia/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/app/a;->show()V

    return-object v0
.end method
