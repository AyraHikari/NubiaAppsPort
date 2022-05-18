.class public Lcn/nubia/camera/at/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/camera/q/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/at/b$a;
    }
.end annotation


# static fields
.field public static a:I = 0xbb8

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# instance fields
.field private A:Lcn/nubia/camera/at/b$a;

.field private final d:Lcn/nubia/camera/ad/a;

.field private final e:Landroid/view/ViewGroup;

.field private final f:Lcn/nubia/camera/af/a;

.field private final g:Lcn/nubia/camera/af/a;

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:Landroid/os/Handler;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Lcom/android/common/ui/RotateImageView;

.field private t:Landroid/widget/VideoView;

.field private u:Landroid/widget/VideoView;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/nubia/camera/ad/a;Landroid/view/ViewGroup;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;IIIIIIII)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcn/nubia/camera/at/b;->v:Z

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Lcn/nubia/camera/at/b;->w:Z

    .line 54
    iput-boolean v1, p0, Lcn/nubia/camera/at/b;->x:Z

    .line 55
    iput-boolean v1, p0, Lcn/nubia/camera/at/b;->y:Z

    .line 56
    iput-boolean v0, p0, Lcn/nubia/camera/at/b;->z:Z

    .line 83
    iput-object p1, p0, Lcn/nubia/camera/at/b;->d:Lcn/nubia/camera/ad/a;

    .line 84
    iput-object p2, p0, Lcn/nubia/camera/at/b;->e:Landroid/view/ViewGroup;

    .line 85
    iput-object p3, p0, Lcn/nubia/camera/at/b;->f:Lcn/nubia/camera/af/a;

    .line 86
    iput-object p4, p0, Lcn/nubia/camera/at/b;->g:Lcn/nubia/camera/af/a;

    .line 87
    iput p5, p0, Lcn/nubia/camera/at/b;->h:I

    .line 88
    iput p6, p0, Lcn/nubia/camera/at/b;->i:I

    .line 89
    iput p7, p0, Lcn/nubia/camera/at/b;->j:I

    .line 90
    iput p8, p0, Lcn/nubia/camera/at/b;->k:I

    .line 91
    iput p9, p0, Lcn/nubia/camera/at/b;->l:I

    .line 92
    iput p10, p0, Lcn/nubia/camera/at/b;->m:I

    .line 93
    iput p11, p0, Lcn/nubia/camera/at/b;->n:I

    .line 94
    iput p12, p0, Lcn/nubia/camera/at/b;->o:I

    .line 96
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/at/b;->p:Landroid/os/Handler;

    .line 97
    invoke-direct {p0}, Lcn/nubia/camera/at/b;->k()V

    .line 98
    invoke-direct {p0}, Lcn/nubia/camera/at/b;->e()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/at/b;)Lcom/android/common/ui/RotateImageView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/camera/at/b;->s:Lcom/android/common/ui/RotateImageView;

    return-object p0
.end method

.method private a(J)V
    .locals 2

    .line 315
    iget-boolean v0, p0, Lcn/nubia/camera/at/b;->v:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/camera/at/b;->w:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/at/b;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcn/nubia/camera/at/b;->p:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/camera/at/b$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/at/b$2;-><init>(Lcn/nubia/camera/at/b;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcn/nubia/camera/af/a;)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcn/nubia/camera/at/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 380
    invoke-direct {p0, v0}, Lcn/nubia/camera/at/b;->b(I)V

    .line 381
    iget-object v0, p0, Lcn/nubia/camera/at/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/at/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/at/b;J)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/at/b;->a(J)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/at/b;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcn/nubia/camera/at/b;->w:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/at/b;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/camera/at/b;->r:Landroid/view/View;

    return-object p0
.end method

.method private b(I)V
    .locals 0

    .line 403
    sput p1, Lcn/nubia/camera/at/b;->a:I

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/at/b;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcn/nubia/camera/at/b;->v:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/at/b;)Landroid/widget/VideoView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/camera/at/b;->t:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/at/b;)Landroid/widget/VideoView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/camera/at/b;->u:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/at/b;)Lcn/nubia/camera/at/b$a;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/camera/at/b;->A:Lcn/nubia/camera/at/b$a;

    return-object p0
.end method

