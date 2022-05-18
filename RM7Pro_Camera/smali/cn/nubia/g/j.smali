.class public Lcn/nubia/g/j;
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

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/widget/ImageButton;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/widget/ImageButton;

.field private o:Landroid/widget/ImageButton;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcn/nubia/g/j;->a:Landroid/widget/ImageView;

    .line 29
    iput-object v0, p0, Lcn/nubia/g/j;->b:Landroid/widget/LinearLayout;

    .line 30
    iput-object v0, p0, Lcn/nubia/g/j;->c:Landroid/widget/ImageButton;

    .line 31
    iput-object v0, p0, Lcn/nubia/g/j;->d:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcn/nubia/g/j;->e:Lcom/android/common/ui/NubiaScrollView;

    .line 33
    iput-object v0, p0, Lcn/nubia/g/j;->f:Landroid/view/animation/Animation;

    .line 34
    iput-object v0, p0, Lcn/nubia/g/j;->g:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcn/nubia/g/j;->h:Z

    .line 37
    iput-object v0, p0, Lcn/nubia/g/j;->i:Landroid/widget/ImageButton;

    .line 38
    iput-object v0, p0, Lcn/nubia/g/j;->j:Landroid/widget/ImageButton;

    .line 39
    iput-object v0, p0, Lcn/nubia/g/j;->k:Landroid/widget/ImageButton;

    .line 40
    iput-object v0, p0, Lcn/nubia/g/j;->l:Landroid/widget/ImageButton;

    .line 41
    iput-object v0, p0, Lcn/nubia/g/j;->m:Landroid/widget/ImageButton;

    .line 42
    iput-object v0, p0, Lcn/nubia/g/j;->n:Landroid/widget/ImageButton;

    .line 43
    iput-object v0, p0, Lcn/nubia/g/j;->o:Landroid/widget/ImageButton;

    .line 44
    iput-object v0, p0, Lcn/nubia/g/j;->p:Landroid/view/View;

    .line 45
    iput-object v0, p0, Lcn/nubia/g/j;->q:Landroid/view/View;

    .line 46
    iput-object v0, p0, Lcn/nubia/g/j;->r:Landroid/view/View;

    .line 47
    iput-object v0, p0, Lcn/nubia/g/j;->s:Landroid/view/View;

    .line 48
    iput-object v0, p0, Lcn/nubia/g/j;->t:Landroid/view/View;

    .line 49
    iput-object v0, p0, Lcn/nubia/g/j;->u:Landroid/view/View;

    return-void
.end method

