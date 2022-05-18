.class public Lcn/nubia/g/b;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/common/ui/NubiaScrollView$a;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/android/common/ui/NubiaScrollView;

.field private f:Landroid/view/animation/Animation;

.field private g:Landroid/view/animation/Animation;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcn/nubia/g/b;->a:Landroid/widget/ImageView;

    .line 27
    iput-object v0, p0, Lcn/nubia/g/b;->b:Landroid/widget/LinearLayout;

    .line 28
    iput-object v0, p0, Lcn/nubia/g/b;->c:Landroid/widget/ImageButton;

    .line 29
    iput-object v0, p0, Lcn/nubia/g/b;->d:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcn/nubia/g/b;->e:Lcom/android/common/ui/NubiaScrollView;

    .line 31
    iput-object v0, p0, Lcn/nubia/g/b;->f:Landroid/view/animation/Animation;

    .line 32
    iput-object v0, p0, Lcn/nubia/g/b;->g:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcn/nubia/g/b;->h:Z

    return-void
.end method

.method private a()V
    .locals 2

    .line 65
    iget-boolean v0, p0, Lcn/nubia/g/b;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcn/nubia/g/b;->h:Z

    .line 69
    iget-object v0, p0, Lcn/nubia/g/b;->c:Landroid/widget/ImageButton;

    sget v1, Lcn/nubia/g/a$b;->aD:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 70
    iget-object v0, p0, Lcn/nubia/g/b;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcn/nubia/g/b;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/g/b;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 72
    iget-object v0, p0, Lcn/nubia/g/b;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 45
    sget v0, Lcn/nubia/g/a$c;->w:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/g/b;->a:Landroid/widget/ImageView;

    .line 46
    sget v0, Lcn/nubia/g/a$c;->q:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/nubia/g/b;->c:Landroid/widget/ImageButton;

    .line 47
    sget v0, Lcn/nubia/g/a$c;->v:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/g/b;->b:Landroid/widget/LinearLayout;

    .line 48
    sget v0, Lcn/nubia/g/a$c;->u:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/g/b;->d:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcn/nubia/g/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcn/nubia/g/b;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-direct {p0, p1}, Lcn/nubia/g/b;->b(Landroid/view/View;)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 76
    iget-boolean v0, p0, Lcn/nubia/g/b;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcn/nubia/g/b;->h:Z

    .line 80
    iget-object v0, p0, Lcn/nubia/g/b;->c:Landroid/widget/ImageButton;

    sget v1, Lcn/nubia/g/a$b;->aC:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 81
    iget-object v0, p0, Lcn/nubia/g/b;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcn/nubia/g/b;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/g/b;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 83
    iget-object v0, p0, Lcn/nubia/g/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .line 55
    sget v0, Lcn/nubia/g/a$c;->t:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/NubiaScrollView;

    iput-object p1, p0, Lcn/nubia/g/b;->e:Lcom/android/common/ui/NubiaScrollView;

    .line 56
    invoke-virtual {p1, p0}, Lcom/android/common/ui/NubiaScrollView;->setScrollViewListener(Lcom/android/common/ui/NubiaScrollView$a;)V

    .line 57
    iget-object p1, p0, Lcn/nubia/g/b;->e:Lcom/android/common/ui/NubiaScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/common/ui/NubiaScrollView;->smoothScrollTo(II)V

    .line 58
    invoke-virtual {p0}, Lcn/nubia/g/b;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcn/nubia/g/a$a;->b:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/g/b;->f:Landroid/view/animation/Animation;

    .line 60
    invoke-virtual {p0}, Lcn/nubia/g/b;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcn/nubia/g/a$a;->a:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/g/b;->g:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 0

    const/16 p1, 0x12c

    if-le p2, p4, :cond_0

    if-le p2, p1, :cond_0

    .line 97
    invoke-direct {p0}, Lcn/nubia/g/b;->b()V

    goto :goto_0

    :cond_0
    if-ge p2, p4, :cond_1

    if-ge p2, p1, :cond_1

    .line 99
    invoke-direct {p0}, Lcn/nubia/g/b;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 89
    sget v0, Lcn/nubia/g/a$c;->v:I

    if-eq p1, v0, :cond_0

    sget v0, Lcn/nubia/g/a$c;->q:I

    if-ne p1, v0, :cond_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/g/b;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 38
    sget p3, Lcn/nubia/g/a$d;->a:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/g/b;->a(Landroid/view/View;)V

    return-object p1
.end method