.method private e()V
    .locals 8

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/at/b;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c006b

    const/4 v2, 0x0

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/at/b;->q:Landroid/view/View;

    .line 104
    iget-object v1, p0, Lcn/nubia/camera/at/b;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcn/nubia/camera/at/b;->q:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/camera/at/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 107
    iget-object v0, p0, Lcn/nubia/camera/at/b;->q:Landroid/view/View;

    const v1, 0x7f090200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/at/b;->r:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/at/b;->q:Landroid/view/View;

    const v1, 0x7f09016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/at/b;->s:Lcom/android/common/ui/RotateImageView;

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/at/b;->q:Landroid/view/View;

    const v1, 0x7f0901fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcn/nubia/camera/at/b;->t:Landroid/widget/VideoView;

    .line 110
    iget-object v0, p0, Lcn/nubia/camera/at/b;->q:Landroid/view/View;

    const v1, 0x7f0901fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcn/nubia/camera/at/b;->u:Landroid/widget/VideoView;

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/at/b;->q:Landroid/view/View;

    const v1, 0x7f0901fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 112
    iget-object v1, p0, Lcn/nubia/camera/at/b;->q:Landroid/view/View;

    const v2, 0x7f0901ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 113
    iget-object v2, p0, Lcn/nubia/camera/at/b;->q:Landroid/view/View;

    const v3, 0x7f090201

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 114
    iget-object v3, p0, Lcn/nubia/camera/at/b;->q:Landroid/view/View;

    const v4, 0x7f090202

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 116
    iget v4, p0, Lcn/nubia/camera/at/b;->n:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget v2, p0, Lcn/nubia/camera/at/b;->o:I

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v2, p0, Lcn/nubia/camera/at/b;->s:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v2, p0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v2, p0, Lcn/nubia/camera/at/b;->t:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v2, p0, Lcn/nubia/camera/at/b;->u:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v2, p0, Lcn/nubia/camera/at/b;->t:Landroid/widget/VideoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 122
    iget-object v2, p0, Lcn/nubia/camera/at/b;->u:Landroid/widget/VideoView;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 123
    iget-object v2, p0, Lcn/nubia/camera/at/b;->t:Landroid/widget/VideoView;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setAudioFocusRequest(I)V

    .line 124
    iget-object v2, p0, Lcn/nubia/camera/at/b;->u:Landroid/widget/VideoView;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setAudioFocusRequest(I)V

    .line 126
    iget-object v2, p0, Lcn/nubia/camera/at/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/camera/at/b;->f:Lcn/nubia/camera/af/a;

    const-string v5, "/"

    const-string v6, "android.resource://"

    const v7, 0x7f0801f1

    if-ne v2, v4, :cond_1

    .line 127
    iget-object v2, p0, Lcn/nubia/camera/at/b;->s:Lcom/android/common/ui/RotateImageView;

    iget v4, p0, Lcn/nubia/camera/at/b;->h:I

    invoke-virtual {v2, v4}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 128
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 129
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 131
    iget v0, p0, Lcn/nubia/camera/at/b;->l:I

    if-lez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcn/nubia/camera/at/b;->t:Landroid/widget/VideoView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/at/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/at/b;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/at/b;->t:Landroid/widget/VideoView;

    iget v1, p0, Lcn/nubia/camera/at/b;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundResource(I)V

    .line 136
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/at/b;->u:Landroid/widget/VideoView;

    iget v1, p0, Lcn/nubia/camera/at/b;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundResource(I)V

    goto :goto_1

    .line 138
    :cond_1
    iget-object v2, p0, Lcn/nubia/camera/at/b;->s:Lcom/android/common/ui/RotateImageView;

    iget v4, p0, Lcn/nubia/camera/at/b;->i:I

    invoke-virtual {v2, v4}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 139
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 140
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/at/b;->t:Landroid/widget/VideoView;

    iget v1, p0, Lcn/nubia/camera/at/b;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundResource(I)V

    .line 143
    iget v0, p0, Lcn/nubia/camera/at/b;->m:I

    if-lez v0, :cond_2

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/at/b;->u:Landroid/widget/VideoView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/at/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/at/b;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/at/b;->u:Landroid/widget/VideoView;

    iget v1, p0, Lcn/nubia/camera/at/b;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method private f()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcn/nubia/camera/at/b;->r:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcn/nubia/camera/at/b;->s:Lcom/android/common/ui/RotateImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/at/b;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcn/nubia/camera/at/b;->x:Z

    return p0
.end method

.method private g()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcn/nubia/camera/at/b;->r:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcn/nubia/camera/at/b;->s:Lcom/android/common/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    return-void
.end method

