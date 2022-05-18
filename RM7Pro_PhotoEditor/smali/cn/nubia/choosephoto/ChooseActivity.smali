.class public Lcn/nubia/choosephoto/ChooseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source ""


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/nubia/app/c;

.field private c:Lcn/nubia/choosephoto/ui/d;

.field private d:Lcn/nubia/choosephoto/ui/DisableScrollGridView;

.field private e:Landroid/widget/BaseAdapter;

.field private f:Lcn/nubia/choosephoto/a;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/choosephoto/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/TextView;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/os/Handler;

.field private t:Lcn/nubia/choosephoto/ui/b$a;

.field private u:Lcn/nubia/choosephoto/ui/b$a;

.field private v:Lcn/nubia/choosephoto/ui/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->c:Lcn/nubia/choosephoto/ui/d;

    iput-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->d:Lcn/nubia/choosephoto/ui/DisableScrollGridView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->q:I

    const/16 v0, 0x9

    iput v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->r:I

    new-instance v0, Lcn/nubia/choosephoto/ChooseActivity$b;

    invoke-direct {v0, p0}, Lcn/nubia/choosephoto/ChooseActivity$b;-><init>(Lcn/nubia/choosephoto/ChooseActivity;)V

    iput-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->s:Landroid/os/Handler;

    new-instance v0, Lcn/nubia/choosephoto/ChooseActivity$c;

    invoke-direct {v0, p0}, Lcn/nubia/choosephoto/ChooseActivity$c;-><init>(Lcn/nubia/choosephoto/ChooseActivity;)V

    iput-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->t:Lcn/nubia/choosephoto/ui/b$a;

    new-instance v0, Lcn/nubia/choosephoto/ChooseActivity$d;

    invoke-direct {v0, p0}, Lcn/nubia/choosephoto/ChooseActivity$d;-><init>(Lcn/nubia/choosephoto/ChooseActivity;)V

    iput-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->u:Lcn/nubia/choosephoto/ui/b$a;

    new-instance v0, Lcn/nubia/choosephoto/ChooseActivity$e;

    invoke-direct {v0, p0}, Lcn/nubia/choosephoto/ChooseActivity$e;-><init>(Lcn/nubia/choosephoto/ChooseActivity;)V

    iput-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->v:Lcn/nubia/choosephoto/ui/b$a;

    return-void
.end method

