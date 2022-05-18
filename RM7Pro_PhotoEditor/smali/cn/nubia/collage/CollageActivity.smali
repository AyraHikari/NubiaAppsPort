.class public Lcn/nubia/collage/CollageActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source ""

# interfaces
.implements Lcn/nubia/collage/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/collage/CollageActivity$p;,
        Lcn/nubia/collage/CollageActivity$o;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:Z

.field private I:Landroid/net/Uri;

.field private J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/collage/o/b/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/lang/String;

.field private a:Lcn/nubia/collage/i;

.field private final b:Landroid/os/Handler;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/FrameLayout;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/FrameLayout;

.field private u:Landroid/widget/EditText;

.field private v:Landroid/view/inputmethod/InputMethodManager;

.field private w:Lcn/nubia/collage/ui/CollageView;

.field private x:Lcn/nubia/app/c;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    new-instance v0, Lcn/nubia/collage/CollageActivity$o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/collage/CollageActivity$o;-><init>(Lcn/nubia/collage/CollageActivity;Lcn/nubia/collage/CollageActivity$f;)V

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->y:Z

    iput-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->z:Z

    iput-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->A:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/collage/CollageActivity;->B:Z

    iput-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->C:Z

    iput v0, p0, Lcn/nubia/collage/CollageActivity;->D:I

    const/16 v2, 0xf

    iput v2, p0, Lcn/nubia/collage/CollageActivity;->F:I

    iput v0, p0, Lcn/nubia/collage/CollageActivity;->G:I

    iput-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->H:Z

    iput-object v1, p0, Lcn/nubia/collage/CollageActivity;->I:Landroid/net/Uri;

    return-void
.end method

.method static synthetic A(Lcn/nubia/collage/CollageActivity;I)I
    .locals 0

    iput p1, p0, Lcn/nubia/collage/CollageActivity;->D:I

    return p1
.end method

