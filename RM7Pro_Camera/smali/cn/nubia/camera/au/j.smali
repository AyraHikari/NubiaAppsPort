.class public Lcn/nubia/camera/au/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

.field private g:Lcom/android/common/ui/NubiaProgressWheel;

.field private h:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/view/View;

.field private k:Lcom/android/common/ui/a/b;

.field private l:Lcn/nubia/camera/ad/a;

.field private m:Lcn/nubia/camera/af/a;

.field private n:Lcn/nubia/camera/au/a;

.field private o:Landroid/os/Handler;

.field private p:Lcn/nubia/camera/zoom/arc/a$a;

.field private q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

.field private r:I

.field private s:Lcn/nubia/camera/extendedUI/f;

.field private t:Lcn/nubia/camera/at/b;

.field private u:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/au/a;Landroid/os/Handler;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcn/nubia/camera/au/j;->b:Landroid/view/ViewGroup;

    .line 48
    iput-object v0, p0, Lcn/nubia/camera/au/j;->c:Landroid/widget/TextView;

    .line 49
    iput-object v0, p0, Lcn/nubia/camera/au/j;->d:Landroid/widget/ImageView;

    .line 50
    iput-object v0, p0, Lcn/nubia/camera/au/j;->e:Landroid/widget/RelativeLayout;

    .line 51
    iput-object v0, p0, Lcn/nubia/camera/au/j;->f:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 52
    iput-object v0, p0, Lcn/nubia/camera/au/j;->g:Lcom/android/common/ui/NubiaProgressWheel;

    .line 53
    iput-object v0, p0, Lcn/nubia/camera/au/j;->h:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 55
    iput-object v0, p0, Lcn/nubia/camera/au/j;->i:Landroid/widget/RelativeLayout;

    .line 56
    iput-object v0, p0, Lcn/nubia/camera/au/j;->j:Landroid/view/View;

    .line 58
    iput-object v0, p0, Lcn/nubia/camera/au/j;->k:Lcom/android/common/ui/a/b;

    .line 60
    iput-object v0, p0, Lcn/nubia/camera/au/j;->l:Lcn/nubia/camera/ad/a;

    .line 61
    iput-object v0, p0, Lcn/nubia/camera/au/j;->m:Lcn/nubia/camera/af/a;

    .line 62
    iput-object v0, p0, Lcn/nubia/camera/au/j;->n:Lcn/nubia/camera/au/a;

    .line 63
    iput-object v0, p0, Lcn/nubia/camera/au/j;->o:Landroid/os/Handler;

    .line 64
    iput-object v0, p0, Lcn/nubia/camera/au/j;->p:Lcn/nubia/camera/zoom/arc/a$a;

    .line 65
    iput-object v0, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    const/4 v1, 0x0

    .line 66
    iput v1, p0, Lcn/nubia/camera/au/j;->r:I

    .line 67
    iput-object v0, p0, Lcn/nubia/camera/au/j;->s:Lcn/nubia/camera/extendedUI/f;

    .line 68
    iput-object v0, p0, Lcn/nubia/camera/au/j;->t:Lcn/nubia/camera/at/b;

    .line 72
    iput-object p1, p0, Lcn/nubia/camera/au/j;->l:Lcn/nubia/camera/ad/a;

    .line 73
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/au/j;->m:Lcn/nubia/camera/af/a;

    .line 74
    iput-object p2, p0, Lcn/nubia/camera/au/j;->n:Lcn/nubia/camera/au/a;

    .line 75
    iput-object p3, p0, Lcn/nubia/camera/au/j;->o:Landroid/os/Handler;

    .line 76
    iput-object v0, p0, Lcn/nubia/camera/au/j;->a:Landroid/view/View;

    return-void
.end method

