.class public Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$m;,
        Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcn/nubia/video/commonui/app/b;

.field private D:Ljava/lang/String;

.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/content/Context;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcn/nubia/video/mediaeditorview/gifmaker/a;

.field private l:Landroid/net/Uri;

.field private m:I

.field private n:I

.field private o:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;

.field private p:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;

.field private q:Landroid/graphics/RectF;

.field private r:F

.field private s:F

.field private t:F

.field private u:Lc/b/a/r/h/d;

.field private v:Landroid/widget/ProgressBar;

.field private w:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$m;

.field x:Z

.field y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->r:F

    .line 4
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->s:F

    .line 5
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->t:F

    .line 6
    new-instance v0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$m;

    invoke-direct {v0, p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$m;-><init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->w:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$m;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->x:Z

    .line 8
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->y:Z

    .line 9
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->z:Z

    .line 10
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->A:Z

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->B:Z

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->C:Lcn/nubia/video/commonui/app/b;

    .line 13
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->D:Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->r:F

    return p0
.end method

.method static synthetic B(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic C(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->c:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic D(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->Q()V

    return-void
.end method

.method static synthetic E(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->d:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic F(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Lcn/nubia/video/mediaeditorview/gifmaker/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->k:Lcn/nubia/video/mediaeditorview/gifmaker/a;

    return-object p0
.end method

.method static synthetic G(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->M()V

    return-void
.end method

.method static synthetic H(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->m:I

    return p1
.end method

.method static synthetic I(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->n:I

    return p1
.end method

.method static synthetic J(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->Z(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;)V

    return-void
.end method

.method static synthetic K(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->t:F

    return p0
.end method

.method static synthetic L(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->t:F

    return p1
.end method

.method private M()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->k:Lcn/nubia/video/mediaeditorview/gifmaker/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/a;->b()V

    .line 3
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->k:Lcn/nubia/video/mediaeditorview/gifmaker/a;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->w:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$m;

    if-eqz v0, :cond_1

    .line 5
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->w:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$m;

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->u:Lc/b/a/r/h/d;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lc/b/a/r/h/a;->l()V

    :cond_2
    return-void
.end method

.method private N()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->C:Lcn/nubia/video/commonui/app/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/nubia/video/commonui/app/b$a;

    invoke-direct {v0, p0}, Lcn/nubia/video/commonui/app/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b$a;->a()Lcn/nubia/video/commonui/app/b;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->C:Lcn/nubia/video/commonui/app/b;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->C:Lcn/nubia/video/commonui/app/b;

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/d;->setCanceledOnTouchOutside(Z)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->C:Lcn/nubia/video/commonui/app/b;

    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b;->show()V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->C:Lcn/nubia/video/commonui/app/b;

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

    new-instance v2, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$d;

    invoke-direct {v2, p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$d;-><init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    sget v1, Lcn/nubia/video/mediaeditorview/g;->g:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$e;

    invoke-direct {v1, p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$e;-><init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private O(ZLjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->f:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    invoke-direct {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->Z(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->p:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->m:I

    iget v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->n:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;->p(II)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->q:Landroid/graphics/RectF;

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->k:Lcn/nubia/video/mediaeditorview/gifmaker/a;

    new-instance v1, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$i;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$i;-><init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Z)V

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/a;->k(Lcn/nubia/video/mediaeditorview/gifmaker/a$c;)V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->k:Lcn/nubia/video/mediaeditorview/gifmaker/a;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->r:F

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->s:F

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->q:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/a;->c(Ljava/lang/String;FFLandroid/graphics/RectF;)Z

    return-void
.end method

.method private P()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->C:Lcn/nubia/video/commonui/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->C:Lcn/nubia/video/commonui/app/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->C:Lcn/nubia/video/commonui/app/b;

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

.method private Q()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->T()V

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->R()V

    return-void
.end method

.method private R()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->l:Landroid/net/Uri;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->b:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gifMaker.gif"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->D:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->l:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 11
    :try_start_0
    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/m;->h(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->l:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->e:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->l:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcn/nubia/video/mediaeditorview/m;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :goto_0
    new-instance v1, Lcn/nubia/video/mediaeditorview/gifmaker/a;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->e:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/a;-><init>(Ljava/io/InputStream;Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->k:Lcn/nubia/video/mediaeditorview/gifmaker/a;

    .line 17
    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->c:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    invoke-direct {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->Z(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;)V

    .line 18
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->k:Lcn/nubia/video/mediaeditorview/gifmaker/a;

    new-instance v1, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;

    invoke-direct {v1, p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$g;-><init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/a;->j(Lcn/nubia/video/mediaeditorview/gifmaker/a$b;)V

    goto :goto_1

    .line 19
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->l:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 21
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GifMaker: openfile failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    invoke-direct {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->Z(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;)V

    return-void

    .line 23
    :cond_3
    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    invoke-direct {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->Z(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;)V

    :goto_1
    return-void
.end method

.method private S(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->o:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;

    invoke-virtual {v0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->c(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->o:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->t:F

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->setmTotalTime(I)V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->o:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->r:F

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->t:F

    div-float/2addr v0, v1

    iget v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->s:F

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->j(FF)V

    .line 4
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->r:F

    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;->c:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

    invoke-direct {p0, p1, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->U(FLcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;)V

    return-void
.end method

.method private T()V
    .locals 3

    .line 1
    sget v0, Lcn/nubia/video/mediaeditorview/h;->a:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 4
    sget v1, Lcn/nubia/video/mediaeditorview/g;->u:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->f:Landroid/widget/ImageView;

    .line 5
    sget v1, Lcn/nubia/video/mediaeditorview/g;->x:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->g:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    sget v1, Lcn/nubia/video/mediaeditorview/g;->s:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->c:Landroid/widget/Button;

    .line 8
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    sget v1, Lcn/nubia/video/mediaeditorview/g;->t:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->d:Landroid/widget/Button;

    .line 10
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    sget v1, Lcn/nubia/video/mediaeditorview/g;->w:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->h:Landroid/widget/TextView;

    .line 12
    sget v1, Lcn/nubia/video/mediaeditorview/g;->v:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->i:Landroid/widget/TextView;

    .line 13
    sget v1, Lcn/nubia/video/mediaeditorview/g;->z:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->j:Landroid/widget/TextView;

    .line 14
    sget v1, Lcn/nubia/video/mediaeditorview/g;->r:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->o:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;

    .line 15
    invoke-virtual {v1, p0}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;->setmSimpleTimeLineListener(Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$b;)V

    .line 16
    sget v1, Lcn/nubia/video/mediaeditorview/g;->y:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->v:Landroid/widget/ProgressBar;

    .line 17
    sget v1, Lcn/nubia/video/mediaeditorview/g;->q:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->p:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;

    .line 18
    new-instance v2, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$f;

    invoke-direct {v2, p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$f;-><init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 19
    new-instance v1, Lc/b/a/r/h/d;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->f:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v0}, Lc/b/a/r/h/d;-><init>(Landroid/widget/ImageView;I)V

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->u:Lc/b/a/r/h/d;

    return-void
.end method

.method private U(FLcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;)V
    .locals 4

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float v0, p1, v0

    .line 1
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->k:Lcn/nubia/video/mediaeditorview/gifmaker/a;

    invoke-virtual {v1, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/a;->l(F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0xa

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4
    new-instance v2, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$l;

    invoke-direct {v2, p0, p1, p2, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$l;-><init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Landroid/graphics/Bitmap;Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;F)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private V()Z
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

.method private W()V
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
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->A:Z

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->Q()V

    return-void
.end method

.method private X(Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->l:Landroid/net/Uri;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/m;->h(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->e:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".FileProvider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v5}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 4
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFileProvider: true "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 8
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->M()V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->e:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v2

    const/4 p1, 0x0

    new-instance v2, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$a;

    invoke-direct {v2, p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$a;-><init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Landroid/content/Intent;)V

    invoke-static {v1, v3, p1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :goto_0
    return-void
.end method

.method private Y(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->i:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    invoke-direct {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->Z(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;)V

    .line 2
    new-instance v0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$h;-><init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private Z(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$b;

    invoke-direct {v0, p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$b;-><init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->P()V

    return-void
.end method

.method static synthetic g(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->W()V

    return-void
.end method

.method static synthetic h(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->s:F

    return p0
.end method

.method static synthetic i(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->s:F

    return p1
.end method

.method static synthetic j(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->o:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->S(Ljava/util/List;)V

    return-void
.end method

.method static synthetic l(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Lc/b/a/r/h/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->u:Lc/b/a/r/h/d;

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->w:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$m;

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic o(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->p:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->Y(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic q(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->X(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic r(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic s(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->D:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic t(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->A:Z

    return p1
.end method

.method static synthetic u(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->O(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic v(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->l:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic w(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic x(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic y(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->v:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic z(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->g:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->t:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->s:F

    .line 2
    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;->b:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

    invoke-direct {p0, p1, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->U(FLcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->x:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->y:Z

    return-void
.end method

.method public b(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->t:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->r:F

    .line 2
    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

    invoke-direct {p0, p1, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->U(FLcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->x:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->y:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->a:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcn/nubia/video/mediaeditorview/g;->x:I

    if-ne p1, v0, :cond_2

    .line 3
    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->x:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->y:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->D:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->Y(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 5
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$j;

    invoke-direct {v0, p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$j;-><init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 7
    :cond_2
    sget v0, Lcn/nubia/video/mediaeditorview/g;->t:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v0, :cond_6

    .line 8
    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->x:Z

    if-eqz p1, :cond_5

    .line 9
    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->y:Z

    const-string v0, ".gif"

    const-string v1, "\'GIF\'_yyyyMMdd_HHmmss"

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->l:Landroid/net/Uri;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/m;->h(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->D:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->X(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->e:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->l:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcn/nubia/video/mediaeditorview/m;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->D:Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/nubia/video/mediaeditorview/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->X(Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->e:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->l:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcn/nubia/video/mediaeditorview/m;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$k;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$k;-><init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 18
    :cond_5
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->M()V

    .line 19
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 21
    :cond_6
    sget v0, Lcn/nubia/video/mediaeditorview/g;->s:I

    if-ne p1, v0, :cond_7

    .line 22
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->M()V

    .line 23
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_7
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->a:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->a:Ljava/lang/String;

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

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->e:Landroid/content/Context;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->z:Z

    .line 6
    invoke-static {p0}, Lb/a/b/a/k/a;->c(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->B:Z

    .line 7
    invoke-static {p0}, Lcn/nubia/video/permission/c;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->B:Z

    if-eqz p1, :cond_0

    .line 8
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->V()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    :cond_0
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->A:Z

    .line 10
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->Q()V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->a:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->M()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->a:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 3
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->B:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->N()V

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p0}, Lcn/nubia/video/permission/c;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->z:Z

    if-nez v0, :cond_1

    .line 7
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->z:Z

    .line 8
    invoke-static {p0}, Lcn/nubia/video/permission/RequestPermissionsActivity;->h(Landroid/app/Activity;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->M()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    .line 12
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->A:Z

    if-nez v0, :cond_3

    .line 13
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->A:Z

    .line 14
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->Q()V

    :cond_3
    :goto_1
    return-void
.end method
