.class public Lcn/nubia/video/list/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/list/ui/e$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lb/a/b/c/b/m;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/list/ui/e;->b:Lb/a/b/c/b/m;

    .line 3
    iput-object v0, p0, Lcn/nubia/video/list/ui/e;->c:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcn/nubia/video/list/ui/e;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcn/nubia/video/list/ui/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/list/ui/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/video/list/ui/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/e;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcn/nubia/video/list/ui/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/list/ui/e;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/video/list/ui/e;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/list/ui/e;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcn/nubia/video/list/ui/e;)Lb/a/b/c/b/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/list/ui/e;->b:Lb/a/b/c/b/m;

    return-object p0
.end method

.method private f(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string p1, ""

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcn/nubia/video/player/p;

    iget-object p2, p0, Lcn/nubia/video/list/ui/e;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcn/nubia/video/player/p;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0053

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/p;->g(I)V

    return v0

    .line 3
    :cond_0
    invoke-static {p2}, Lb/a/b/d/e;->I(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lcn/nubia/video/player/p;

    iget-object p2, p0, Lcn/nubia/video/list/ui/e;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcn/nubia/video/player/p;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0052

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/p;->g(I)V

    return v0

    .line 5
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const v1, 0x7f0f0051

    const/16 v2, 0x50

    if-le p1, v2, :cond_2

    .line 6
    new-instance p1, Lcn/nubia/video/player/p;

    iget-object v3, p0, Lcn/nubia/video/list/ui/e;->a:Landroid/content/Context;

    invoke-direct {p1, v3}, Lcn/nubia/video/player/p;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f004c

    invoke-virtual {p1, v3}, Lcn/nubia/video/player/p;->g(I)V

    .line 7
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/list/ui/e;->c:Ljava/lang/String;

    .line 8
    invoke-direct {p0, p1}, Lcn/nubia/video/list/ui/e;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    new-instance p1, Lcn/nubia/video/player/p;

    iget-object p2, p0, Lcn/nubia/video/list/ui/e;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcn/nubia/video/player/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcn/nubia/video/player/p;->g(I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0, p2}, Lcn/nubia/video/list/ui/e;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    new-instance p1, Lcn/nubia/video/player/p;

    iget-object p2, p0, Lcn/nubia/video/list/ui/e;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcn/nubia/video/player/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcn/nubia/video/player/p;->g(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private g(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/e;->b:Lb/a/b/c/b/m;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lb/a/b/c/b/m;->s()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/nubia/video/list/ui/e;->b:Lb/a/b/c/b/m;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lb/a/b/c/b/m;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private i()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0058

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090067

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 4
    iget-object v3, p0, Lcn/nubia/video/list/ui/e;->b:Lb/a/b/c/b/m;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v3}, Lb/a/b/c/b/m;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    iget-object v3, p0, Lcn/nubia/video/list/ui/e;->b:Lb/a/b/c/b/m;

    invoke-virtual {v3}, Lb/a/b/c/b/m;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    .line 7
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x50

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 8
    new-instance v3, Lcn/nubia/video/list/ui/e$c;

    invoke-direct {v3, p0, v2}, Lcn/nubia/video/list/ui/e$c;-><init>(Lcn/nubia/video/list/ui/e;Lcn/nubia/video/list/ui/e$a;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    iget-object v1, p0, Lcn/nubia/video/list/ui/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcn/nubia/video/list/ui/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 11
    new-instance v3, Lcn/nubia/video/commonui/app/b$a;

    iget-object v4, p0, Lcn/nubia/video/list/ui/e;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcn/nubia/video/commonui/app/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcn/nubia/video/commonui/app/b$a;->m(Landroid/view/View;)Lcn/nubia/video/commonui/app/b$a;

    new-instance v0, Lcn/nubia/video/list/ui/e$b;

    invoke-direct {v0, p0}, Lcn/nubia/video/list/ui/e$b;-><init>(Lcn/nubia/video/list/ui/e;)V

    invoke-virtual {v3, v2, v0}, Lcn/nubia/video/commonui/app/b$a;->i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    new-instance v0, Lcn/nubia/video/list/ui/e$a;

    invoke-direct {v0, p0}, Lcn/nubia/video/list/ui/e$a;-><init>(Lcn/nubia/video/list/ui/e;)V

    .line 12
    invoke-virtual {v3, v1, v0}, Lcn/nubia/video/commonui/app/b$a;->g(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    .line 13
    invoke-virtual {v3}, Lcn/nubia/video/commonui/app/b$a;->a()Lcn/nubia/video/commonui/app/b;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public h(Lb/a/b/c/b/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/e;->b:Lb/a/b/c/b/m;

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/list/ui/e;->i()V

    return-void
.end method