.method private A()V
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ChooseActivity"

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e012a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "ChooseActivity queryImages sdcard not mount"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->b:Lcn/nubia/app/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e010c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/app/c;->c(Ljava/lang/String;)V

    const-string v0, "ChooseActivity queryImages "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/choosephoto/ChooseActivity$f;

    invoke-direct {v1, p0}, Lcn/nubia/choosephoto/ChooseActivity$f;-><init>(Lcn/nubia/choosephoto/ChooseActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private B(Landroid/support/v4/app/Fragment;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz p2, :cond_0

    const p2, 0x7f01000b

    const v1, 0x7f01000e

    goto :goto_0

    :cond_0
    const p2, 0x7f01000a

    const v1, 0x7f01000d

    :goto_0
    invoke-virtual {v0, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    const p2, 0x7f080096

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static C(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const-string v1, "PICK_MODE"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method private D()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080271

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e011c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcn/nubia/choosephoto/ChooseActivity;->p:I

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private E(Lcn/nubia/choosephoto/a;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/nubia/choosephoto/a;->a()I

    move-result v1

    if-lez v1, :cond_2

    iput-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity;->f:Lcn/nubia/choosephoto/a;

    iget v1, p0, Lcn/nubia/choosephoto/ChooseActivity;->r:I

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Lcn/nubia/choosephoto/ui/d;

    invoke-direct {v1}, Lcn/nubia/choosephoto/ui/d;-><init>()V

    iput-object v1, p0, Lcn/nubia/choosephoto/ChooseActivity;->c:Lcn/nubia/choosephoto/ui/d;

    iget-object v2, p0, Lcn/nubia/choosephoto/ChooseActivity;->t:Lcn/nubia/choosephoto/ui/b$a;

    invoke-virtual {v1, v2}, Lcn/nubia/choosephoto/ui/b;->b(Lcn/nubia/choosephoto/ui/b$a;)V

    iget-object v1, p0, Lcn/nubia/choosephoto/ChooseActivity;->c:Lcn/nubia/choosephoto/ui/d;

    invoke-virtual {v1, p1}, Lcn/nubia/choosephoto/ui/f;->d(Lcn/nubia/choosephoto/a;)V

    iget-object v1, p0, Lcn/nubia/choosephoto/ChooseActivity;->c:Lcn/nubia/choosephoto/ui/d;

    :goto_0
    invoke-direct {p0, v1, v0}, Lcn/nubia/choosephoto/ChooseActivity;->B(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_1

    :cond_0
    if-ne v1, v3, :cond_1

    new-instance v1, Lcn/nubia/choosephoto/ui/e;

    invoke-direct {v1}, Lcn/nubia/choosephoto/ui/e;-><init>()V

    iget-object v2, p0, Lcn/nubia/choosephoto/ChooseActivity;->v:Lcn/nubia/choosephoto/ui/b$a;

    invoke-virtual {v1, v2}, Lcn/nubia/choosephoto/ui/b;->b(Lcn/nubia/choosephoto/ui/b$a;)V

    invoke-virtual {v1, p1}, Lcn/nubia/choosephoto/ui/f;->d(Lcn/nubia/choosephoto/a;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/nubia/choosephoto/a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    return-void

    :cond_2
    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity;->f:Lcn/nubia/choosephoto/a;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcn/nubia/choosephoto/a;->a()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity;->f:Lcn/nubia/choosephoto/a;

    invoke-direct {p0, p1}, Lcn/nubia/choosephoto/ChooseActivity;->E(Lcn/nubia/choosephoto/a;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method private F()V
    .locals 4

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0171

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/choosephoto/ChooseActivity;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/nubia/choosephoto/ChooseActivity;->j:Landroid/widget/Button;

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private G()V
    .locals 4

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    iget v1, p0, Lcn/nubia/choosephoto/ChooseActivity;->n:I

    mul-int/2addr v1, v0

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcn/nubia/choosephoto/ChooseActivity;->o:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcn/nubia/choosephoto/ChooseActivity;->d:Lcn/nubia/choosephoto/ui/DisableScrollGridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->d:Lcn/nubia/choosephoto/ui/DisableScrollGridView;

    iget v1, p0, Lcn/nubia/choosephoto/ChooseActivity;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->d:Lcn/nubia/choosephoto/ui/DisableScrollGridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->e:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcn/nubia/choosephoto/ChooseActivity;->F()V

    return-void
.end method

.method static synthetic f(Lcn/nubia/choosephoto/ChooseActivity;)Lcn/nubia/app/c;
    .locals 0

    iget-object p0, p0, Lcn/nubia/choosephoto/ChooseActivity;->b:Lcn/nubia/app/c;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/choosephoto/ChooseActivity;)Lcn/nubia/choosephoto/a;
    .locals 0

    iget-object p0, p0, Lcn/nubia/choosephoto/ChooseActivity;->f:Lcn/nubia/choosephoto/a;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/choosephoto/ChooseActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcn/nubia/choosephoto/ChooseActivity;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/choosephoto/ChooseActivity;Lcn/nubia/choosephoto/a;)Lcn/nubia/choosephoto/a;
    .locals 0

    iput-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity;->f:Lcn/nubia/choosephoto/a;

    return-object p1
.end method

.method static synthetic j(Lcn/nubia/choosephoto/ChooseActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcn/nubia/choosephoto/ChooseActivity;->s:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/choosephoto/ChooseActivity;)Lcn/nubia/choosephoto/ui/b$a;
    .locals 0

    iget-object p0, p0, Lcn/nubia/choosephoto/ChooseActivity;->u:Lcn/nubia/choosephoto/ui/b$a;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/choosephoto/ChooseActivity;Landroid/support/v4/app/Fragment;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/nubia/choosephoto/ChooseActivity;->B(Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method

.method static synthetic m(Lcn/nubia/choosephoto/ChooseActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/nubia/choosephoto/ChooseActivity;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/choosephoto/ChooseActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic o(Lcn/nubia/choosephoto/ChooseActivity;)Lcn/nubia/choosephoto/ui/d;
    .locals 0

    iget-object p0, p0, Lcn/nubia/choosephoto/ChooseActivity;->c:Lcn/nubia/choosephoto/ui/d;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/choosephoto/ChooseActivity;Lcn/nubia/choosephoto/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/choosephoto/ChooseActivity;->E(Lcn/nubia/choosephoto/a;)V

    return-void
.end method

.method static synthetic q(Lcn/nubia/choosephoto/ChooseActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcn/nubia/choosephoto/ChooseActivity;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/choosephoto/ChooseActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcn/nubia/choosephoto/ChooseActivity;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic s(Lcn/nubia/choosephoto/ChooseActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/nubia/choosephoto/ChooseActivity;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic t(Lcn/nubia/choosephoto/ChooseActivity;)I
    .locals 0

    iget p0, p0, Lcn/nubia/choosephoto/ChooseActivity;->q:I

    return p0
.end method

.method static synthetic u(Lcn/nubia/choosephoto/ChooseActivity;I)I
    .locals 0

    iput p1, p0, Lcn/nubia/choosephoto/ChooseActivity;->q:I

    return p1
.end method

.method static synthetic v(Lcn/nubia/choosephoto/ChooseActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcn/nubia/choosephoto/ChooseActivity;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic w(Lcn/nubia/choosephoto/ChooseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/choosephoto/ChooseActivity;->G()V

    return-void
.end method

.method static synthetic x(Lcn/nubia/choosephoto/ChooseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/choosephoto/ChooseActivity;->D()V

    return-void
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->i:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/choosephoto/ChooseActivity$h;

    invoke-direct {v1, p0}, Lcn/nubia/choosephoto/ChooseActivity$h;-><init>(Lcn/nubia/choosephoto/ChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->h:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/choosephoto/ChooseActivity$i;

    invoke-direct {v1, p0}, Lcn/nubia/choosephoto/ChooseActivity$i;-><init>(Lcn/nubia/choosephoto/ChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->r:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->j:Landroid/widget/Button;

    if-eqz v0, :cond_0

    new-instance v1, Lcn/nubia/choosephoto/ChooseActivity$j;

    invoke-direct {v1, p0}, Lcn/nubia/choosephoto/ChooseActivity$j;-><init>(Lcn/nubia/choosephoto/ChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->d:Lcn/nubia/choosephoto/ui/DisableScrollGridView;

    if-eqz v0, :cond_1

    new-instance v1, Lcn/nubia/choosephoto/ChooseActivity$a;

    invoke-direct {v1, p0}, Lcn/nubia/choosephoto/ChooseActivity$a;-><init>(Lcn/nubia/choosephoto/ChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    return-void
.end method

.method private z()V
    .locals 5

    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070181

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Lcn/nubia/app/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1, v2}, Lcn/nubia/app/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object v3, p0, Lcn/nubia/choosephoto/ChooseActivity;->b:Lcn/nubia/app/c;

    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->l:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/choosephoto/ChooseActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->r:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const v0, 0x7f08022c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/choosephoto/ui/DisableScrollGridView;

    iput-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->d:Lcn/nubia/choosephoto/ui/DisableScrollGridView;

    new-instance v0, Lcn/nubia/choosephoto/ChooseActivity$g;

    iget-object v1, p0, Lcn/nubia/choosephoto/ChooseActivity;->a:Ljava/util/ArrayList;

    const v2, 0x7f0b0008

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/choosephoto/ChooseActivity$g;-><init>(Lcn/nubia/choosephoto/ChooseActivity;Ljava/util/List;I)V

    iput-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->e:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcn/nubia/choosephoto/ChooseActivity;->d:Lcn/nubia/choosephoto/ui/DisableScrollGridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->j:Landroid/widget/Button;

    const v0, 0x7f080265

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity;->k:Landroid/widget/TextView;

    invoke-direct {p0}, Lcn/nubia/choosephoto/ChooseActivity;->F()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0007

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/collage/m;->i(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "PICK_MODE"

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/nubia/choosephoto/ChooseActivity;->r:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f08022b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060026

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/choosephoto/ChooseActivity;->n:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060025

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/choosephoto/ChooseActivity;->o:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060028

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/choosephoto/ChooseActivity;->p:I

    invoke-direct {p0}, Lcn/nubia/choosephoto/ChooseActivity;->z()V

    invoke-direct {p0}, Lcn/nubia/choosephoto/ChooseActivity;->y()V

    invoke-direct {p0}, Lcn/nubia/choosephoto/ChooseActivity;->A()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    invoke-static {}, Lcn/nubia/choosephoto/b/a;->q()Lcn/nubia/choosephoto/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/choosephoto/b/a;->m()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