.method private h()V
    .locals 9

    .line 259
    iget-boolean v0, p0, Lcn/nubia/camera/at/b;->v:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/camera/at/b;->w:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 263
    :cond_0
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/at/b;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/at/b;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    .line 264
    iget-object v1, p0, Lcn/nubia/camera/at/b;->r:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v0, 0x0

    const/4 v6, 0x1

    aput v0, v4, v6

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 265
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x1f4

    .line 266
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 268
    iget-object v4, p0, Lcn/nubia/camera/at/b;->s:Lcom/android/common/ui/RotateImageView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v3, [F

    fill-array-data v8, :array_0

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 269
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 270
    invoke-virtual {v4, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 272
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v3, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v4, v2, v6

    .line 273
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 274
    new-instance v0, Lcn/nubia/camera/at/b$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/at/b$1;-><init>(Lcn/nubia/camera/at/b;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 311
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private k()V
    .locals 4

    .line 389
    iget-object v0, p0, Lcn/nubia/camera/at/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/af/a;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcn/nubia/camera/at/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/af/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 392
    sget-object v2, Lcn/nubia/camera/at/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Lcn/nubia/camera/at/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-int/2addr v2, v3

    .line 393
    iput-boolean v2, p0, Lcn/nubia/camera/at/b;->v:Z

    .line 395
    sput-object v0, Lcn/nubia/camera/at/b;->b:Ljava/lang/String;

    .line 396
    sput-object v1, Lcn/nubia/camera/at/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcn/nubia/camera/at/b;->x:Z

    .line 153
    iget-boolean v0, p0, Lcn/nubia/camera/at/b;->y:Z

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/at/b;->v:Z

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0}, Lcn/nubia/camera/at/b;->f()V

    .line 158
    sget v0, Lcn/nubia/camera/at/b;->a:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/at/b;->a(J)V

    const/16 v0, 0xbb8

    .line 159
    invoke-direct {p0, v0}, Lcn/nubia/camera/at/b;->b(I)V

    .line 160
    iget-object v0, p0, Lcn/nubia/camera/at/b;->t:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 161
    iget-object v0, p0, Lcn/nubia/camera/at/b;->u:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/at/b;->g()V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 177
    :goto_0
    iput-boolean p1, p0, Lcn/nubia/camera/at/b;->y:Z

    if-eqz p1, :cond_1

    .line 179
    iget-object p1, p0, Lcn/nubia/camera/at/b;->p:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_1

    .line 181
    :cond_1
    iget-boolean p1, p0, Lcn/nubia/camera/at/b;->v:Z

    if-eqz p1, :cond_2

    .line 182
    sget p1, Lcn/nubia/camera/at/b;->a:I

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/at/b;->a(J)V

    .line 183
    iget-object p1, p0, Lcn/nubia/camera/at/b;->t:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 184
    iget-object p1, p0, Lcn/nubia/camera/at/b;->u:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcn/nubia/camera/at/b$a;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcn/nubia/camera/at/b;->A:Lcn/nubia/camera/at/b$a;

    return-void
.end method

.method public a(ZJJ)V
    .locals 0

    .line 227
    iget-object p1, p0, Lcn/nubia/camera/at/b;->q:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcn/nubia/camera/at/b;->x:Z

    .line 169
    iget-object v0, p0, Lcn/nubia/camera/at/b;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public b(ZJJ)V
    .locals 0

    .line 222
    iget-object p1, p0, Lcn/nubia/camera/at/b;->q:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 173
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/at/b;->a(J)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcn/nubia/camera/at/b;->v:Z

    return v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcn/nubia/camera/at/b;->z:Z

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcn/nubia/camera/at/b;->z:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 191
    iget-boolean v0, p0, Lcn/nubia/camera/at/b;->z:Z

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 207
    :sswitch_0
    iget-object v0, p0, Lcn/nubia/camera/at/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    iget-object v4, p0, Lcn/nubia/camera/at/b;->g:Lcn/nubia/camera/af/a;

    if-ne v0, v4, :cond_1

    .line 208
    invoke-direct {p0, v1, v2}, Lcn/nubia/camera/at/b;->a(J)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/at/b;->p:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcn/nubia/camera/at/b;->g:Lcn/nubia/camera/af/a;

    invoke-direct {p0, v0}, Lcn/nubia/camera/at/b;->a(Lcn/nubia/camera/af/a;)V

    goto :goto_0

    .line 199
    :sswitch_1
    iget-object v0, p0, Lcn/nubia/camera/at/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    iget-object v4, p0, Lcn/nubia/camera/at/b;->f:Lcn/nubia/camera/af/a;

    if-ne v0, v4, :cond_2

    .line 200
    invoke-direct {p0, v1, v2}, Lcn/nubia/camera/at/b;->a(J)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/at/b;->p:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcn/nubia/camera/at/b;->f:Lcn/nubia/camera/af/a;

    invoke-direct {p0, v0}, Lcn/nubia/camera/at/b;->a(Lcn/nubia/camera/af/a;)V

    goto :goto_0

    .line 196
    :sswitch_2
    invoke-direct {p0}, Lcn/nubia/camera/at/b;->h()V

    .line 215
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09016f

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901fc

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901fd

    if-ne v0, v1, :cond_4

    .line 216
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/at/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/af/a;I)V

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09016f -> :sswitch_2
        0x7f0901fc -> :sswitch_1
        0x7f0901fd -> :sswitch_0
    .end sparse-switch
.end method
