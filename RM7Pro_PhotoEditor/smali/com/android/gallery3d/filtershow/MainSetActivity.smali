.class public Lcom/android/gallery3d/filtershow/MainSetActivity;
.super Landroid/app/Activity;
.source ""


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Lcn/nubia/collage/a;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Landroid/view/View$OnClickListener;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/view/View$OnClickListener;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/gallery3d/filtershow/MainSetActivity$a;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/MainSetActivity$a;-><init>(Lcom/android/gallery3d/filtershow/MainSetActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->h:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/gallery3d/filtershow/MainSetActivity$b;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/MainSetActivity$b;-><init>(Lcom/android/gallery3d/filtershow/MainSetActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->i:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/gallery3d/filtershow/MainSetActivity$c;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/MainSetActivity$c;-><init>(Lcom/android/gallery3d/filtershow/MainSetActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->j:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/gallery3d/filtershow/MainSetActivity$d;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/MainSetActivity$d;-><init>(Lcom/android/gallery3d/filtershow/MainSetActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->k:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/gallery3d/filtershow/MainSetActivity$e;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/MainSetActivity$e;-><init>(Lcom/android/gallery3d/filtershow/MainSetActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->l:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/gallery3d/filtershow/MainSetActivity$f;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/MainSetActivity$f;-><init>(Lcom/android/gallery3d/filtershow/MainSetActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->m:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/gallery3d/filtershow/MainSetActivity$g;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/MainSetActivity$g;-><init>(Lcom/android/gallery3d/filtershow/MainSetActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->n:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/filtershow/MainSetActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/MainSetActivity;->d()V

    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/filtershow/MainSetActivity;)Lcn/nubia/collage/a;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->g:Lcn/nubia/collage/a;

    return-object p0
.end method

.method private c(Landroid/view/Window;)V
    .locals 4

    const v0, 0x7f0801ab

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const v1, 0x7f0801db

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const v2, 0x7f080172

    invoke-virtual {p1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->g:Lcn/nubia/collage/a;

    invoke-virtual {v2}, Lcn/nubia/collage/a;->b()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->g:Lcn/nubia/collage/a;

    invoke-virtual {v0}, Lcn/nubia/collage/a;->b()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private d()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0003

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    const v2, 0x7f0b006f

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(I)V

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/MainSetActivity;->c(Landroid/view/Window;)V

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const v2, 0x7f080201

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/gallery3d/filtershow/MainSetActivity$h;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/filtershow/MainSetActivity$h;-><init>(Lcom/android/gallery3d/filtershow/MainSetActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b006e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0801b3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->a:Landroid/view/View;

    const p1, 0x7f0801b6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->b:Landroid/view/View;

    const p1, 0x7f0801b4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->c:Landroid/view/View;

    const p1, 0x7f0801b5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->d:Landroid/view/View;

    const p1, 0x7f0801b7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->e:Landroid/view/View;

    const p1, 0x7f0801b2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->f:Landroid/view/View;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcn/nubia/collage/a;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/nubia/collage/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->g:Lcn/nubia/collage/a;

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/MainSetActivity;->g:Lcn/nubia/collage/a;

    invoke-virtual {v0}, Lcn/nubia/collage/a;->c()V

    return-void
.end method
