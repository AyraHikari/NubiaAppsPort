.class public Lcn/nubia/collage/ui/CollageShareActivity;
.super Landroid/app/Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/collage/ui/CollageShareActivity$g;,
        Lcn/nubia/collage/ui/CollageShareActivity$f;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/support/v4/view/ViewPager;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcn/nubia/collage/ui/l;

.field private m:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity;->k:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcn/nubia/collage/ui/CollageShareActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/ui/CollageShareActivity;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/collage/ui/CollageShareActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/ui/CollageShareActivity;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/collage/ui/CollageShareActivity;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/ui/CollageShareActivity;->m:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/collage/ui/CollageShareActivity;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/collage/ui/CollageShareActivity;->h(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcn/nubia/collage/ui/CollageShareActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/nubia/collage/ui/CollageShareActivity;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcn/nubia/collage/ui/CollageShareActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/ui/CollageShareActivity;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private h(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity;->a:Landroid/view/View;

    new-instance v1, Lcn/nubia/collage/ui/CollageShareActivity$a;

    invoke-direct {v1, p0}, Lcn/nubia/collage/ui/CollageShareActivity$a;-><init>(Lcn/nubia/collage/ui/CollageShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity;->b:Landroid/view/View;

    new-instance v1, Lcn/nubia/collage/ui/CollageShareActivity$b;

    invoke-direct {v1, p0}, Lcn/nubia/collage/ui/CollageShareActivity$b;-><init>(Lcn/nubia/collage/ui/CollageShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity;->c:Landroid/view/View;

    new-instance v1, Lcn/nubia/collage/ui/CollageShareActivity$c;

    invoke-direct {v1, p0}, Lcn/nubia/collage/ui/CollageShareActivity$c;-><init>(Lcn/nubia/collage/ui/CollageShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private k()V
    .locals 16

    move-object/from16 v10, p0

    const/16 v11, 0x9

    new-array v12, v11, [Lcn/nubia/collage/ui/CollageShareActivity$g;

    new-instance v13, Lcn/nubia/collage/ui/CollageShareActivity$g;

    sget-object v2, Lcn/nubia/collage/ui/CollageShareActivity$f;->a:Lcn/nubia/collage/ui/CollageShareActivity$f;

    iget-object v14, v10, Lcn/nubia/collage/ui/CollageShareActivity;->e:Landroid/view/View;

    const v4, 0x7f080235

    const v5, 0x7f07024d

    const v6, 0x7f08023e

    const v7, 0x7f0e017b

    const-string v8, "cn.nubia.neoshare"

    const-string v9, "cn.nubia.neoshare.share.ShareReceiverActivity"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v3, v14

    invoke-direct/range {v0 .. v9}, Lcn/nubia/collage/ui/CollageShareActivity$g;-><init>(Lcn/nubia/collage/ui/CollageShareActivity;Lcn/nubia/collage/ui/CollageShareActivity$f;Landroid/view/View;IIIILjava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    aput-object v13, v12, v15

    new-instance v13, Lcn/nubia/collage/ui/CollageShareActivity$g;

    sget-object v2, Lcn/nubia/collage/ui/CollageShareActivity$f;->b:Lcn/nubia/collage/ui/CollageShareActivity$f;

    const v4, 0x7f080236

    const v5, 0x7f07024e

    const v6, 0x7f08023f

    const v7, 0x7f0e017c

    const-string v8, "com.tencent.mobileqq"

    const-string v9, "com.tencent.mobileqq.activity.JumpActivity"

    move-object v0, v13

    invoke-direct/range {v0 .. v9}, Lcn/nubia/collage/ui/CollageShareActivity$g;-><init>(Lcn/nubia/collage/ui/CollageShareActivity;Lcn/nubia/collage/ui/CollageShareActivity$f;Landroid/view/View;IIIILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    aput-object v13, v12, v0

    new-instance v13, Lcn/nubia/collage/ui/CollageShareActivity$g;

    sget-object v2, Lcn/nubia/collage/ui/CollageShareActivity$f;->c:Lcn/nubia/collage/ui/CollageShareActivity$f;

    const v4, 0x7f080237

    const v5, 0x7f07024f

    const v6, 0x7f080240

    const v7, 0x7f0e017d

    const-string v8, "com.qzone"

    const-string v9, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    move-object v0, v13

    invoke-direct/range {v0 .. v9}, Lcn/nubia/collage/ui/CollageShareActivity$g;-><init>(Lcn/nubia/collage/ui/CollageShareActivity;Lcn/nubia/collage/ui/CollageShareActivity$f;Landroid/view/View;IIIILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    aput-object v13, v12, v0

    new-instance v13, Lcn/nubia/collage/ui/CollageShareActivity$g;

    sget-object v2, Lcn/nubia/collage/ui/CollageShareActivity$f;->d:Lcn/nubia/collage/ui/CollageShareActivity$f;

    const v4, 0x7f080238

    const v5, 0x7f070252

    const v6, 0x7f080241

    const v7, 0x7f0e0180

    const-string v8, "com.tencent.mm"

    const-string v9, "com.tencent.mm.ui.tools.ShareImgUI"

    move-object v0, v13

    invoke-direct/range {v0 .. v9}, Lcn/nubia/collage/ui/CollageShareActivity$g;-><init>(Lcn/nubia/collage/ui/CollageShareActivity;Lcn/nubia/collage/ui/CollageShareActivity$f;Landroid/view/View;IIIILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    aput-object v13, v12, v0

    new-instance v13, Lcn/nubia/collage/ui/CollageShareActivity$g;

    sget-object v2, Lcn/nubia/collage/ui/CollageShareActivity$f;->e:Lcn/nubia/collage/ui/CollageShareActivity$f;

    iget-object v14, v10, Lcn/nubia/collage/ui/CollageShareActivity;->f:Landroid/view/View;

    const v4, 0x7f080235

    const v5, 0x7f07024c

    const v6, 0x7f08023e

    const v7, 0x7f0e017a

    const-string v8, "com.tencent.mm"

    const-string v9, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    move-object v0, v13

    move-object v3, v14

    invoke-direct/range {v0 .. v9}, Lcn/nubia/collage/ui/CollageShareActivity$g;-><init>(Lcn/nubia/collage/ui/CollageShareActivity;Lcn/nubia/collage/ui/CollageShareActivity$f;Landroid/view/View;IIIILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    aput-object v13, v12, v0

    new-instance v13, Lcn/nubia/collage/ui/CollageShareActivity$g;

    sget-object v2, Lcn/nubia/collage/ui/CollageShareActivity$f;->f:Lcn/nubia/collage/ui/CollageShareActivity$f;

    const v4, 0x7f080236

    const v5, 0x7f070253

    const v6, 0x7f08023f

    const v7, 0x7f0e0181

    const-string v8, "com.sina.weibo"

    const-string v9, "com.sina.weibo.EditActivity"

    move-object v0, v13

    invoke-direct/range {v0 .. v9}, Lcn/nubia/collage/ui/CollageShareActivity$g;-><init>(Lcn/nubia/collage/ui/CollageShareActivity;Lcn/nubia/collage/ui/CollageShareActivity$f;Landroid/view/View;IIIILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    aput-object v13, v12, v0

    new-instance v13, Lcn/nubia/collage/ui/CollageShareActivity$g;

    sget-object v2, Lcn/nubia/collage/ui/CollageShareActivity$f;->g:Lcn/nubia/collage/ui/CollageShareActivity$f;

    const v4, 0x7f080237

    const v5, 0x7f07024a

    const v6, 0x7f080240

    const v7, 0x7f0e0178

    const-string v8, "com.facebook.katana"

    const-string v9, "com.facebook.composor.shareintent.ImplictShareIntentHandlerDefaultAlias"

    move-object v0, v13

    invoke-direct/range {v0 .. v9}, Lcn/nubia/collage/ui/CollageShareActivity$g;-><init>(Lcn/nubia/collage/ui/CollageShareActivity;Lcn/nubia/collage/ui/CollageShareActivity$f;Landroid/view/View;IIIILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    aput-object v13, v12, v0

    new-instance v13, Lcn/nubia/collage/ui/CollageShareActivity$g;

    sget-object v2, Lcn/nubia/collage/ui/CollageShareActivity$f;->h:Lcn/nubia/collage/ui/CollageShareActivity$f;

    const v4, 0x7f080238

    const v5, 0x7f070251

    const v6, 0x7f080241

    const v7, 0x7f0e017f

    const-string v8, "com.twitter.android"

    const-string v9, ""

    move-object v0, v13

    invoke-direct/range {v0 .. v9}, Lcn/nubia/collage/ui/CollageShareActivity$g;-><init>(Lcn/nubia/collage/ui/CollageShareActivity;Lcn/nubia/collage/ui/CollageShareActivity$f;Landroid/view/View;IIIILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    aput-object v13, v12, v0

    new-instance v13, Lcn/nubia/collage/ui/CollageShareActivity$g;

    sget-object v2, Lcn/nubia/collage/ui/CollageShareActivity$f;->i:Lcn/nubia/collage/ui/CollageShareActivity$f;

    iget-object v3, v10, Lcn/nubia/collage/ui/CollageShareActivity;->g:Landroid/view/View;

    const v4, 0x7f080235

    const v5, 0x7f07024b

    const v6, 0x7f08023e

    const v7, 0x7f0e0179

    const-string v8, "com.instagram.android"

    const-string v9, "com.instagram.android.activity.ShareHandlerActivity"

    move-object v0, v13

    invoke-direct/range {v0 .. v9}, Lcn/nubia/collage/ui/CollageShareActivity$g;-><init>(Lcn/nubia/collage/ui/CollageShareActivity;Lcn/nubia/collage/ui/CollageShareActivity$f;Landroid/view/View;IIIILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    aput-object v13, v12, v0

    :goto_0
    if-ge v15, v11, :cond_1

    aget-object v0, v12, v15

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageShareActivity$g;->a(Lcn/nubia/collage/ui/CollageShareActivity$g;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    aget-object v0, v12, v15

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageShareActivity$g;->a(Lcn/nubia/collage/ui/CollageShareActivity$g;)Landroid/view/View;

    move-result-object v0

    aget-object v1, v12, v15

    invoke-static {v1}, Lcn/nubia/collage/ui/CollageShareActivity$g;->c(Lcn/nubia/collage/ui/CollageShareActivity$g;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aget-object v1, v12, v15

    invoke-static {v1}, Lcn/nubia/collage/ui/CollageShareActivity$g;->b(Lcn/nubia/collage/ui/CollageShareActivity$g;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    aget-object v0, v12, v15

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageShareActivity$g;->a(Lcn/nubia/collage/ui/CollageShareActivity$g;)Landroid/view/View;

    move-result-object v0

    aget-object v1, v12, v15

    invoke-static {v1}, Lcn/nubia/collage/ui/CollageShareActivity$g;->e(Lcn/nubia/collage/ui/CollageShareActivity$g;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aget-object v1, v12, v15

    invoke-static {v1}, Lcn/nubia/collage/ui/CollageShareActivity$g;->d(Lcn/nubia/collage/ui/CollageShareActivity$g;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    aget-object v0, v12, v15

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageShareActivity$g;->f(Lcn/nubia/collage/ui/CollageShareActivity$g;)Ljava/lang/String;

    move-result-object v0

    aget-object v1, v12, v15

    invoke-static {v1}, Lcn/nubia/collage/ui/CollageShareActivity$g;->g(Lcn/nubia/collage/ui/CollageShareActivity$g;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v12, v15

    invoke-static {v2}, Lcn/nubia/collage/ui/CollageShareActivity$g;->d(Lcn/nubia/collage/ui/CollageShareActivity$g;)I

    move-result v2

    aget-object v3, v12, v15

    invoke-static {v3}, Lcn/nubia/collage/ui/CollageShareActivity$g;->a(Lcn/nubia/collage/ui/CollageShareActivity$g;)Landroid/view/View;

    move-result-object v3

    aget-object v4, v12, v15

    invoke-static {v4}, Lcn/nubia/collage/ui/CollageShareActivity$g;->c(Lcn/nubia/collage/ui/CollageShareActivity$g;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcn/nubia/collage/ui/CollageShareActivity$e;

    invoke-direct {v4, v10, v0, v1, v2}, Lcn/nubia/collage/ui/CollageShareActivity$e;-><init>(Lcn/nubia/collage/ui/CollageShareActivity;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity;->d:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcn/nubia/collage/ui/CollageShareActivity$d;

    invoke-direct {v1, p0}, Lcn/nubia/collage/ui/CollageShareActivity$d;-><init>(Lcn/nubia/collage/ui/CollageShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity;->m:Landroid/net/Uri;

    const p1, 0x7f0b0012

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f080233

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity;->a:Landroid/view/View;

    const p1, 0x7f08021b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity;->b:Landroid/view/View;

    const p1, 0x7f080228

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity;->c:Landroid/view/View;

    const p1, 0x7f080247

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity;->d:Landroid/support/v4/view/ViewPager;

    const p1, 0x7f0801d6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity;->h:Landroid/widget/ImageView;

    const p1, 0x7f0801d7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity;->i:Landroid/widget/ImageView;

    const p1, 0x7f0801d8

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0013

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity;->e:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity;->g:Landroid/view/View;

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity;->k:Ljava/util/List;

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity;->e:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity;->k:Ljava/util/List;

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity;->f:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity;->k:Ljava/util/List;

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity;->g:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcn/nubia/collage/ui/l;

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity;->k:Ljava/util/List;

    invoke-direct {p1, v0}, Lcn/nubia/collage/ui/l;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity;->l:Lcn/nubia/collage/ui/l;

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageShareActivity;->i()V

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageShareActivity;->j()V

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageShareActivity;->l()V

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageShareActivity;->k()V

    return-void
.end method