.method private a(JZ)Ljava/lang/String;
    .locals 16

    const-wide/16 v0, 0x3e8

    .line 120
    div-long v2, p1, v0

    const-wide/16 v4, 0x3c

    .line 121
    div-long v6, v2, v4

    .line 122
    div-long v8, v6, v4

    mul-long v10, v8, v4

    sub-long v10, v6, v10

    mul-long/2addr v6, v4

    sub-long v4, v2, v6

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v12, 0x0

    cmp-long v7, v8, v12

    const/16 v12, 0x3a

    const/16 v13, 0x30

    const-wide/16 v14, 0xa

    if-lez v7, :cond_1

    cmp-long v7, v8, v14

    if-gez v7, :cond_0

    .line 131
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    :cond_0
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    cmp-long v7, v10, v14

    if-gez v7, :cond_2

    .line 140
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    :cond_2
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long v7, v4, v14

    if-gez v7, :cond_3

    .line 147
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    :cond_3
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_5

    const/16 v4, 0x2e

    .line 153
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-long/2addr v2, v0

    sub-long v0, p1, v2

    .line 154
    div-long/2addr v0, v14

    cmp-long v2, v0, v14

    if-gez v2, :cond_4

    .line 156
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    :cond_4
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/au/j;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcn/nubia/camera/au/j;->r()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/au/j;)Lcn/nubia/camera/au/a;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/camera/au/j;->n:Lcn/nubia/camera/au/a;

    return-object p0
.end method

.method private b(Z)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcn/nubia/camera/au/j;->n:Lcn/nubia/camera/au/a;

    invoke-virtual {v0}, Lcn/nubia/camera/au/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/au/d;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/au/d;->f(Z)V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/au/j;)Lcn/nubia/camera/zoom/arc/a;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcn/nubia/camera/au/j;->s()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/au/j;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    return-object p0
.end method

.method private r()V
    .locals 4

    .line 240
    invoke-virtual {p0}, Lcn/nubia/camera/au/j;->g()Z

    move-result v0

    const-string v1, "StarTrackViewsManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcn/nubia/camera/au/j;->a:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 242
    invoke-direct {p0}, Lcn/nubia/camera/au/j;->s()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    .line 243
    invoke-direct {p0, v2}, Lcn/nubia/camera/au/j;->b(Z)V

    .line 244
    iget-object v0, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setVisibility(I)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/j;->l:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v3, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-ne v0, v3, :cond_1

    .line 247
    iget-object v0, p0, Lcn/nubia/camera/au/j;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/au/j;->s()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 250
    invoke-direct {p0, v0}, Lcn/nubia/camera/au/j;->b(Z)V

    .line 251
    invoke-virtual {p0, v0, v0}, Lcn/nubia/camera/au/j;->a(ZZ)Z

    :goto_0
    return-void
.end method

.method private s()Lcn/nubia/camera/zoom/arc/a;
    .locals 1

    .line 331
    iget-object v0, p0, Lcn/nubia/camera/au/j;->n:Lcn/nubia/camera/au/a;

    invoke-virtual {v0}, Lcn/nubia/camera/au/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    return-object v0
.end method