.method private a()V
    .locals 2

    .line 114
    iget-boolean v0, p0, Lcn/nubia/g/j;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcn/nubia/g/j;->h:Z

    .line 118
    iget-object v0, p0, Lcn/nubia/g/j;->c:Landroid/widget/ImageButton;

    sget v1, Lcn/nubia/g/a$b;->aD:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 119
    iget-object v0, p0, Lcn/nubia/g/j;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcn/nubia/g/j;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/g/j;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 121
    iget-object v0, p0, Lcn/nubia/g/j;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcn/nubia/g/j;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 61
    sget v0, Lcn/nubia/g/a$c;->w:I

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/g/j;->a:Landroid/widget/ImageView;

    .line 63
    sget v0, Lcn/nubia/g/a$c;->q:I

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/nubia/g/j;->c:Landroid/widget/ImageButton;

    .line 65
    sget v0, Lcn/nubia/g/a$c;->v:I

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/g/j;->b:Landroid/widget/LinearLayout;

    .line 67
    sget v0, Lcn/nubia/g/a$c;->u:I

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/g/j;->d:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcn/nubia/g/j;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/g/j;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-direct {p0, p1}, Lcn/nubia/g/j;->d(Landroid/view/View;)V

    .line 72
    invoke-direct {p0, p1}, Lcn/nubia/g/j;->c(Landroid/view/View;)V

    .line 73
    invoke-direct {p0, p1}, Lcn/nubia/g/j;->b(Landroid/view/View;)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 126
    iget-boolean v0, p0, Lcn/nubia/g/j;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcn/nubia/g/j;->h:Z

    .line 130
    iget-object v0, p0, Lcn/nubia/g/j;->c:Landroid/widget/ImageButton;

    sget v1, Lcn/nubia/g/a$b;->aC:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 131
    iget-object v0, p0, Lcn/nubia/g/j;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcn/nubia/g/j;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/g/j;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 133
    iget-object v0, p0, Lcn/nubia/g/j;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcn/nubia/g/j;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .line 77
    sget v0, Lcn/nubia/g/a$c;->j:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/g/j;->p:Landroid/view/View;

    .line 78
    sget v0, Lcn/nubia/g/a$c;->l:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/g/j;->q:Landroid/view/View;

    .line 79
    sget v0, Lcn/nubia/g/a$c;->o:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/g/j;->r:Landroid/view/View;

    .line 80
    sget v0, Lcn/nubia/g/a$c;->m:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/g/j;->s:Landroid/view/View;

    .line 81
    sget v0, Lcn/nubia/g/a$c;->k:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/g/j;->t:Landroid/view/View;

    .line 82
    sget v0, Lcn/nubia/g/a$c;->n:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/g/j;->u:Landroid/view/View;

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 1

    .line 86
    sget v0, Lcn/nubia/g/a$c;->x:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/nubia/g/j;->i:Landroid/widget/ImageButton;

    .line 87
    sget v0, Lcn/nubia/g/a$c;->c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/nubia/g/j;->j:Landroid/widget/ImageButton;

    .line 88
    sget v0, Lcn/nubia/g/a$c;->i:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/nubia/g/j;->k:Landroid/widget/ImageButton;

    .line 89
    sget v0, Lcn/nubia/g/a$c;->z:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/nubia/g/j;->l:Landroid/widget/ImageButton;

    .line 90
    sget v0, Lcn/nubia/g/a$c;->p:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/nubia/g/j;->m:Landroid/widget/ImageButton;

    .line 91
    sget v0, Lcn/nubia/g/a$c;->h:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/nubia/g/j;->n:Landroid/widget/ImageButton;

    .line 92
    sget v0, Lcn/nubia/g/a$c;->y:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcn/nubia/g/j;->o:Landroid/widget/ImageButton;

    .line 93
    iget-object p1, p0, Lcn/nubia/g/j;->i:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p1, p0, Lcn/nubia/g/j;->j:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p1, p0, Lcn/nubia/g/j;->k:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lcn/nubia/g/j;->l:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p1, p0, Lcn/nubia/g/j;->m:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcn/nubia/g/j;->n:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p1, p0, Lcn/nubia/g/j;->o:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    .line 103
    sget v0, Lcn/nubia/g/a$c;->t:I

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/NubiaScrollView;

    iput-object p1, p0, Lcn/nubia/g/j;->e:Lcom/android/common/ui/NubiaScrollView;

    .line 105
    invoke-virtual {p1, p0}, Lcom/android/common/ui/NubiaScrollView;->setScrollViewListener(Lcom/android/common/ui/NubiaScrollView$a;)V

    .line 106
    iget-object p1, p0, Lcn/nubia/g/j;->e:Lcom/android/common/ui/NubiaScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/common/ui/NubiaScrollView;->smoothScrollTo(II)V

    .line 107
    invoke-virtual {p0}, Lcn/nubia/g/j;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcn/nubia/g/a$a;->b:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/g/j;->f:Landroid/view/animation/Animation;

    .line 109
    invoke-virtual {p0}, Lcn/nubia/g/j;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcn/nubia/g/a$a;->a:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/g/j;->g:Landroid/view/animation/Animation;

    return-void
.end method

