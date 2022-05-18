.class public Lcom/GifEncoder/GifMakeActivity;
.super Landroid/app/Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/GifEncoder/GifMakeActivity$w;
    }
.end annotation


# instance fields
.field private A:Lcn/nubia/app/b;

.field private B:Landroid/widget/ProgressBar;

.field private C:Landroid/widget/TextView;

.field private D:I

.field private E:[Z

.field protected F:Z

.field private G:I

.field private final H:Landroid/os/Handler;

.field protected I:Lb/a/b/a/a;

.field protected J:Landroid/content/ServiceConnection;

.field private a:Lcom/GifEncoder/LooperShowView;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Thread;

.field private l:Lcn/nubia/app/a;

.field private m:Lb/a/e/c/a;

.field private n:Lb/a/e/a/e;

.field private o:Lb/a/e/a/d;

.field private p:I

.field private q:Landroid/widget/ImageButton;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/RadioGroup;

.field private x:Landroid/widget/RadioButton;

.field private y:Landroid/widget/RadioButton;

.field private z:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->g:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/GifEncoder/GifMakeActivity;->h:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/GifEncoder/GifMakeActivity;->i:I

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->k:Ljava/lang/Thread;

    const/16 v2, 0xf

    iput v2, p0, Lcom/GifEncoder/GifMakeActivity;->p:I

    iput v1, p0, Lcom/GifEncoder/GifMakeActivity;->D:I

    const/4 v2, 0x2

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/GifEncoder/GifMakeActivity;->E:[Z

    iput-boolean v1, p0, Lcom/GifEncoder/GifMakeActivity;->F:Z

    const v1, -0xf4246

    iput v1, p0, Lcom/GifEncoder/GifMakeActivity;->G:I

    new-instance v1, Lcom/GifEncoder/GifMakeActivity$j;

    invoke-direct {v1, p0}, Lcom/GifEncoder/GifMakeActivity$j;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    iput-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->H:Landroid/os/Handler;

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->I:Lb/a/b/a/a;

    new-instance v0, Lcom/GifEncoder/GifMakeActivity$n;

    invoke-direct {v0, p0}, Lcom/GifEncoder/GifMakeActivity$n;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->J:Landroid/content/ServiceConnection;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic A(Lcom/GifEncoder/GifMakeActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic B(Lcom/GifEncoder/GifMakeActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/GifEncoder/GifMakeActivity;->V(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic C(Lcom/GifEncoder/GifMakeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/GifEncoder/GifMakeActivity;->X()V

    return-void
.end method

.method static synthetic D(Lcom/GifEncoder/GifMakeActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/GifEncoder/GifMakeActivity;->d:Z

    return p0
.end method

.method static synthetic E(Lcom/GifEncoder/GifMakeActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->H:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic F(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->B:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic G(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->C:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic H(Lcom/GifEncoder/GifMakeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/GifEncoder/GifMakeActivity;->Y()V

    return-void
.end method

.method static synthetic I(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->t:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic J(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->u:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic K(Lcom/GifEncoder/GifMakeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/GifEncoder/GifMakeActivity;->d0()V

    return-void
.end method

.method static synthetic L(Lcom/GifEncoder/GifMakeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/GifEncoder/GifMakeActivity;->e0()V

    return-void
.end method

.method static synthetic M(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->x:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic N(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->y:Landroid/widget/RadioButton;

    return-object p0
.end method

.method private static P(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  className ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GifMakeActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private Q()V
    .locals 4

    new-instance v0, Lcom/GifEncoder/GifMakeActivity$i;

    invoke-direct {v0, p0}, Lcom/GifEncoder/GifMakeActivity$i;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private S(IF)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private U()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private V(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance p1, Lcom/GifEncoder/GifMakeActivity$g;

    invoke-direct {p1, p0}, Lcom/GifEncoder/GifMakeActivity$g;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method private W()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/GifEncoder/GifMakeActivity;->h:Z

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/GifEncoder/h;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/GifEncoder/GifMakeActivity;->i:I

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/GifEncoder/h;->h(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/GifEncoder/GifMakeActivity;->D:I

    if-lez v0, :cond_0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/GifEncoder/GifMakeActivity;->i:I

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/GifEncoder/GifMakeActivity;->i:I

    if-eqz v0, :cond_1

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_3

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/GifEncoder/GifMakeActivity;->h:Z

    goto :goto_1

    :cond_2
    const-string v0, "GifMakeActivity"

    const-string v1, "finish, mSource.size() < 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method

.method private X()V
    .locals 0

    invoke-direct {p0}, Lcom/GifEncoder/GifMakeActivity;->Q()V

    return-void
.end method

.method private Y()V
    .locals 3

    const-string v0, "GifMakeActivity"

    const-string v1, "previewStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/GifEncoder/GifMakeActivity;->R()Lb/a/b/a/a;

    move-result-object v0

    invoke-interface {v0}, Lb/a/b/a/a;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->g:Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const v0, 0x7f0e002d

    invoke-direct {p0, v0}, Lcom/GifEncoder/GifMakeActivity;->b(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/GifEncoder/GifMakeActivity;->T()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_0

    const v0, 0x7f0e00d2

    invoke-direct {p0, v0}, Lcom/GifEncoder/GifMakeActivity;->b(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/GifEncoder/GifMakeActivity;->W()V

    iget-object v2, p0, Lcom/GifEncoder/GifMakeActivity;->a:Lcom/GifEncoder/LooperShowView;

    invoke-virtual {v2, v0}, Lcom/GifEncoder/LooperShowView;->setSourceData(Ljava/util/ArrayList;)V

    iget v0, p0, Lcom/GifEncoder/GifMakeActivity;->b:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/GifEncoder/GifMakeActivity;->e:Z

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/GifEncoder/GifMakeActivity;->Q()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/GifEncoder/GifMakeActivity;->e:Z

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->a:Lcom/GifEncoder/LooperShowView;

    iget v1, p0, Lcom/GifEncoder/GifMakeActivity;->c:I

    iget v2, p0, Lcom/GifEncoder/GifMakeActivity;->p:I

    invoke-virtual {v0, v1, v2}, Lcom/GifEncoder/LooperShowView;->k(II)V

    :cond_2
    return-void
.end method

.method private Z()V
    .locals 2

    new-instance v0, Lcom/GifEncoder/GifMakeActivity$u;

    invoke-direct {v0, p0}, Lcom/GifEncoder/GifMakeActivity$u;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->q:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f0b0071

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f080219

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f08026e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->q:Landroid/widget/ImageButton;

    const v0, 0x7f0801bd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/GifEncoder/LooperShowView;

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->a:Lcom/GifEncoder/LooperShowView;

    const v0, 0x7f08020a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->t:Landroid/widget/Button;

    const v0, 0x7f08027e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->u:Landroid/widget/Button;

    const v0, 0x7f080202

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->w:Landroid/widget/RadioGroup;

    const v0, 0x7f080251

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->x:Landroid/widget/RadioButton;

    const v0, 0x7f0801c6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->y:Landroid/widget/RadioButton;

    const v0, 0x7f080149

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->z:Landroid/widget/RadioButton;

    const v0, 0x7f080158

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->v:Landroid/widget/ImageView;

    return-void
.end method

.method private b(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private b0(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 9

    const-string p1, "GifMakeNotification"

    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "android.app.NotificationChannel"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "android.app.NotificationManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setDescription"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v0, v7, v6

    const-string v0, "java.lang.CharSequence"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v7, v4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v0, v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v5, "PhototEditGifMakeNotification"

    aput-object v5, v1, v6

    aput-object p1, v1, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "createNotificationChannel"

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-virtual {v2, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "GifMakeActivity"

    const-string v2, "--->HB invokesetChannel:createNotificationChannel"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v6

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/GifEncoder/GifMakeActivity;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/GifEncoder/GifMakeActivity;->c:I

    iput-boolean v0, p0, Lcom/GifEncoder/GifMakeActivity;->d:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->r:Landroid/widget/TextView;

    new-instance v1, Lcom/GifEncoder/GifMakeActivity$k;

    invoke-direct {v1, p0}, Lcom/GifEncoder/GifMakeActivity$k;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->q:Landroid/widget/ImageButton;

    new-instance v1, Lcom/GifEncoder/GifMakeActivity$o;

    invoke-direct {v1, p0}, Lcom/GifEncoder/GifMakeActivity$o;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->v:Landroid/widget/ImageView;

    new-instance v1, Lcom/GifEncoder/GifMakeActivity$p;

    invoke-direct {v1, p0}, Lcom/GifEncoder/GifMakeActivity$p;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->s:Landroid/widget/TextView;

    new-instance v1, Lcom/GifEncoder/GifMakeActivity$q;

    invoke-direct {v1, p0}, Lcom/GifEncoder/GifMakeActivity$q;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->t:Landroid/widget/Button;

    new-instance v1, Lcom/GifEncoder/GifMakeActivity$r;

    invoke-direct {v1, p0}, Lcom/GifEncoder/GifMakeActivity$r;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->u:Landroid/widget/Button;

    new-instance v1, Lcom/GifEncoder/GifMakeActivity$s;

    invoke-direct {v1, p0}, Lcom/GifEncoder/GifMakeActivity$s;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->w:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/GifEncoder/GifMakeActivity$t;

    invoke-direct {v1, p0}, Lcom/GifEncoder/GifMakeActivity$t;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/GifEncoder/GifMakeActivity;->Z()V

    return-void
.end method

.method private c0(Landroid/app/Notification$Builder;)V
    .locals 6

    :try_start_0
    const-string v0, "android.app.Notification$Builder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setChannelId"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "PhototEditGifMakeNotification"

    aput-object v2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private d()V
    .locals 4

    iget v0, p0, Lcom/GifEncoder/GifMakeActivity;->b:I

    const/4 v1, 0x0

    const/16 v2, 0x80

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    invoke-direct {p0, v3}, Lcom/GifEncoder/GifMakeActivity;->f0(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->k:Ljava/lang/Thread;

    iput-boolean v3, p0, Lcom/GifEncoder/GifMakeActivity;->d:Z

    iput v1, p0, Lcom/GifEncoder/GifMakeActivity;->b:I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/GifEncoder/GifMakeActivity;->d:Z

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iput-boolean v1, p0, Lcom/GifEncoder/GifMakeActivity;->d:Z

    invoke-direct {p0}, Lcom/GifEncoder/GifMakeActivity;->j0()V

    :cond_1
    :goto_0
    return-void
.end method

.method private d0()V
    .locals 2

    iget v0, p0, Lcom/GifEncoder/GifMakeActivity;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/GifEncoder/GifMakeActivity;->c:I

    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->a:Lcom/GifEncoder/LooperShowView;

    invoke-virtual {v1, v0}, Lcom/GifEncoder/LooperShowView;->setOrder(I)V

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/GifEncoder/GifMakeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/GifEncoder/GifMakeActivity;->h0()V

    return-void
.end method

.method private e0()V
    .locals 2

    iget v0, p0, Lcom/GifEncoder/GifMakeActivity;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/GifEncoder/GifMakeActivity;->c:I

    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->a:Lcom/GifEncoder/LooperShowView;

    invoke-virtual {v1, v0}, Lcom/GifEncoder/LooperShowView;->setOrder(I)V

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->s:Landroid/widget/TextView;

    return-object p0
.end method

.method private declared-synchronized f0(Z)V
    .locals 8

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->m:Lb/a/e/c/a;

    invoke-virtual {p1}, Lb/a/e/c/a;->f()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->m:Lb/a/e/c/a;

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->o:Lb/a/e/a/d;

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    :cond_0
    invoke-static {}, Lcom/GifEncoder/g;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".mp4"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/GifEncoder/GifMakeActivity;->T()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->o:Lb/a/e/a/d;

    invoke-virtual {v1, v0}, Lb/a/e/a/d;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->E:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/GifEncoder/GifMakeActivity;->D:I

    const/16 v6, 0x440

    if-eq v0, v5, :cond_6

    const/16 v7, 0x780

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/GifEncoder/GifMakeActivity;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    :goto_0
    invoke-virtual {v0, v6, v7}, Lb/a/e/a/e;->l(II)V

    goto/16 :goto_5

    :cond_2
    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    :goto_1
    invoke-virtual {v0, v7, v6}, Lb/a/e/a/e;->l(II)V

    goto :goto_5

    :cond_3
    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    :goto_2
    invoke-virtual {v0, v6, v6}, Lb/a/e/a/e;->l(II)V

    goto :goto_5

    :cond_4
    iget-boolean v0, p0, Lcom/GifEncoder/GifMakeActivity;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/GifEncoder/GifMakeActivity;->h:Z

    const/16 v1, 0x5a0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    :goto_3
    invoke-virtual {v0, v6, v1}, Lb/a/e/a/e;->l(II)V

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    :goto_4
    invoke-virtual {v0, v1, v6}, Lb/a/e/a/e;->l(II)V

    goto :goto_5

    :cond_8
    iget v0, p0, Lcom/GifEncoder/GifMakeActivity;->D:I

    const/16 v6, 0x320

    if-eq v0, v5, :cond_d

    const/16 v7, 0x1c0

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_d

    if-eq v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/GifEncoder/GifMakeActivity;->h:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    goto :goto_2

    :cond_b
    iget-boolean v0, p0, Lcom/GifEncoder/GifMakeActivity;->h:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    goto :goto_0

    :cond_d
    iget-boolean v0, p0, Lcom/GifEncoder/GifMakeActivity;->h:Z

    const/16 v1, 0x260

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    goto :goto_3

    :goto_5
    const-string v0, "GifMakeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DoMakeGif gifPath is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/GifEncoder/GifMakeActivity;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    iget v1, p0, Lcom/GifEncoder/GifMakeActivity;->p:I

    invoke-virtual {v0, v1}, Lb/a/e/a/e;->k(I)V

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    const v1, 0x7f000789

    invoke-virtual {v0, v1}, Lb/a/e/a/e;->j(I)V

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->m:Lb/a/e/c/a;

    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    invoke-virtual {v0, v1}, Lb/a/e/c/a;->l(Lb/a/e/a/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->m:Lb/a/e/c/a;

    invoke-virtual {v0, p1}, Lb/a/e/c/a;->k(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catch_1
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->m:Lb/a/e/c/a;

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->o:Lb/a/e/a/d;

    invoke-virtual {p1, v0}, Lb/a/e/c/a;->m(Lb/a/e/a/d;)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->m:Lb/a/e/c/a;

    new-instance v0, Lcom/GifEncoder/GifMakeActivity$e;

    invoke-direct {v0, p0}, Lcom/GifEncoder/GifMakeActivity$e;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    invoke-virtual {p1, v0}, Lb/a/e/c/a;->i(Lb/a/e/b/b;)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->m:Lb/a/e/c/a;

    new-instance v0, Lcom/GifEncoder/GifMakeActivity$f;

    invoke-direct {v0, p0}, Lcom/GifEncoder/GifMakeActivity$f;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    invoke-virtual {p1, v0}, Lb/a/e/c/a;->j(Lb/a/e/b/c;)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x96

    if-le p1, v0, :cond_f

    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->E:[Z

    aget-boolean v1, v1, v5

    if-nez v1, :cond_f

    move p1, v0

    :cond_f
    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->m:Lb/a/e/c/a;

    int-to-long v1, p1

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    invoke-virtual {p1}, Lb/a/e/a/e;->b()I

    move-result p1

    int-to-long v3, p1

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lb/a/e/c/a;->h(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic g(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->z:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic h(Lcom/GifEncoder/GifMakeActivity;)I
    .locals 0

    iget p0, p0, Lcom/GifEncoder/GifMakeActivity;->p:I

    return p0
.end method

.method private h0()V
    .locals 5

    new-instance v0, Lcn/nubia/app/a$a;

    invoke-direct {v0, p0}, Lcn/nubia/app/a$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/nubia/app/a$a;->a()Lcn/nubia/app/a;

    move-result-object v0

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->l:Lcn/nubia/app/a;

    invoke-virtual {v0}, Lcn/nubia/app/a;->show()V

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->l:Lcn/nubia/app/a;

    new-instance v1, Lcom/GifEncoder/GifMakeActivity$v;

    invoke-direct {v1, p0}, Lcom/GifEncoder/GifMakeActivity$v;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080157

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/app/NubiaSwitch;

    const v2, 0x7f080156

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/app/NubiaSwitch;

    iget-object v3, p0, Lcom/GifEncoder/GifMakeActivity;->E:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    invoke-virtual {v1, v3}, Lcn/nubia/app/NubiaSwitch;->setChecked(Z)V

    iget-object v3, p0, Lcom/GifEncoder/GifMakeActivity;->E:[Z

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    invoke-virtual {v2, v3}, Lcn/nubia/app/NubiaSwitch;->setChecked(Z)V

    new-instance v3, Lcom/GifEncoder/GifMakeActivity$a;

    invoke-direct {v3, p0}, Lcom/GifEncoder/GifMakeActivity$a;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v1, Lcom/GifEncoder/GifMakeActivity$b;

    invoke-direct {v1, p0}, Lcom/GifEncoder/GifMakeActivity$b;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/GifEncoder/GifMakeActivity$c;

    invoke-direct {v2, p0}, Lcom/GifEncoder/GifMakeActivity$c;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/GifEncoder/GifMakeActivity$d;

    invoke-direct {v2, p0}, Lcom/GifEncoder/GifMakeActivity$d;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->l:Lcn/nubia/app/a;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->l:Lcn/nubia/app/a;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->C:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic i(Lcom/GifEncoder/GifMakeActivity;I)I
    .locals 0

    iput p1, p0, Lcom/GifEncoder/GifMakeActivity;->p:I

    return p1
.end method

.method private i0(II)V
    .locals 2

    new-instance p1, Lcn/nubia/app/a$a;

    invoke-direct {p1, p0}, Lcn/nubia/app/a$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcn/nubia/app/a$a;->a()Lcn/nubia/app/a;

    move-result-object p1

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->A:Lcn/nubia/app/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->A:Lcn/nubia/app/b;

    new-instance v0, Lcom/GifEncoder/GifMakeActivity$l;

    invoke-direct {v0, p0}, Lcom/GifEncoder/GifMakeActivity$l;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b001a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->A:Lcn/nubia/app/b;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0801f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    const p2, 0x7f0800d8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/GifEncoder/GifMakeActivity;->C:Landroid/widget/TextView;

    const p2, 0x7f0800d7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/GifEncoder/GifMakeActivity$m;

    invoke-direct {p2, p0}, Lcom/GifEncoder/GifMakeActivity$m;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic j(Lcom/GifEncoder/GifMakeActivity;)Lcom/GifEncoder/LooperShowView;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->a:Lcom/GifEncoder/LooperShowView;

    return-object p0
.end method

.method private j0()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\s-:]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->j:Ljava/lang/String;

    iget v0, p0, Lcom/GifEncoder/GifMakeActivity;->b:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/GifEncoder/GifMakeActivity$w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/GifEncoder/GifMakeActivity$w;-><init>(Lcom/GifEncoder/GifMakeActivity;Lcom/GifEncoder/GifMakeActivity$k;)V

    iput-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const v0, 0x7f0e011a

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/GifEncoder/GifMakeActivity;->i0(II)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/GifEncoder/GifMakeActivity;->b:I

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method private k0()V
    .locals 3

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->a:Lcom/GifEncoder/LooperShowView;

    invoke-virtual {v0}, Lcom/GifEncoder/LooperShowView;->j()V

    invoke-virtual {p0}, Lcom/GifEncoder/GifMakeActivity;->T()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->a:Lcom/GifEncoder/LooperShowView;

    invoke-virtual {v1, v0}, Lcom/GifEncoder/LooperShowView;->setSourceData(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->a:Lcom/GifEncoder/LooperShowView;

    iget v1, p0, Lcom/GifEncoder/GifMakeActivity;->c:I

    iget v2, p0, Lcom/GifEncoder/GifMakeActivity;->p:I

    invoke-virtual {v0, v1, v2}, Lcom/GifEncoder/LooperShowView;->k(II)V

    return-void
.end method

.method static synthetic l(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->q:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic m(Lcom/GifEncoder/GifMakeActivity;)[Z
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->E:[Z

    return-object p0
.end method

.method static synthetic n(Lcom/GifEncoder/GifMakeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/GifEncoder/GifMakeActivity;->k0()V

    return-void
.end method

.method static synthetic o(Lcom/GifEncoder/GifMakeActivity;)Lcn/nubia/app/a;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->l:Lcn/nubia/app/a;

    return-object p0
.end method

.method static synthetic p(Lcom/GifEncoder/GifMakeActivity;)Lb/a/e/a/e;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    return-object p0
.end method

.method static synthetic q(Lcom/GifEncoder/GifMakeActivity;Lb/a/e/a/e;)Lb/a/e/a/e;
    .locals 0

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;

    return-object p1
.end method

.method static synthetic r(Lcom/GifEncoder/GifMakeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/GifEncoder/GifMakeActivity;->d()V

    return-void
.end method

.method static synthetic s(Lcom/GifEncoder/GifMakeActivity;)Lb/a/e/a/d;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->o:Lb/a/e/a/d;

    return-object p0
.end method

.method static synthetic t(Lcom/GifEncoder/GifMakeActivity;Lb/a/e/a/d;)Lb/a/e/a/d;
    .locals 0

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->o:Lb/a/e/a/d;

    return-object p1
.end method

.method static synthetic u(Lcom/GifEncoder/GifMakeActivity;)Lb/a/e/c/a;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->m:Lb/a/e/c/a;

    return-object p0
.end method

.method static synthetic v(Lcom/GifEncoder/GifMakeActivity;Lb/a/e/c/a;)Lb/a/e/c/a;
    .locals 0

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->m:Lb/a/e/c/a;

    return-object p1
.end method

.method static synthetic w(Lcom/GifEncoder/GifMakeActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/GifEncoder/GifMakeActivity;->f0(Z)V

    return-void
.end method

.method static synthetic x(Lcom/GifEncoder/GifMakeActivity;I)I
    .locals 0

    iput p1, p0, Lcom/GifEncoder/GifMakeActivity;->b:I

    return p1
.end method

.method static synthetic y(Lcom/GifEncoder/GifMakeActivity;)Lcn/nubia/app/b;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/GifMakeActivity;->A:Lcn/nubia/app/b;

    return-object p0
.end method

.method static synthetic z(Lcom/GifEncoder/GifMakeActivity;)I
    .locals 0

    iget p0, p0, Lcom/GifEncoder/GifMakeActivity;->G:I

    return p0
.end method


# virtual methods
.method protected O()V
    .locals 1

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->A:Lcn/nubia/app/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    invoke-direct {p0}, Lcom/GifEncoder/GifMakeActivity;->d()V

    return-void
.end method

.method protected R()Lb/a/b/a/a;
    .locals 1

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->I:Lb/a/b/a/a;

    return-object v0
.end method

.method public T()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->E:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x96

    if-gt v1, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v3, v1

    const/high16 v4, 0x43160000    # 150.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-direct {p0, v4, v3}, Lcom/GifEncoder/GifMakeActivity;->S(IF)I

    move-result v5

    if-gt v5, v1, :cond_3

    add-int/2addr v4, v2

    if-lt v5, v2, :cond_1

    iget-object v6, p0, Lcom/GifEncoder/GifMakeActivity;->g:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/GifEncoder/GifMakeActivity;->U()Ljava/util/ArrayList;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method protected a0(Lb/a/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->I:Lb/a/b/a/a;

    return-void
.end method

.method protected g0(Landroid/net/Uri;)V
    .locals 7

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-direct {p0, p0, v0}, Lcom/GifEncoder/GifMakeActivity;->b0(Landroid/content/Context;Landroid/app/NotificationManager;)V

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/GifEncoder/GifMakeActivity;->c0(Landroid/app/Notification$Builder;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "cn.nubia.gallery3d"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v4, "cn.nubia.gallery.action.force.REVIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-static {p0, p1, v2, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070001

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v6, "Notify"

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v6, "z0"

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v6, "title"

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "content"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "floating_mode"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "floating_icon_pkgname"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v3, "showNotification"

    invoke-virtual {v4, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const v3, 0x7f0e0007

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "floating_title"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const v3, 0x7f0e0006

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "floating_content"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v3, "floating_intent"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    iget v1, p0, Lcom/GifEncoder/GifMakeActivity;->G:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/GifEncoder/GifMakeActivity;->G:I

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le p1, v1, :cond_0

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->H:Landroid/os/Handler;

    new-instance v1, Lcom/GifEncoder/GifMakeActivity$h;

    invoke-direct {v1, p0, v0}, Lcom/GifEncoder/GifMakeActivity$h;-><init>(Lcom/GifEncoder/GifMakeActivity;Landroid/app/NotificationManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/GifEncoder/GifMakeActivity;->G:I

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/utils/b;->n(Landroid/app/Activity;Landroid/content/Intent;)V

    const-string p1, "GifMakeActivity"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcn/nubia/permission/b;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcn/nubia/permission/RequestPermissionsActivity;->h(Landroid/app/Activity;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.gallery3d.app.getpicture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/GifEncoder/GifMakeActivity;->P(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->J:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v2, p0, Lcom/GifEncoder/GifMakeActivity;->F:Z

    :cond_1
    invoke-direct {p0}, Lcom/GifEncoder/GifMakeActivity;->a()V

    invoke-direct {p0}, Lcom/GifEncoder/GifMakeActivity;->c()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "GifMakeActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v0, p0, Lcom/GifEncoder/GifMakeActivity;->F:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->J:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/GifEncoder/GifMakeActivity;->F:Z

    :cond_0
    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->A:Lcn/nubia/app/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->A:Lcn/nubia/app/b;

    :cond_1
    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->m:Lb/a/e/c/a;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Lb/a/e/c/a;->f()V

    iput-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->m:Lb/a/e/c/a;

    iput-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->o:Lb/a/e/a/d;

    iput-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->n:Lb/a/e/a/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/GifEncoder/GifMakeActivity;->d:Z

    iput-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->k:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/GifEncoder/GifMakeActivity;->a:Lcom/GifEncoder/LooperShowView;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget v0, p0, Lcom/GifEncoder/GifMakeActivity;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->m:Lb/a/e/c/a;

    invoke-virtual {p1}, Lb/a/e/c/a;->n()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity;->A:Lcn/nubia/app/b;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iput-object p2, p0, Lcom/GifEncoder/GifMakeActivity;->A:Lcn/nubia/app/b;

    :cond_0
    iput-object p2, p0, Lcom/GifEncoder/GifMakeActivity;->k:Ljava/lang/Thread;

    const/4 p1, 0x0

    iput p1, p0, Lcom/GifEncoder/GifMakeActivity;->b:I

    iput-boolean v1, p0, Lcom/GifEncoder/GifMakeActivity;->d:Z

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/GifEncoder/GifMakeActivity;->e:Z

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->a:Lcom/GifEncoder/LooperShowView;

    invoke-virtual {v0}, Lcom/GifEncoder/LooperShowView;->j()V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "GifMakeActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/GifEncoder/GifMakeActivity;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/GifEncoder/GifMakeActivity;->T()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v2, :cond_1

    const v0, 0x7f0e00d2

    invoke-direct {p0, v0}, Lcom/GifEncoder/GifMakeActivity;->b(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/GifEncoder/GifMakeActivity;->a:Lcom/GifEncoder/LooperShowView;

    invoke-virtual {v3, v0}, Lcom/GifEncoder/LooperShowView;->setSourceData(Ljava/util/ArrayList;)V

    iget v0, p0, Lcom/GifEncoder/GifMakeActivity;->b:I

    if-ne v2, v0, :cond_2

    iget-boolean v0, p0, Lcom/GifEncoder/GifMakeActivity;->e:Z

    if-ne v1, v0, :cond_2

    invoke-direct {p0}, Lcom/GifEncoder/GifMakeActivity;->Q()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/GifEncoder/GifMakeActivity;->e:Z

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity;->a:Lcom/GifEncoder/LooperShowView;

    iget v1, p0, Lcom/GifEncoder/GifMakeActivity;->c:I

    iget v2, p0, Lcom/GifEncoder/GifMakeActivity;->p:I

    invoke-virtual {v0, v1, v2}, Lcom/GifEncoder/LooperShowView;->k(II)V

    :cond_3
    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