.method private t()V
    .locals 3

    .line 443
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/au/j;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/au/j;->m:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ba/f;->d(ZLcn/nubia/camera/af/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcn/nubia/camera/au/j;->s:Lcn/nubia/camera/extendedUI/f;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/f;->c()V

    .line 81
    iget-object v0, p0, Lcn/nubia/camera/au/j;->t:Lcn/nubia/camera/at/b;

    invoke-virtual {v0}, Lcn/nubia/camera/at/b;->a()V

    .line 82
    invoke-direct {p0}, Lcn/nubia/camera/au/j;->r()V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 438
    iget-object v0, p0, Lcn/nubia/camera/au/j;->h:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 439
    iget-object v0, p0, Lcn/nubia/camera/au/j;->h:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    return-void
.end method

.method public a(J)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcn/nubia/camera/au/j;->k:Lcom/android/common/ui/a/b;

    invoke-virtual {v0}, Lcom/android/common/ui/a/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/au/j;->k:Lcom/android/common/ui/a/b;

    invoke-virtual {v0}, Lcom/android/common/ui/a/b;->b()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/j;->k:Lcom/android/common/ui/a/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    const/4 p1, 0x0

    invoke-direct {p0, v1, v2, p1}, Lcn/nubia/camera/au/j;->a(JZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/common/ui/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/au/j;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ak/a;->ai()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcn/nubia/camera/au/j;->i:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/au/j;->i:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .line 169
    new-instance v0, Lcom/android/common/ui/a/b;

    invoke-direct {v0, p1}, Lcom/android/common/ui/a/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/camera/au/j;->k:Lcom/android/common/ui/a/b;

    const v0, 0x7f090357

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/au/j;->a:Landroid/view/View;

    const v0, 0x7f0900d3

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/au/j;->c:Landroid/widget/TextView;

    const v0, 0x7f0900d2

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/camera/au/j;->b:Landroid/view/ViewGroup;

    const v0, 0x7f0902f2

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/au/j;->d:Landroid/widget/ImageView;

    const v0, 0x7f0902f7

    .line 174
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/au/j;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0902f9

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iput-object v0, p0, Lcn/nubia/camera/au/j;->f:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v2, 0x0

    .line 177
    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    const v0, 0x7f090079

    .line 178
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/au/j;->i:Landroid/widget/RelativeLayout;

    const v0, 0x7f0902cd

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/NubiaProgressWheel;

    iput-object v0, p0, Lcn/nubia/camera/au/j;->g:Lcom/android/common/ui/NubiaProgressWheel;

    const v0, 0x7f0902f8

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object v0, p0, Lcn/nubia/camera/au/j;->h:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const v0, 0x7f0902ee

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/au/j;->j:Landroid/view/View;

    const v0, 0x7f0902d8

    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/au/j;->u:Landroid/view/View;

    .line 183
    iget-object v2, p0, Lcn/nubia/camera/au/j;->n:Lcn/nubia/camera/au/a;

    iget-object v2, v2, Lcn/nubia/camera/au/a;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901b6

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    iput-object p1, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    .line 186
    iget-object p1, p0, Lcn/nubia/camera/au/j;->l:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-ne p1, v0, :cond_0

    .line 187
    iget-object p1, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setVisibility(I)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/au/j;->l:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    if-ne p1, v0, :cond_1

    .line 189
    iget-object p1, p0, Lcn/nubia/camera/au/j;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/au/j;->t()V

    .line 192
    iget-object p1, p0, Lcn/nubia/camera/au/j;->a:Landroid/view/View;

    iget-object v0, p0, Lcn/nubia/camera/au/j;->l:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcn/nubia/camera/au/j;->l:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;ILandroid/content/res/Resources;)V

    return-void
.end method

.method public a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/au/j;->f:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setOnShutterButtonListener(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    return-void
.end method

.method public a(Lcom/android/preference/PreferenceGroup;)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcn/nubia/camera/au/j;->l:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 257
    iget-object v0, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "pref_star_track_camera_effect_type_key"

    .line 260
    invoke-virtual {p1, v0}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p1

    check-cast p1, Lcom/android/preference/IconListPreference;

    .line 261
    iget-object v0, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    iget-object v1, p0, Lcn/nubia/camera/au/j;->n:Lcn/nubia/camera/au/a;

    invoke-virtual {v1}, Lcn/nubia/camera/au/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->a(Lcom/android/preference/IconListPreference;Landroid/content/Context;)V

    .line 262
    iget-object p1, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    iget-object v0, p0, Lcn/nubia/camera/au/j;->n:Lcn/nubia/camera/au/a;

    invoke-virtual {v0}, Lcn/nubia/camera/au/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setHandleImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object p1, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    new-instance v0, Lcn/nubia/camera/au/j$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/au/j$2;-><init>(Lcn/nubia/camera/au/j;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setDrawerListener(Lcom/android/common/ui/f$a;)V

    .line 275
    iget-object p1, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    iget-object v0, p0, Lcn/nubia/camera/au/j;->n:Lcn/nubia/camera/au/a;

    invoke-virtual {v0}, Lcn/nubia/camera/au/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-static {p1, v0}, Lcn/nubia/camera/ba/a;->a(Landroid/widget/RelativeLayout;Lcn/nubia/camera/a/a;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/au/j;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==startrack==showWaitIndicator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StarTrackViewsManager"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcn/nubia/camera/au/j;->g:Lcom/android/common/ui/NubiaProgressWheel;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 365
    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->b()V

    .line 366
    iget-object p1, p0, Lcn/nubia/camera/au/j;->g:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {p1, v1}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 367
    iget-object p1, p0, Lcn/nubia/camera/au/j;->h:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V

    .line 368
    iget-object p1, p0, Lcn/nubia/camera/au/j;->h:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->b()V

    .line 371
    iget-object p1, p0, Lcn/nubia/camera/au/j;->g:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {p1, v1}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 372
    iget-object p1, p0, Lcn/nubia/camera/au/j;->h:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {p1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->c()V

    .line 373
    iget-object p1, p0, Lcn/nubia/camera/au/j;->h:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    .line 374
    iget-object p1, p0, Lcn/nubia/camera/au/j;->h:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {p1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ZZ)Z
    .locals 3

    .line 285
    iget-object v0, p0, Lcn/nubia/camera/au/j;->l:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    const-string v0, "StarTrackViewsManager"

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 287
    iget-object p1, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1, v2}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 289
    iget-object p1, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->e()V

    .line 290
    invoke-direct {p0}, Lcn/nubia/camera/au/j;->s()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    move p1, v2

    goto :goto_0

    .line 292
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->f()Z

    move-result p1

    .line 293
    invoke-direct {p0}, Lcn/nubia/camera/au/j;->s()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p2

    invoke-virtual {p2, v2, v0}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    .line 295
    :goto_0
    invoke-direct {p0, v2}, Lcn/nubia/camera/au/j;->b(Z)V

    move v2, p1

    goto :goto_1

    .line 297
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setVisibility(I)V

    .line 298
    iget-object p1, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->f()Z

    .line 299
    invoke-direct {p0}, Lcn/nubia/camera/au/j;->s()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 300
    invoke-direct {p0, p1}, Lcn/nubia/camera/au/j;->b(Z)V

    .line 302
    :goto_1
    iget-object p1, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->getVisibility()I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/au/j;->r:I

    :cond_2
    return v2
.end method

.method public b()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcn/nubia/camera/au/j;->s:Lcn/nubia/camera/extendedUI/f;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/f;->d()V

    .line 87
    iget-object v0, p0, Lcn/nubia/camera/au/j;->t:Lcn/nubia/camera/at/b;

    invoke-virtual {v0}, Lcn/nubia/camera/at/b;->b()V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 459
    iget-object v0, p0, Lcn/nubia/camera/au/j;->t:Lcn/nubia/camera/at/b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/at/b;->a(I)V

    return-void
.end method

.method public b(J)V
    .locals 2

    .line 410
    invoke-virtual {p0}, Lcn/nubia/camera/au/j;->l()V

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 412
    iget-object p1, p0, Lcn/nubia/camera/au/j;->s:Lcn/nubia/camera/extendedUI/f;

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/f;->a()V

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/j;->s:Lcn/nubia/camera/extendedUI/f;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/extendedUI/f;->a(J)V

    .line 416
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setVisibility(I)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .line 200
    new-instance v0, Lcn/nubia/camera/extendedUI/f;

    iget-object v1, p0, Lcn/nubia/camera/au/j;->l:Lcn/nubia/camera/ad/a;

    invoke-direct {v0, v1, p1}, Lcn/nubia/camera/extendedUI/f;-><init>(Lcn/nubia/camera/ad/a;Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/camera/au/j;->s:Lcn/nubia/camera/extendedUI/f;

    return-void
.end method

.method public c()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcn/nubia/camera/au/j;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/au/j;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 14

    .line 213
    new-instance v13, Lcn/nubia/camera/at/b;

    iget-object v1, p0, Lcn/nubia/camera/au/j;->l:Lcn/nubia/camera/ad/a;

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v3, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    sget-object v4, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    const v5, 0x7f0802fc

    const v6, 0x7f0802fe

    const v7, 0x7f0802fd

    const v8, 0x7f0802ff

    const v9, 0x7f0e0051

    const v10, 0x7f0e0052

    const v11, 0x7f0f0393

    const v12, 0x7f0f0394

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcn/nubia/camera/at/b;-><init>(Lcn/nubia/camera/ad/a;Landroid/view/ViewGroup;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;IIIIIIII)V

    iput-object v13, p0, Lcn/nubia/camera/au/j;->t:Lcn/nubia/camera/at/b;

    .line 219
    new-instance p1, Lcn/nubia/camera/au/j$1;

    invoke-direct {p1, p0}, Lcn/nubia/camera/au/j$1;-><init>(Lcn/nubia/camera/au/j;)V

    invoke-virtual {v13, p1}, Lcn/nubia/camera/at/b;->a(Lcn/nubia/camera/at/b$a;)V

    .line 232
    iget-object p1, p0, Lcn/nubia/camera/au/j;->n:Lcn/nubia/camera/au/a;

    iget-object v0, p0, Lcn/nubia/camera/au/j;->t:Lcn/nubia/camera/at/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/q/g;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/au/j;->b:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/au/j;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    .line 353
    iget-object p1, p0, Lcn/nubia/camera/au/j;->e:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 354
    iget-object p1, p0, Lcn/nubia/camera/au/j;->d:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 355
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 356
    iget-object p1, p0, Lcn/nubia/camera/au/j;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcn/nubia/camera/au/j;->k:Lcom/android/common/ui/a/b;

    invoke-virtual {v0}, Lcom/android/common/ui/a/b;->e()V

    return-void
.end method

.method public f()Landroid/view/View;
    .locals 1

    .line 196
    iget-object v0, p0, Lcn/nubia/camera/au/j;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcn/nubia/camera/au/j;->t:Lcn/nubia/camera/at/b;

    invoke-virtual {v0}, Lcn/nubia/camera/at/b;->d()Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/au/j;->a(ZZ)Z

    return-void
.end method

.method public i()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcn/nubia/camera/au/j;->l:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 309
    new-instance v0, Lcn/nubia/camera/au/j$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/au/j$3;-><init>(Lcn/nubia/camera/au/j;)V

    iput-object v0, p0, Lcn/nubia/camera/au/j;->p:Lcn/nubia/camera/zoom/arc/a$a;

    .line 320
    invoke-direct {p0}, Lcn/nubia/camera/au/j;->s()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/au/j;->p:Lcn/nubia/camera/zoom/arc/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a$a;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcn/nubia/camera/au/j;->l:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 326
    invoke-direct {p0}, Lcn/nubia/camera/au/j;->s()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/au/j;->p:Lcn/nubia/camera/zoom/arc/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->b(Lcn/nubia/camera/zoom/arc/a$a;)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcn/nubia/camera/au/j;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 340
    invoke-virtual {p0}, Lcn/nubia/camera/au/j;->l()V

    .line 341
    iget-object v0, p0, Lcn/nubia/camera/au/j;->h:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcn/nubia/camera/au/j;->h:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b(Z)V

    .line 343
    iget-object v0, p0, Lcn/nubia/camera/au/j;->g:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcn/nubia/camera/au/j;->g:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->a()V

    .line 346
    iget-object v0, p0, Lcn/nubia/camera/au/j;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 347
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 348
    iget-object v0, p0, Lcn/nubia/camera/au/j;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcn/nubia/camera/au/j;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcn/nubia/camera/au/j;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 383
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/au/j;->t()V

    return-void
.end method

.method public m()Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcn/nubia/camera/au/j;->f:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/au/j;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcn/nubia/camera/au/j;->f:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->performClick()Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcn/nubia/camera/au/j;->s:Lcn/nubia/camera/extendedUI/f;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/f;->a()V

    .line 422
    iget-object v0, p0, Lcn/nubia/camera/au/j;->u:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public o()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcn/nubia/camera/au/j;->u:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public p()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcn/nubia/camera/au/j;->s:Lcn/nubia/camera/extendedUI/f;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/f;->b()V

    .line 433
    iget-object v0, p0, Lcn/nubia/camera/au/j;->u:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget v0, p0, Lcn/nubia/camera/au/j;->r:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/au/j;->q:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->d()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/au/j;->a(ZZ)Z

    return-void
.end method

.method public q()Z
    .locals 3

    .line 447
    iget-object v0, p0, Lcn/nubia/camera/au/j;->l:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/au/j;->g()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcn/nubia/camera/au/j;->t:Lcn/nubia/camera/at/b;

    invoke-virtual {v0}, Lcn/nubia/camera/at/b;->c()V

    return v2

    .line 454
    :cond_1
    invoke-virtual {p0, v2, v1}, Lcn/nubia/camera/au/j;->a(ZZ)Z

    move-result v0

    return v0
.end method