.method private e(Landroid/view/View;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p1, 0x1

    .line 163
    aget p1, v0, p1

    add-int/lit16 p1, p1, -0xb4

    iget-object v0, p0, Lcn/nubia/g/j;->e:Lcom/android/common/ui/NubiaScrollView;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaScrollView;->getScrollY()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public a(IIII)V
    .locals 0

    const/16 p1, 0x12c

    if-le p2, p4, :cond_0

    if-le p2, p1, :cond_0

    .line 169
    invoke-direct {p0}, Lcn/nubia/g/j;->b()V

    goto :goto_0

    :cond_0
    if-ge p2, p4, :cond_1

    if-ge p2, p1, :cond_1

    .line 171
    invoke-direct {p0}, Lcn/nubia/g/j;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 140
    sget v0, Lcn/nubia/g/a$c;->v:I

    if-eq p1, v0, :cond_7

    sget v0, Lcn/nubia/g/a$c;->q:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 142
    :cond_0
    sget v0, Lcn/nubia/g/a$c;->x:I

    if-ne p1, v0, :cond_1

    .line 143
    iget-object p1, p0, Lcn/nubia/g/j;->e:Lcom/android/common/ui/NubiaScrollView;

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Lcom/android/common/ui/NubiaScrollView;->fullScroll(I)Z

    goto :goto_1

    .line 144
    :cond_1
    sget v0, Lcn/nubia/g/a$c;->c:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 145
    iget-object p1, p0, Lcn/nubia/g/j;->e:Lcom/android/common/ui/NubiaScrollView;

    iget-object v0, p0, Lcn/nubia/g/j;->p:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/g/j;->e(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/common/ui/NubiaScrollView;->smoothScrollTo(II)V

    goto :goto_1

    .line 146
    :cond_2
    sget v0, Lcn/nubia/g/a$c;->i:I

    if-ne p1, v0, :cond_3

    .line 147
    iget-object p1, p0, Lcn/nubia/g/j;->e:Lcom/android/common/ui/NubiaScrollView;

    iget-object v0, p0, Lcn/nubia/g/j;->q:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/g/j;->e(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/common/ui/NubiaScrollView;->smoothScrollTo(II)V

    goto :goto_1

    .line 148
    :cond_3
    sget v0, Lcn/nubia/g/a$c;->z:I

    if-ne p1, v0, :cond_4

    .line 149
    iget-object p1, p0, Lcn/nubia/g/j;->e:Lcom/android/common/ui/NubiaScrollView;

    iget-object v0, p0, Lcn/nubia/g/j;->r:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/g/j;->e(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/common/ui/NubiaScrollView;->smoothScrollTo(II)V

    goto :goto_1

    .line 150
    :cond_4
    sget v0, Lcn/nubia/g/a$c;->p:I

    if-ne p1, v0, :cond_5

    .line 151
    iget-object p1, p0, Lcn/nubia/g/j;->e:Lcom/android/common/ui/NubiaScrollView;

    iget-object v0, p0, Lcn/nubia/g/j;->s:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/g/j;->e(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/common/ui/NubiaScrollView;->smoothScrollTo(II)V

    goto :goto_1

    .line 152
    :cond_5
    sget v0, Lcn/nubia/g/a$c;->h:I

    if-ne p1, v0, :cond_6

    .line 153
    iget-object p1, p0, Lcn/nubia/g/j;->e:Lcom/android/common/ui/NubiaScrollView;

    iget-object v0, p0, Lcn/nubia/g/j;->t:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/g/j;->e(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/common/ui/NubiaScrollView;->smoothScrollTo(II)V

    goto :goto_1

    .line 154
    :cond_6
    sget v0, Lcn/nubia/g/a$c;->y:I

    if-ne p1, v0, :cond_8

    .line 155
    iget-object p1, p0, Lcn/nubia/g/j;->e:Lcom/android/common/ui/NubiaScrollView;

    iget-object v0, p0, Lcn/nubia/g/j;->u:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/g/j;->e(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/common/ui/NubiaScrollView;->smoothScrollTo(II)V

    goto :goto_1

    .line 141
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/g/j;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_8
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 54
    sget p3, Lcn/nubia/g/a$d;->h:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lcn/nubia/g/j;->a(Landroid/view/View;)V

    return-object p1
.end method