.method static synthetic B(Lcn/nubia/collage/CollageActivity;I)Landroid/support/v4/app/Fragment;
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/collage/CollageActivity;->U(I)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic C(Lcn/nubia/collage/CollageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->W()V

    return-void
.end method

.method static synthetic D(Lcn/nubia/collage/CollageActivity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/nubia/collage/CollageActivity;->x0(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic E(Lcn/nubia/collage/CollageActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/CollageActivity;->q:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic F(Lcn/nubia/collage/CollageActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/CollageActivity;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic G(Lcn/nubia/collage/CollageActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/CollageActivity;->s:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic H(Lcn/nubia/collage/CollageActivity;)I
    .locals 0

    iget p0, p0, Lcn/nubia/collage/CollageActivity;->G:I

    return p0
.end method

.method static synthetic I(Lcn/nubia/collage/CollageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->w0()V

    return-void
.end method

.method static synthetic J(Lcn/nubia/collage/CollageActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/collage/CollageActivity;->f0(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic K(Lcn/nubia/collage/CollageActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/nubia/collage/CollageActivity;->H:Z

    return p0
.end method

.method static synthetic L(Lcn/nubia/collage/CollageActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/CollageActivity;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic M(Lcn/nubia/collage/CollageActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/collage/CollageActivity;->a0(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic N(Lcn/nubia/collage/CollageActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/CollageActivity;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic O(Lcn/nubia/collage/CollageActivity;I)I
    .locals 0

    iput p1, p0, Lcn/nubia/collage/CollageActivity;->E:I

    return p1
.end method

.method static synthetic P(Lcn/nubia/collage/CollageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->c0()V

    return-void
.end method

.method static synthetic Q(Lcn/nubia/collage/CollageActivity;)Lcn/nubia/collage/i;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/CollageActivity;->a:Lcn/nubia/collage/i;

    return-object p0
.end method

.method static synthetic R(Lcn/nubia/collage/CollageActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/nubia/collage/CollageActivity;->A:Z

    return p1
.end method

.method static synthetic S(Lcn/nubia/collage/CollageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->o0()V

    return-void
.end method

.method private T()V
    .locals 1

    iget-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->z:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->V()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->w:Lcn/nubia/collage/ui/CollageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/collage/ui/CollageView;->getModified()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->u0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private U(I)Landroid/support/v4/app/Fragment;
    .locals 2

    const-string v0, "chongdie"

    const-string v1, "create fragment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Lcn/nubia/collage/ui/j;

    invoke-direct {p1}, Lcn/nubia/collage/ui/j;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    new-instance p1, Lcn/nubia/collage/ui/g;

    invoke-direct {p1}, Lcn/nubia/collage/ui/g;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcn/nubia/collage/ui/h;

    invoke-direct {p1}, Lcn/nubia/collage/ui/h;-><init>()V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->A:Z

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->p0()V

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->o0()V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->a:Lcn/nubia/collage/i;

    invoke-virtual {p1, v0}, Lcn/nubia/collage/ui/b;->b(Lcn/nubia/collage/i;)V

    return-object p1
.end method

.method private V()V
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->t:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->t:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_1
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->v:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcn/nubia/collage/CollageActivity;->u:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const v2, 0x7f0e0046

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const v2, 0x7f0e0165

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iput-boolean v1, p0, Lcn/nubia/collage/CollageActivity;->z:Z

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->w:Lcn/nubia/collage/ui/CollageView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcn/nubia/collage/ui/CollageView;->W()V

    :cond_6
    return-void
.end method

.method private W()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->x:Lcn/nubia/app/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/app/c;->a()V

    :cond_0
    return-void
.end method

.method private X()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->y:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/collage/CollageActivity;->i0(Z)V

    iput-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->y:Z

    :cond_0
    return-void
.end method

.method private Y(Landroid/content/Intent;)V
    .locals 6

    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/utils/b;->n(Landroid/app/Activity;Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->I:Landroid/net/Uri;

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->J:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/collage/CollageActivity;->y:Z

    iput-boolean v1, p0, Lcn/nubia/collage/CollageActivity;->z:Z

    iput-boolean v1, p0, Lcn/nubia/collage/CollageActivity;->A:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/collage/CollageActivity;->B:Z

    iput-boolean v1, p0, Lcn/nubia/collage/CollageActivity;->C:Z

    iput v1, p0, Lcn/nubia/collage/CollageActivity;->D:I

    iput v1, p0, Lcn/nubia/collage/CollageActivity;->E:I

    const/16 v3, 0xf

    iput v3, p0, Lcn/nubia/collage/CollageActivity;->F:I

    iput v1, p0, Lcn/nubia/collage/CollageActivity;->G:I

    iput-boolean v1, p0, Lcn/nubia/collage/CollageActivity;->H:Z

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->I:Landroid/net/Uri;

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->J:Ljava/util/List;

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->K:Ljava/lang/String;

    new-instance v0, Lcn/nubia/collage/i;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcn/nubia/collage/i;-><init>(Lcn/nubia/collage/g;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->a:Lcn/nubia/collage/i;

    const-class v0, Lcn/nubia/choosephoto/ChooseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "original_activity"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "CollageActivity"

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcn/nubia/collage/CollageActivity;->H:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsFromPixlMaster "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcn/nubia/collage/CollageActivity;->H:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "imagepathlist"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->a:Lcn/nubia/collage/i;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v4, 0x9

    if-le v0, v4, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0121

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lcom/android/gallery3d/filtershow/utils/b;->o(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e010a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/gallery3d/filtershow/utils/b;->o(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollageActivity onCreate list.size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->a:Lcn/nubia/collage/i;

    invoke-virtual {v0, p1}, Lcn/nubia/collage/i;->p(Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcn/nubia/collage/CollageActivity;->G:I

    :cond_3
    return-void
.end method

.method private Z()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/ui/CollageView;

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->w:Lcn/nubia/collage/ui/CollageView;

    const v0, 0x7f08020f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->c:Landroid/view/View;

    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->d:Landroid/view/View;

    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f08021b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->f:Landroid/view/View;

    const v0, 0x7f08021e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->k:Landroid/widget/FrameLayout;

    const v0, 0x7f08024b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->i:Landroid/widget/ImageView;

    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->j:Landroid/widget/ImageView;

    const v0, 0x7f080254

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->l:Landroid/widget/ImageView;

    const v0, 0x7f080253

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->m:Landroid/widget/ImageView;

    const v0, 0x7f0801f4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->n:Landroid/view/View;

    const v0, 0x7f08016d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->o:Landroid/view/View;

    const v0, 0x7f080195

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->p:Landroid/view/View;

    const v0, 0x7f0801f3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f080194

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->t:Landroid/widget/FrameLayout;

    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->u:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->v:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070181

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Lcn/nubia/app/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/collage/CollageActivity;->c:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v4, v0, v1}, Lcn/nubia/app/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object v2, p0, Lcn/nubia/collage/CollageActivity;->x:Lcn/nubia/app/c;

    :cond_0
    return-void
.end method

.method private a0(Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "cn.nubia.gallery3d"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private b0()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "PhotoEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CollageActivity VersionCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " VersionName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private c0()V
    .locals 2

    iget-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->H:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/choosephoto/ChooseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lcn/nubia/choosephoto/ChooseActivity;->C(Landroid/content/Intent;)Landroid/content/Intent;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cn.nubia.gallery3d"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private d0(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "tag_grid"

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    const-string v1, "tag_poster"

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    const-string v1, "tag_join"

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private e0()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "tag_grid"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcn/nubia/collage/ui/b;

    invoke-virtual {v1}, Lcn/nubia/collage/ui/b;->c()V

    return-void

    :cond_0
    const-string v1, "tag_poster"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcn/nubia/collage/ui/b;

    invoke-virtual {v1}, Lcn/nubia/collage/ui/b;->c()V

    return-void

    :cond_1
    const-string v1, "tag_join"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcn/nubia/collage/ui/b;

    invoke-virtual {v0}, Lcn/nubia/collage/ui/b;->c()V

    :cond_2
    return-void
.end method

.method static synthetic f(Lcn/nubia/collage/CollageActivity;)Lcn/nubia/collage/ui/CollageView;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/CollageActivity;->w:Lcn/nubia/collage/ui/CollageView;

    return-object p0
.end method

.method private f0(Landroid/net/Uri;)V
    .locals 3

    iput-object p1, p0, Lcn/nubia/collage/CollageActivity;->I:Landroid/net/Uri;

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->C:Z

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->H:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/collage/CollageActivity;->a0(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method static synthetic g(Lcn/nubia/collage/CollageActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/nubia/collage/CollageActivity;->z:Z

    return p0
.end method

.method private g0()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->C:Z

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->w:Lcn/nubia/collage/ui/CollageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/collage/ui/CollageView;->getModified()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->I:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcn/nubia/collage/CollageActivity;->f0(Landroid/net/Uri;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->w:Lcn/nubia/collage/ui/CollageView;

    invoke-virtual {v0}, Lcn/nubia/collage/ui/CollageView;->O()V

    :cond_1
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->a:Lcn/nubia/collage/i;

    if-nez v0, :cond_2

    const-string v0, "PhotoEditor"

    const-string v1, "collageactivity saveimage mpresenter null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v1, Lcn/nubia/collage/CollageActivity$c;

    invoke-direct {v1, p0}, Lcn/nubia/collage/CollageActivity$c;-><init>(Lcn/nubia/collage/CollageActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/collage/i;->m(Lcn/nubia/collage/k$b;)V

    return-void
.end method

.method static synthetic h(Lcn/nubia/collage/CollageActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/nubia/collage/CollageActivity;->z:Z

    return p1
.end method

.method private h0()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->d:Landroid/view/View;

    new-instance v1, Lcn/nubia/collage/CollageActivity$g;

    invoke-direct {v1, p0}, Lcn/nubia/collage/CollageActivity$g;-><init>(Lcn/nubia/collage/CollageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->f:Landroid/view/View;

    new-instance v1, Lcn/nubia/collage/CollageActivity$h;

    invoke-direct {v1, p0}, Lcn/nubia/collage/CollageActivity$h;-><init>(Lcn/nubia/collage/CollageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic i(Lcn/nubia/collage/CollageActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/nubia/collage/CollageActivity;->t0(Ljava/lang/String;I)V

    return-void
.end method

.method private i0(Z)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->B:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->C:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x190

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/nubia/collage/CollageActivity;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v5, v2

    move v2, v1

    move v1, v5

    :goto_0
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, v1

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget v0, p0, Lcn/nubia/collage/CollageActivity;->D:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcn/nubia/collage/CollageActivity$k;

    invoke-direct {v0, p0, p1}, Lcn/nubia/collage/CollageActivity$k;-><init>(Lcn/nubia/collage/CollageActivity;Z)V

    invoke-virtual {v3, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic j(Lcn/nubia/collage/CollageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->X()V

    return-void
.end method

.method private j0()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->w:Lcn/nubia/collage/ui/CollageView;

    new-instance v1, Lcn/nubia/collage/CollageActivity$f;

    invoke-direct {v1, p0}, Lcn/nubia/collage/CollageActivity$f;-><init>(Lcn/nubia/collage/CollageActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/collage/ui/CollageView;->setListener(Lcn/nubia/collage/ui/CollageView$j;)V

    return-void
.end method

.method static synthetic k(Lcn/nubia/collage/CollageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->V()V

    return-void
.end method

.method private k0()V
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->u:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/collage/CollageActivity;->v:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->u:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->v:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcn/nubia/collage/CollageActivity;->u:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/collage/CollageActivity;->h:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/nubia/collage/CollageActivity;->F:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method static synthetic l(Lcn/nubia/collage/CollageActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/CollageActivity;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method private l0()V
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->u:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance v1, Lcn/nubia/collage/CollageActivity$p;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/collage/CollageActivity$p;-><init>(Lcn/nubia/collage/CollageActivity;Lcn/nubia/collage/CollageActivity$f;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method static synthetic m(Lcn/nubia/collage/CollageActivity;)I
    .locals 0

    iget p0, p0, Lcn/nubia/collage/CollageActivity;->F:I

    return p0
.end method

.method private m0()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->n:Landroid/view/View;

    new-instance v1, Lcn/nubia/collage/CollageActivity$l;

    invoke-direct {v1, p0}, Lcn/nubia/collage/CollageActivity$l;-><init>(Lcn/nubia/collage/CollageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->o:Landroid/view/View;

    new-instance v1, Lcn/nubia/collage/CollageActivity$m;

    invoke-direct {v1, p0}, Lcn/nubia/collage/CollageActivity$m;-><init>(Lcn/nubia/collage/CollageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->p:Landroid/view/View;

    new-instance v1, Lcn/nubia/collage/CollageActivity$n;

    invoke-direct {v1, p0}, Lcn/nubia/collage/CollageActivity$n;-><init>(Lcn/nubia/collage/CollageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic n(Lcn/nubia/collage/CollageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->T()V

    return-void
.end method

.method private n0()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->i:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/collage/CollageActivity$i;

    invoke-direct {v1, p0}, Lcn/nubia/collage/CollageActivity$i;-><init>(Lcn/nubia/collage/CollageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->j:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/collage/CollageActivity$j;

    invoke-direct {v1, p0}, Lcn/nubia/collage/CollageActivity$j;-><init>(Lcn/nubia/collage/CollageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic o(Lcn/nubia/collage/CollageActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/CollageActivity;->u:Landroid/widget/EditText;

    return-object p0
.end method

.method private o0()V
    .locals 2

    iget-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->l:Landroid/widget/ImageView;

    const v1, 0x7f070258

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->l:Landroid/widget/ImageView;

    const v1, 0x7f070257

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method static synthetic p(Lcn/nubia/collage/CollageActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/nubia/collage/CollageActivity;->B:Z

    return p0
.end method

.method private p0()V
    .locals 4

    iget v0, p0, Lcn/nubia/collage/CollageActivity;->D:I

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->l:Landroid/widget/ImageView;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->m:Landroid/widget/ImageView;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic q(Lcn/nubia/collage/CollageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->v0()V

    return-void
.end method

.method private q0()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->l:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/collage/CollageActivity$a;

    invoke-direct {v1, p0}, Lcn/nubia/collage/CollageActivity$a;-><init>(Lcn/nubia/collage/CollageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->m:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/collage/CollageActivity$b;

    invoke-direct {v1, p0}, Lcn/nubia/collage/CollageActivity$b;-><init>(Lcn/nubia/collage/CollageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic r(Lcn/nubia/collage/CollageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->g0()V

    return-void
.end method

.method private r0()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {v0}, Lcn/nubia/collage/o/b/k;->F(I)V

    return-void
.end method

.method static synthetic s(Lcn/nubia/collage/CollageActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/CollageActivity;->k:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private s0()V
    .locals 4

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->j0()V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->w:Lcn/nubia/collage/ui/CollageView;

    iget-object v1, p0, Lcn/nubia/collage/CollageActivity;->a:Lcn/nubia/collage/i;

    invoke-virtual {v1}, Lcn/nubia/collage/i;->g()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/collage/ui/CollageView;->E(Ljava/util/List;)V

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->h0()V

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->n0()V

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->q0()V

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->m0()V

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->l0()V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->w:Lcn/nubia/collage/ui/CollageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/collage/CollageActivity;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcn/nubia/collage/ui/CollageView;->setCollageRootView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcn/nubia/collage/CollageActivity;->d0(Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f08007b

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcn/nubia/collage/CollageActivity;->U(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    const-string v3, "tag_poster"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method static synthetic t(Lcn/nubia/collage/CollageActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/collage/CollageActivity;->i0(Z)V

    return-void
.end method

.method private t0(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->t:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->u:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iput p2, p0, Lcn/nubia/collage/CollageActivity;->F:I

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcn/nubia/collage/CollageActivity;->F:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, p2, v1

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object p2, p0, Lcn/nubia/collage/CollageActivity;->t:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p2, p0, Lcn/nubia/collage/CollageActivity;->u:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->k0()V

    :cond_0
    iget-object p1, p0, Lcn/nubia/collage/CollageActivity;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const p2, 0x7f0e019e

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object p1, p0, Lcn/nubia/collage/CollageActivity;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const p2, 0x7f0e0048

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget-object p1, p0, Lcn/nubia/collage/CollageActivity;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_3
    return-void
.end method

.method static synthetic u(Lcn/nubia/collage/CollageActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/CollageActivity;->m:Landroid/widget/ImageView;

    return-object p0
.end method

.method private u0()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0003

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(I)V

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const v2, 0x7f080076

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080095

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    new-instance v3, Lcn/nubia/collage/CollageActivity$d;

    invoke-direct {v3, p0, v0}, Lcn/nubia/collage/CollageActivity$d;-><init>(Lcn/nubia/collage/CollageActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v1, :cond_2

    new-instance v0, Lcn/nubia/collage/CollageActivity$e;

    invoke-direct {v0, p0}, Lcn/nubia/collage/CollageActivity$e;-><init>(Lcn/nubia/collage/CollageActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method static synthetic v(Lcn/nubia/collage/CollageActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/CollageActivity;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method private v0()V
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->x:Lcn/nubia/app/c;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/collage/CollageActivity;->B:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e010c

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/app/c;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcn/nubia/collage/CollageActivity;->C:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e016c

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic w(Lcn/nubia/collage/CollageActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/CollageActivity;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method private w0()V
    .locals 4

    iget-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->A:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->A:Z

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->o0()V

    iget-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->a:Lcn/nubia/collage/i;

    invoke-virtual {v0}, Lcn/nubia/collage/i;->r()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0187

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->a:Lcn/nubia/collage/i;

    invoke-virtual {v0}, Lcn/nubia/collage/i;->v()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0186

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/gallery3d/filtershow/utils/b;->o(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic x(Lcn/nubia/collage/CollageActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/nubia/collage/CollageActivity;->y:Z

    return p1
.end method

.method private x0(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f08007b

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method static synthetic y(Lcn/nubia/collage/CollageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->p0()V

    return-void
.end method

.method static synthetic z(Lcn/nubia/collage/CollageActivity;)I
    .locals 0

    iget p0, p0, Lcn/nubia/collage/CollageActivity;->D:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->w:Lcn/nubia/collage/ui/CollageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/collage/ui/CollageView;->G()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->B:Z

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public d(Lcn/nubia/collage/o/b/k;)V
    .locals 4

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->w:Lcn/nubia/collage/ui/CollageView;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/k;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/collage/CollageActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->J:Ljava/util/List;

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/nubia/collage/CollageActivity;->E:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcn/nubia/collage/CollageActivity;->J:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcn/nubia/collage/CollageActivity;->J:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/collage/o/b/g$a;

    invoke-virtual {v2}, Lcn/nubia/collage/o/b/g$a;->u()I

    move-result v2

    iget v3, p0, Lcn/nubia/collage/CollageActivity;->E:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcn/nubia/collage/CollageActivity;->J:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->J:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcn/nubia/collage/o/b/k;->J(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->w:Lcn/nubia/collage/ui/CollageView;

    invoke-virtual {v0, p1}, Lcn/nubia/collage/ui/CollageView;->setModel(Lcn/nubia/collage/o/b/k;)V

    :cond_3
    iput v1, p0, Lcn/nubia/collage/CollageActivity;->E:I

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/collage/CollageActivity;->B:Z

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    const-string v0, "CollageActivity"

    const/4 v1, 0x0

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult GALLERY:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v0, "file"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const-string p1, "_data"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v1, p2

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "filePath:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PhotoEditor"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity;->a:Lcn/nubia/collage/i;

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    const-string p1, "singleimage"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "REQUEST_PICK_FROM_COLLAGE "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6

    const-string p1, "noreplace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity;->a:Lcn/nubia/collage/i;

    if-eqz p1, :cond_6

    :goto_1
    iget p2, p0, Lcn/nubia/collage/CollageActivity;->E:I

    invoke-virtual {p1, p2, v1}, Lcn/nubia/collage/i;->o(ILjava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->T()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->b0()V

    const-string p1, "CollageActivity"

    const-string v0, "lyf onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcn/nubia/permission/b;->d(Landroid/content/Context;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lyf onCreate1"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcn/nubia/permission/CollageRequestPermissionsActivity;->h(Landroid/app/Activity;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/collage/n/a;->s(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/collage/m;->i(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/collage/d;->h(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/collage/o/a/j;->j(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/collage/o/a/k;->d(Landroid/content/res/AssetManager;)V

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->r0()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/collage/CollageActivity;->Y(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->Z()V

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->s0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    invoke-static {}, Lcn/nubia/collage/o/a/k;->b()Lcn/nubia/collage/o/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/o/a/k;->a()V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->a:Lcn/nubia/collage/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/collage/i;->c()V

    iput-object v1, p0, Lcn/nubia/collage/CollageActivity;->a:Lcn/nubia/collage/i;

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/nubia/collage/CollageActivity;->b()V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->a:Lcn/nubia/collage/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/collage/i;->c()V

    iput-object v1, p0, Lcn/nubia/collage/CollageActivity;->a:Lcn/nubia/collage/i;

    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/collage/CollageActivity;->Y(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->s0()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->w:Lcn/nubia/collage/ui/CollageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/collage/ui/CollageView;->getImagePoses()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->J:Ljava/util/List;

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->w:Lcn/nubia/collage/ui/CollageView;

    invoke-virtual {v0}, Lcn/nubia/collage/ui/CollageView;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/CollageActivity;->K:Ljava/lang/String;

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->w:Lcn/nubia/collage/ui/CollageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/collage/ui/CollageView;->setModel(Lcn/nubia/collage/o/b/k;)V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->w:Lcn/nubia/collage/ui/CollageView;

    invoke-virtual {v0}, Lcn/nubia/collage/ui/CollageView;->getShowSingleFlipView()Z

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->a:Lcn/nubia/collage/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/collage/i;->j()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    const-string v0, "CollageActivity"

    const-string v1, "lyf onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/collage/n/a;->s(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->a:Lcn/nubia/collage/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/collage/i;->k()V

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/CollageActivity;->w:Lcn/nubia/collage/ui/CollageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/collage/ui/CollageView;->X()V

    :cond_1
    invoke-direct {p0}, Lcn/nubia/collage/CollageActivity;->e0()V

    return-void
.end method
