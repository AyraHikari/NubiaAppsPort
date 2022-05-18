.class public Lcn/nubia/i/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/content/DialogInterface$OnClickListener;

.field private d:Landroid/content/DialogInterface$OnClickListener;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcn/nubia/i/m$a;->a:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcn/nubia/i/m$a;->b:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcn/nubia/i/m$a;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcn/nubia/i/m$a;->c:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/i/m$a;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcn/nubia/i/m$a;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/i/m$a;
    .locals 0

    .line 69
    iput-object p1, p0, Lcn/nubia/i/m$a;->c:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcn/nubia/i/m$a;
    .locals 0

    .line 79
    iput-object p1, p0, Lcn/nubia/i/m$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcn/nubia/i/m;
    .locals 6

    .line 90
    new-instance v0, Lcn/nubia/i/m;

    iget-object v1, p0, Lcn/nubia/i/m$a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/i/m;-><init>(Landroid/content/Context;)V

    .line 91
    iget-object v1, p0, Lcn/nubia/i/m$a;->a:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 93
    sget v2, Lcn/nubia/i/q$e;->e:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcn/nubia/i/m$a;->b:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 95
    sget v2, Lcn/nubia/i/q$d;->e:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 96
    iget-object v3, p0, Lcn/nubia/i/m$a;->b:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    :cond_0
    iget-object v2, p0, Lcn/nubia/i/m$a;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 99
    sget v2, Lcn/nubia/i/q$d;->q:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/i/m$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_1
    iget-object v2, p0, Lcn/nubia/i/m$a;->f:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 102
    sget v2, Lcn/nubia/i/q$d;->j:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/i/m$a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_2
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcn/nubia/i/m$a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/i/q$b;->b:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcn/nubia/i/m$a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/i/q$b;->a:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/i/m;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v2, p0, Lcn/nubia/i/m$a;->c:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_3

    .line 108
    sget v2, Lcn/nubia/i/q$d;->q:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcn/nubia/i/m$a$1;

    invoke-direct {v3, p0, v0}, Lcn/nubia/i/m$a$1;-><init>(Lcn/nubia/i/m$a;Lcn/nubia/i/m;)V

    .line 109
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_3
    iget-object v2, p0, Lcn/nubia/i/m$a;->d:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_4

    .line 118
    sget v2, Lcn/nubia/i/q$d;->j:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/nubia/i/m$a$2;

    invoke-direct {v2, p0, v0}, Lcn/nubia/i/m$a$2;-><init>(Lcn/nubia/i/m$a;Lcn/nubia/i/m;)V

    .line 119
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-object v0
.end method

.method public b(Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/i/m$a;
    .locals 0

    .line 74
    iput-object p1, p0, Lcn/nubia/i/m$a;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcn/nubia/i/m$a;
    .locals 0

    .line 84
    iput-object p1, p0, Lcn/nubia/i/m$a;->f:Ljava/lang/String;

    return-object p0
.end method
