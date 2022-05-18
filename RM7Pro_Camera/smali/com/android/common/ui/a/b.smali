.class public Lcom/android/common/ui/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/a/a$a;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/android/common/ui/a/a;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/common/ui/a/b;->a:Landroid/widget/RelativeLayout;

    .line 18
    iput-object v0, p0, Lcom/android/common/ui/a/b;->b:Landroid/widget/ImageView;

    .line 19
    iput-object v0, p0, Lcom/android/common/ui/a/b;->c:Landroid/widget/TextView;

    .line 20
    iput-object v0, p0, Lcom/android/common/ui/a/b;->d:Landroid/widget/LinearLayout;

    .line 21
    iput-object v0, p0, Lcom/android/common/ui/a/b;->e:Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lcom/android/common/ui/a/b;->f:Lcom/android/common/ui/a/a;

    .line 23
    iput-object v0, p0, Lcom/android/common/ui/a/b;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/android/common/ui/a/b;->h:I

    .line 27
    new-instance v0, Lcom/android/common/ui/a/a;

    const-wide/16 v1, 0x190

    invoke-direct {v0, v1, v2, p0}, Lcom/android/common/ui/a/a;-><init>(JLcom/android/common/ui/a/a$a;)V

    iput-object v0, p0, Lcom/android/common/ui/a/b;->f:Lcom/android/common/ui/a/a;

    .line 28
    invoke-direct {p0, p1}, Lcom/android/common/ui/a/b;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 32
    sget v0, Lcom/android/common/ui/c$e;->j:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/common/ui/a/b;->a:Landroid/widget/RelativeLayout;

    .line 33
    sget v0, Lcom/android/common/ui/c$e;->k:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/common/ui/a/b;->b:Landroid/widget/ImageView;

    .line 34
    sget v0, Lcom/android/common/ui/c$e;->n:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/ui/a/b;->c:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/android/common/ui/c$e;->m:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/common/ui/a/b;->d:Landroid/widget/LinearLayout;

    .line 36
    sget v0, Lcom/android/common/ui/c$e;->l:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/common/ui/a/b;->e:Landroid/widget/TextView;

    return-void
.end method

.method private g()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/common/ui/a/b;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/android/common/ui/a/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/android/common/ui/a/b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/common/ui/a/b;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/android/common/ui/a/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/android/common/ui/a/b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/android/common/ui/a/b;->b:Landroid/widget/ImageView;

    const-string v1, "NubiaTimingShow"

    if-nez v0, :cond_0

    const-string v0, "onInterval() mIconView is null!"

    .line 106
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 109
    :cond_0
    iget v2, p0, Lcom/android/common/ui/a/b;->h:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterval() mState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/common/ui/a/b;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 113
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/android/common/ui/a/b;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/common/ui/a/b;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/common/ui/a/b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/android/common/ui/a/b;->h:I

    .line 41
    iget-object v0, p0, Lcom/android/common/ui/a/b;->b:Landroid/widget/ImageView;

    sget v1, Lcom/android/common/ui/c$d;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 42
    invoke-direct {p0}, Lcom/android/common/ui/a/b;->g()V

    .line 43
    iget-object v0, p0, Lcom/android/common/ui/a/b;->f:Lcom/android/common/ui/a/a;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/android/common/ui/a/a;->a()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 57
    iput-object p1, p0, Lcom/android/common/ui/a/b;->g:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/android/common/ui/a/b;->d:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/android/common/ui/a/b;->d:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    iget-object p1, p0, Lcom/android/common/ui/a/b;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/common/ui/a/b;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/common/ui/a/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x2

    .line 71
    iput v0, p0, Lcom/android/common/ui/a/b;->h:I

    .line 72
    iget-object v0, p0, Lcom/android/common/ui/a/b;->f:Lcom/android/common/ui/a/a;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/android/common/ui/a/a;->b()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/a/b;->b:Landroid/widget/ImageView;

    sget v1, Lcom/android/common/ui/c$d;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 76
    iget-object v0, p0, Lcom/android/common/ui/a/b;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/android/common/ui/a/b;->h:I

    .line 81
    iget-object v0, p0, Lcom/android/common/ui/a/b;->f:Lcom/android/common/ui/a/a;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/android/common/ui/a/a;->b()V

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/android/common/ui/a/b;->h()V

    return-void
.end method

.method public f()Z
    .locals 2

    .line 88
    iget v0, p0, Lcom/android/common/ui/a/b;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
