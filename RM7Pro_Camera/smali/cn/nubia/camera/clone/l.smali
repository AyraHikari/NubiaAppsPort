.class public Lcn/nubia/camera/clone/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/clone/l$b;,
        Lcn/nubia/camera/clone/l$a;
    }
.end annotation


# static fields
.field private static al:I = 0x2

.field private static am:I = 0xc8


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/view/View;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/widget/RelativeLayout;

.field private F:Landroid/widget/RelativeLayout;

.field private G:Landroid/widget/RelativeLayout;

.field private H:Landroid/widget/RelativeLayout;

.field private I:Landroid/widget/RelativeLayout;

.field private J:[Landroid/view/View;

.field private K:Landroid/widget/ImageView;

.field private L:Landroid/widget/ImageView;

.field private M:Landroid/widget/ImageView;

.field private N:Landroid/widget/ImageView;

.field private O:Landroid/widget/ImageView;

.field private P:[Landroid/view/View;

.field private Q:Landroid/widget/ImageView;

.field private R:Landroid/widget/ImageView;

.field private S:Landroid/widget/ImageView;

.field private T:Landroid/widget/ImageView;

.field private U:Landroid/widget/ImageView;

.field private V:[Landroid/view/View;

.field private W:[Landroid/graphics/Bitmap;

.field private X:Landroid/graphics/Bitmap;

.field private Y:Z

.field private Z:Z

.field private a:I

.field private aA:Z

.field private aB:Landroid/widget/Toast;

.field private aC:Lcom/android/common/ui/RotateLayout;

.field private aD:Landroid/widget/TextView;

.field private aE:Z

.field private final aF:Ljava/lang/Object;

.field private aG:Landroid/os/Handler;

.field private aH:I

.field private aI:Landroid/animation/ObjectAnimator;

.field private aa:Landroid/graphics/Canvas;

.field private ab:Landroid/graphics/Paint;

.field private ac:Landroid/graphics/Canvas;

.field private ad:Landroid/graphics/Paint;

.field private ae:F

.field private af:F

.field private ag:Landroid/graphics/Bitmap;

.field private ah:Landroid/graphics/Bitmap;

.field private ai:I

.field private aj:I

.field private ak:I

.field private an:Landroid/widget/ImageView;

.field private ao:Landroid/graphics/Bitmap;

.field private ap:Landroid/graphics/Matrix;

.field private aq:Z

.field private ar:Landroid/app/Dialog;

.field private as:Z

.field private at:Z

.field private au:I

.field private av:Lcn/nubia/camera/clone/ui/ScaleLayout;

.field private aw:J

.field private ax:Z

.field private ay:Z

.field private az:Z

.field private b:Landroid/app/Activity;

.field private c:Lcn/nubia/camera/ad/a;

.field private d:Lcn/nubia/camera/clone/a;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcn/nubia/camera/clone/l$a;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private m:Lcom/android/common/ui/RotateImageView;

.field private n:Lcom/android/common/ui/RotateImageView;

.field private o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

.field private p:Lcom/android/common/ui/RotateTextImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/graphics/Bitmap;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/graphics/Bitmap;

.field private w:Lcn/nubia/camera/clone/m;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/nubia/camera/ad/a;Landroid/view/View;Lcn/nubia/camera/clone/l$a;Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V
    .locals 4

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcn/nubia/camera/clone/l;->a:I

    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->b:Landroid/app/Activity;

    .line 75
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->c:Lcn/nubia/camera/ad/a;

    .line 76
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    .line 79
    iput v0, p0, Lcn/nubia/camera/clone/l;->e:I

    .line 80
    iput v0, p0, Lcn/nubia/camera/clone/l;->f:I

    .line 81
    iput v0, p0, Lcn/nubia/camera/clone/l;->g:I

    .line 83
    iput v0, p0, Lcn/nubia/camera/clone/l;->h:I

    .line 84
    iput v0, p0, Lcn/nubia/camera/clone/l;->i:I

    .line 86
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->j:Lcn/nubia/camera/clone/l$a;

    .line 88
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->k:Landroid/widget/RelativeLayout;

    .line 89
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 90
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->m:Lcom/android/common/ui/RotateImageView;

    .line 91
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->n:Lcom/android/common/ui/RotateImageView;

    .line 92
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 93
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->p:Lcom/android/common/ui/RotateTextImageView;

    .line 95
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->q:Landroid/widget/ImageView;

    .line 96
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->r:Landroid/widget/TextView;

    .line 97
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->s:Landroid/widget/TextView;

    .line 98
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->t:Landroid/graphics/Bitmap;

    .line 99
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->u:Landroid/widget/ImageView;

    .line 100
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->v:Landroid/graphics/Bitmap;

    .line 102
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->w:Lcn/nubia/camera/clone/m;

    .line 103
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->x:Landroid/widget/RelativeLayout;

    .line 104
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->y:Landroid/widget/ImageView;

    .line 105
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->z:Landroid/widget/ImageView;

    .line 106
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->A:Landroid/widget/ImageView;

    .line 107
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->B:Landroid/view/View;

    .line 108
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->C:Landroid/view/View;

    .line 109
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->D:Landroid/widget/LinearLayout;

    .line 110
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->E:Landroid/widget/RelativeLayout;

    .line 111
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->F:Landroid/widget/RelativeLayout;

    .line 112
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->G:Landroid/widget/RelativeLayout;

    .line 113
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->H:Landroid/widget/RelativeLayout;

    .line 114
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->I:Landroid/widget/RelativeLayout;

    const/4 v2, 0x5

    new-array v3, v2, [Landroid/view/View;

    .line 115
    iput-object v3, p0, Lcn/nubia/camera/clone/l;->J:[Landroid/view/View;

    .line 116
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->K:Landroid/widget/ImageView;

    .line 117
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->L:Landroid/widget/ImageView;

    .line 118
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->M:Landroid/widget/ImageView;

    .line 119
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->N:Landroid/widget/ImageView;

    .line 120
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->O:Landroid/widget/ImageView;

    new-array v3, v2, [Landroid/view/View;

    .line 121
    iput-object v3, p0, Lcn/nubia/camera/clone/l;->P:[Landroid/view/View;

    .line 122
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->Q:Landroid/widget/ImageView;

    .line 123
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->R:Landroid/widget/ImageView;

    .line 124
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->S:Landroid/widget/ImageView;

    .line 125
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->T:Landroid/widget/ImageView;

    .line 126
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->U:Landroid/widget/ImageView;

    new-array v2, v2, [Landroid/view/View;

    .line 127
    iput-object v2, p0, Lcn/nubia/camera/clone/l;->V:[Landroid/view/View;

    .line 129
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->W:[Landroid/graphics/Bitmap;

    .line 130
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->X:Landroid/graphics/Bitmap;

    .line 131
    iput-boolean v0, p0, Lcn/nubia/camera/clone/l;->Y:Z

    .line 132
    iput-boolean v0, p0, Lcn/nubia/camera/clone/l;->Z:Z

    .line 133
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->aa:Landroid/graphics/Canvas;

    .line 134
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->ab:Landroid/graphics/Paint;

    .line 135
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->ac:Landroid/graphics/Canvas;

    .line 136
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->ad:Landroid/graphics/Paint;

    const/4 v2, 0x0

    .line 137
    iput v2, p0, Lcn/nubia/camera/clone/l;->ae:F

    .line 138
    iput v2, p0, Lcn/nubia/camera/clone/l;->af:F

    .line 139
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->ag:Landroid/graphics/Bitmap;

    .line 140
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->ah:Landroid/graphics/Bitmap;

    .line 141
    iput v0, p0, Lcn/nubia/camera/clone/l;->ai:I

    .line 142
    iput v0, p0, Lcn/nubia/camera/clone/l;->aj:I

    .line 143
    iput v0, p0, Lcn/nubia/camera/clone/l;->ak:I

    .line 147
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->an:Landroid/widget/ImageView;

    .line 148
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->ao:Landroid/graphics/Bitmap;

    .line 149
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->ap:Landroid/graphics/Matrix;

    .line 150
    iput-boolean v0, p0, Lcn/nubia/camera/clone/l;->aq:Z

    .line 152
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->ar:Landroid/app/Dialog;

    .line 154
    iput-boolean v0, p0, Lcn/nubia/camera/clone/l;->as:Z

    .line 155
    iput-boolean v0, p0, Lcn/nubia/camera/clone/l;->at:Z

    .line 160
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->av:Lcn/nubia/camera/clone/ui/ScaleLayout;

    const-wide/16 v2, 0x0

    .line 161
    iput-wide v2, p0, Lcn/nubia/camera/clone/l;->aw:J

    .line 162
    iput-boolean v0, p0, Lcn/nubia/camera/clone/l;->ax:Z

    .line 163
    iput-boolean v0, p0, Lcn/nubia/camera/clone/l;->ay:Z

    .line 170
    iput-boolean v0, p0, Lcn/nubia/camera/clone/l;->az:Z

    .line 172
    iput-boolean v0, p0, Lcn/nubia/camera/clone/l;->aA:Z

    .line 173
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->aB:Landroid/widget/Toast;

    .line 174
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->aC:Lcom/android/common/ui/RotateLayout;

    .line 175
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->aD:Landroid/widget/TextView;

    .line 177
    iput-boolean v0, p0, Lcn/nubia/camera/clone/l;->aE:Z

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->aF:Ljava/lang/Object;

    .line 181
    new-instance v0, Lcn/nubia/camera/clone/l$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/clone/l$1;-><init>(Lcn/nubia/camera/clone/l;)V

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->aG:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 1360
    iput v0, p0, Lcn/nubia/camera/clone/l;->aH:I

    .line 347
    iput-object p3, p0, Lcn/nubia/camera/clone/l;->j:Lcn/nubia/camera/clone/l$a;

    .line 348
    iput-object p1, p0, Lcn/nubia/camera/clone/l;->c:Lcn/nubia/camera/ad/a;

    .line 349
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/clone/l;->b:Landroid/app/Activity;

    .line 350
    new-instance p1, Lcn/nubia/camera/clone/a;

    invoke-direct {p1}, Lcn/nubia/camera/clone/a;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    .line 351
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->u()V

    .line 352
    invoke-direct {p0, p2}, Lcn/nubia/camera/clone/l;->f(Landroid/view/View;)V

    .line 353
    invoke-direct {p0, p2}, Lcn/nubia/camera/clone/l;->c(Landroid/view/View;)V

    .line 354
    invoke-direct {p0, p2, p4}, Lcn/nubia/camera/clone/l;->a(Landroid/view/View;Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    return-void
.end method

.method static synthetic A(Lcn/nubia/camera/clone/l;)F
    .locals 0

    .line 56
    iget p0, p0, Lcn/nubia/camera/clone/l;->af:F

    return p0
.end method

.method private A()V
    .locals 3

    const-string v0, "CloneViewManager"

    const-string v1, "gotoShowView"

    .line 770
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->C()V

    .line 772
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->r:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->q:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 775
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->q:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/camera/clone/l;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 776
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->n:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->m:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->p:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->setVisibility(I)V

    .line 779
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->p:Lcom/android/common/ui/RotateTextImageView;

    const v1, 0x7f0800d6

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->setImageResource(I)V

    .line 780
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->p:Lcom/android/common/ui/RotateTextImageView;

    const v1, 0x7f0f0040

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->setText(I)V

    .line 781
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->G()V

    const/4 v0, 0x1

    .line 782
    iput v0, p0, Lcn/nubia/camera/clone/l;->a:I

    return-void
.end method

.method static synthetic B(Lcn/nubia/camera/clone/l;)Landroid/graphics/Paint;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/camera/clone/l;->ad:Landroid/graphics/Paint;

    return-object p0
.end method

.method private B()V
    .locals 3

    const-string v0, "CloneViewManager"

    const-string v1, "gotoEditView"

    .line 786
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->C()V

    .line 788
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->r:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 789
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->s:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 790
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->n:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->m:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->p:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateTextImageView;->setVisibility(I)V

    .line 794
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->p:Lcom/android/common/ui/RotateTextImageView;

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->setImageResource(I)V

    .line 795
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->p:Lcom/android/common/ui/RotateTextImageView;

    const v1, 0x7f0f0041

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->setText(I)V

    .line 796
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->E()V

    .line 797
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->F()V

    const/4 v0, 0x2

    .line 798
    iput v0, p0, Lcn/nubia/camera/clone/l;->a:I

    return-void
.end method

.method static synthetic C(Lcn/nubia/camera/clone/l;)Landroid/graphics/Canvas;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/camera/clone/l;->ac:Landroid/graphics/Canvas;

    return-object p0
.end method

.method private C()V
    .locals 2

    const-string v0, "CloneViewManager"

    const-string v1, "disableShutterButton"

    .line 802
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 804
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setEnabled(Z)V

    .line 805
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setClickable(Z)V

    return-void
.end method

.method static synthetic D(Lcn/nubia/camera/clone/l;)Landroid/app/Activity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/camera/clone/l;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private D()V
    .locals 2

    const-string v0, "CloneViewManager"

    const-string v1, "enableShutterButton"

    .line 809
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 811
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setEnabled(Z)V

    .line 812
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setClickable(Z)V

    return-void
.end method

.method static synthetic E(Lcn/nubia/camera/clone/l;)Landroid/graphics/Bitmap;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/camera/clone/l;->ag:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private E()V
    .locals 11

    .line 816
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->W:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 817
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/a;->a()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->W:[Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 818
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->W:[Landroid/graphics/Bitmap;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 819
    iget v2, p0, Lcn/nubia/camera/clone/l;->h:I

    iget v3, p0, Lcn/nubia/camera/clone/l;->i:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 821
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->ag:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 822
    iget v1, p0, Lcn/nubia/camera/clone/l;->h:I

    iget v2, p0, Lcn/nubia/camera/clone/l;->i:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/clone/l;->ag:Landroid/graphics/Bitmap;

    .line 825
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    iget-object v2, p0, Lcn/nubia/camera/clone/l;->W:[Landroid/graphics/Bitmap;

    array-length v3, v2

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v0

    invoke-virtual {v1, v3, v2}, Lcn/nubia/camera/clone/a;->b(ILandroid/graphics/Bitmap;)V

    .line 827
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 828
    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    const/high16 v1, 0x3e800000    # 0.25f

    .line 829
    invoke-virtual {v9, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 830
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->W:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 831
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->W:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 832
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 833
    iget-object v3, p0, Lcn/nubia/camera/clone/l;->W:[Landroid/graphics/Bitmap;

    aget-object v4, v3, v0

    sub-int/2addr v1, v8

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v2, v8

    div-int/lit8 v6, v2, 0x2

    const/4 v10, 0x1

    move v7, v8

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic F(Lcn/nubia/camera/clone/l;)Landroid/widget/ImageView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/camera/clone/l;->z:Landroid/widget/ImageView;

    return-object p0
.end method

.method private F()V
    .locals 4

    .line 844
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->D:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v1

    .line 845
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->P:[Landroid/view/View;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 846
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    invoke-virtual {v2}, Lcn/nubia/camera/clone/a;->a()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 847
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->J:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 848
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->P:[Landroid/view/View;

    aget-object v2, v2, v0

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/camera/clone/l;->W:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 850
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->J:[Landroid/view/View;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 853
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 854
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 856
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 857
    iget v0, p0, Lcn/nubia/camera/clone/l;->ai:I

    invoke-direct {p0, v0}, Lcn/nubia/camera/clone/l;->c(I)V

    return-void
.end method

.method static synthetic G(Lcn/nubia/camera/clone/l;)Landroid/widget/ImageView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/camera/clone/l;->A:Landroid/widget/ImageView;

    return-object p0
.end method

.method private G()V
    .locals 2

    .line 864
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->D:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 865
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 866
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 867
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 868
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 869
    iput-boolean v0, p0, Lcn/nubia/camera/clone/l;->Y:Z

    return-void
.end method

.method static synthetic H(Lcn/nubia/camera/clone/l;)Landroid/graphics/Paint;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/camera/clone/l;->ab:Landroid/graphics/Paint;

    return-object p0
.end method

.method private H()V
    .locals 2

    const-string v0, "CloneViewManager"

    const-string v1, "handleComposition"

    .line 990
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->j:Lcn/nubia/camera/clone/l$a;

    invoke-interface {v0}, Lcn/nubia/camera/clone/l$a;->j()V

    .line 992
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->C()V

    .line 993
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->s()V

    .line 994
    new-instance v0, Lcn/nubia/camera/clone/l$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/clone/l$4;-><init>(Lcn/nubia/camera/clone/l;)V

    .line 1014
    invoke-virtual {v0}, Lcn/nubia/camera/clone/l$4;->start()V

    return-void
.end method

.method private I()Landroid/graphics/Bitmap;
    .locals 10

    .line 1018
    iget v0, p0, Lcn/nubia/camera/clone/l;->h:I

    iget v1, p0, Lcn/nubia/camera/clone/l;->i:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1020
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1021
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1022
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1023
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->W:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcn/nubia/camera/clone/l;->ai:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1024
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->ag:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1025
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->ah:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1027
    sget v0, Lcn/nubia/camera/clone/l;->am:I

    div-int/lit8 v0, v0, 0x2

    .line 1028
    iget v1, p0, Lcn/nubia/camera/clone/l;->ae:F

    int-to-float v2, v0

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1029
    iget v4, p0, Lcn/nubia/camera/clone/l;->af:F

    sub-float/2addr v4, v2

    float-to-int v2, v4

    .line 1030
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    if-ge v4, v0, :cond_0

    .line 1031
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v4, Lcn/nubia/camera/clone/l;->am:I

    sub-int/2addr v1, v4

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v1

    .line 1035
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_2

    .line 1036
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget v1, Lcn/nubia/camera/clone/l;->am:I

    sub-int/2addr v0, v1

    move v5, v0

    goto :goto_2

    :cond_2
    if-gez v2, :cond_3

    goto :goto_2

    :cond_3
    move v5, v2

    .line 1040
    :goto_2
    sget v7, Lcn/nubia/camera/clone/l;->am:I

    iget-object v8, p0, Lcn/nubia/camera/clone/l;->ap:Landroid/graphics/Matrix;

    const/4 v9, 0x1

    move v6, v7

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic I(Lcn/nubia/camera/clone/l;)Landroid/graphics/Canvas;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/camera/clone/l;->aa:Landroid/graphics/Canvas;

    return-object p0
.end method

.method static synthetic J(Lcn/nubia/camera/clone/l;)Landroid/graphics/Bitmap;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/camera/clone/l;->ah:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private J()V
    .locals 2

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showShaderView mIsUseShader = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/clone/l;->aq:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneViewManager"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-boolean v0, p0, Lcn/nubia/camera/clone/l;->aq:Z

    if-nez v0, :cond_0

    return-void

    .line 1074
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->I()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->ao:Landroid/graphics/Bitmap;

    .line 1075
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->an:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1076
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->an:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private K()V
    .locals 2

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideShaderView  mIsUseShader = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/clone/l;->aq:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneViewManager"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-boolean v0, p0, Lcn/nubia/camera/clone/l;->aq:Z

    if-nez v0, :cond_0

    return-void

    .line 1083
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->an:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic K(Lcn/nubia/camera/clone/l;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->O()V

    return-void
.end method

.method private L()V
    .locals 2

    const-string v0, "CloneViewManager"

    const-string v1, "showEditButtonsLayout"

    .line 1087
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->B:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1089
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1090
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1091
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic L(Lcn/nubia/camera/clone/l;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->N()V

    return-void
.end method

.method private M()V
    .locals 2

    const-string v0, "CloneViewManager"

    const-string v1, "hideEditButtonsLayout"

    .line 1095
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->B:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1098
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1099
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic M(Lcn/nubia/camera/clone/l;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->v()V

    return-void
.end method

.method private N()V
    .locals 3

    .line 1103
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/a;->a()I

    move-result v1

    iget v2, p0, Lcn/nubia/camera/clone/l;->ai:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcn/nubia/camera/clone/l;->ag:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/clone/a;->a(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic N(Lcn/nubia/camera/clone/l;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->K()V

    return-void
.end method

.method private O()V
    .locals 4

    .line 1107
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/a;->a()I

    move-result v1

    iget v2, p0, Lcn/nubia/camera/clone/l;->ai:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcn/nubia/camera/clone/l;->ah:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/nubia/camera/clone/l;->ag:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/clone/a;->a(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1109
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->z:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcn/nubia/camera/clone/l;->b:Landroid/app/Activity;

    .line 1110
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/clone/l;->ag:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1109
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1111
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->ab:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1112
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->aa:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/nubia/camera/clone/l;->ab:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic O(Lcn/nubia/camera/clone/l;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->L()V

    return-void
.end method

.method private P()V
    .locals 2

    .line 1342
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->aC:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 1343
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 1345
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->V()V

    .line 1346
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->R()V

    return-void
.end method

.method static synthetic P(Lcn/nubia/camera/clone/l;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcn/nubia/camera/clone/l;->ay:Z

    return p0
.end method

.method static synthetic Q(Lcn/nubia/camera/clone/l;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/camera/clone/l;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method private Q()V
    .locals 6

    .line 1350
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/clone/l;->b:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0f003d

    invoke-virtual {v1, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/clone/l;->b:Landroid/app/Activity;

    const v4, 0x7f060064

    .line 1351
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getColor(I)I

    move-result v3

    .line 1350
    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;II)V

    return-void
.end method

.method private R()V
    .locals 1

    .line 1355
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->aB:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1356
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method static synthetic R(Lcn/nubia/camera/clone/l;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->P()V

    return-void
.end method

.method private S()V
    .locals 4

    .line 1419
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->aI:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x320

    .line 1423
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->aD:Landroid/widget/TextView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/clone/l;->aI:Landroid/animation/ObjectAnimator;

    .line 1424
    new-instance v2, Lcn/nubia/camera/j/e;

    int-to-float v0, v0

    invoke-direct {v2, v0}, Lcn/nubia/camera/j/e;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1425
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->aI:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private T()V
    .locals 1

    .line 1429
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->V()V

    const/4 v0, 0x0

    .line 1430
    iput-object v0, p0, Lcn/nubia/camera/clone/l;->aI:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private U()V
    .locals 1

    .line 1434
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->S()V

    .line 1435
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->V()V

    .line 1436
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->aI:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private V()V
    .locals 1

    .line 1440
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->aI:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1441
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->aI:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1444
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->aI:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/clone/l;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcn/nubia/camera/clone/l;->ae:F

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/clone/l;J)J
    .locals 0

    .line 56
    iput-wide p1, p0, Lcn/nubia/camera/clone/l;->aw:J

    return-wide p1
.end method

.method static synthetic a(Lcn/nubia/camera/clone/l;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 56
    iput-object p1, p0, Lcn/nubia/camera/clone/l;->t:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/clone/l;Lcn/nubia/camera/clone/a;)Lcn/nubia/camera/clone/a;
    .locals 0

    .line 56
    iput-object p1, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    return-object p1
.end method

.method private a(Landroid/view/View;Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V
    .locals 1

    const v0, 0x7f0900b9

    .line 372
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->k:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900c1

    .line 374
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const v0, 0x7f0900c2

    .line 376
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const v0, 0x7f0900c4

    .line 377
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->m:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f0900bf

    .line 378
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateTextImageView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->p:Lcom/android/common/ui/RotateTextImageView;

    const v0, 0x7f0900ba

    .line 380
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateImageView;

    iput-object p1, p0, Lcn/nubia/camera/clone/l;->n:Lcom/android/common/ui/RotateImageView;

    .line 381
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {p1, p2}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setOnShutterButtonListener(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    .line 382
    new-instance p1, Lcn/nubia/camera/clone/a/a;

    invoke-direct {p1, p0}, Lcn/nubia/camera/clone/a/a;-><init>(Lcn/nubia/camera/clone/l;)V

    .line 383
    iget-object p2, p0, Lcn/nubia/camera/clone/l;->m:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p2, p1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object p2, p0, Lcn/nubia/camera/clone/l;->n:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p2, p1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object p2, p0, Lcn/nubia/camera/clone/l;->p:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {p2, p1}, Lcom/android/common/ui/RotateTextImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/clone/l;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcn/nubia/camera/clone/l;->f(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/clone/l;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcn/nubia/camera/clone/l;->az:Z

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/clone/l;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcn/nubia/camera/clone/l;->ax:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/clone/l;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcn/nubia/camera/clone/l;->af:F

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/clone/l;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->r()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/clone/l;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcn/nubia/camera/clone/l;->ay:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/a;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    return-object p0
.end method

.method private c(I)V
    .locals 4

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoEdit p = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneViewManager"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iput p1, p0, Lcn/nubia/camera/clone/l;->ai:I

    .line 876
    invoke-direct {p0, p1}, Lcn/nubia/camera/clone/l;->d(I)V

    .line 877
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 879
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->s:Landroid/widget/TextView;

    const v3, 0x7f0f0048

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 880
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 882
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->s:Landroid/widget/TextView;

    const v3, 0x7f0f0051

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 883
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 886
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->ah:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 887
    iget v1, p0, Lcn/nubia/camera/clone/l;->h:I

    iget v2, p0, Lcn/nubia/camera/clone/l;->i:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/clone/l;->ah:Landroid/graphics/Bitmap;

    .line 889
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/nubia/camera/clone/l;->ah:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcn/nubia/camera/clone/l;->aa:Landroid/graphics/Canvas;

    .line 891
    :cond_1
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/nubia/camera/clone/l;->ag:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcn/nubia/camera/clone/l;->ac:Landroid/graphics/Canvas;

    .line 893
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->ab:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 894
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->aa:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/nubia/camera/clone/l;->ab:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 896
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->y:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/camera/clone/l;->X:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-nez v0, :cond_2

    .line 898
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->z:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 900
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->z:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcn/nubia/camera/clone/l;->b:Landroid/app/Activity;

    .line 901
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/clone/l;->ag:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 900
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 903
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->A:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcn/nubia/camera/clone/l;->b:Landroid/app/Activity;

    .line 904
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/clone/l;->ah:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 903
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 906
    invoke-direct {p0, p1}, Lcn/nubia/camera/clone/l;->e(I)V

    .line 907
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->av:Lcn/nubia/camera/clone/ui/ScaleLayout;

    if-eqz p1, :cond_3

    .line 908
    invoke-virtual {p1}, Lcn/nubia/camera/clone/ui/ScaleLayout;->a()V

    .line 909
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->v()V

    :cond_3
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0900f1

    .line 496
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->x:Landroid/widget/RelativeLayout;

    .line 497
    new-instance v1, Lcn/nubia/camera/clone/l$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/camera/clone/l$b;-><init>(Lcn/nubia/camera/clone/l;Lcn/nubia/camera/clone/l$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0900f3

    .line 499
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->y:Landroid/widget/ImageView;

    const v0, 0x7f0900f2

    .line 500
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->z:Landroid/widget/ImageView;

    const v0, 0x7f0900f0

    .line 501
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->A:Landroid/widget/ImageView;

    const v0, 0x7f09012a

    .line 502
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->B:Landroid/view/View;

    const v0, 0x7f090129

    .line 503
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->D:Landroid/widget/LinearLayout;

    const v0, 0x7f0900c3

    .line 504
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->C:Landroid/view/View;

    const v0, 0x7f09011a

    .line 506
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->K:Landroid/widget/ImageView;

    const v0, 0x7f09011d

    .line 507
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->L:Landroid/widget/ImageView;

    const v0, 0x7f090120

    .line 508
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->M:Landroid/widget/ImageView;

    const v0, 0x7f090123

    .line 509
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->N:Landroid/widget/ImageView;

    const v0, 0x7f090126

    .line 510
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->O:Landroid/widget/ImageView;

    .line 512
    new-instance v0, Lcn/nubia/camera/clone/m;

    iget-object v1, p0, Lcn/nubia/camera/clone/l;->B:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/camera/clone/l;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/clone/m;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->w:Lcn/nubia/camera/clone/m;

    .line 513
    new-instance v0, Lcn/nubia/camera/clone/a/b;

    invoke-direct {v0, p0}, Lcn/nubia/camera/clone/a/b;-><init>(Lcn/nubia/camera/clone/l;)V

    .line 514
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->w:Lcn/nubia/camera/clone/m;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/clone/m;->a(Landroid/view/View$OnClickListener;)V

    .line 515
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->C:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->K:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->L:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->M:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->N:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->O:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->P:[Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/camera/clone/l;->K:Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 522
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->L:Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 523
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->M:Landroid/widget/ImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 524
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->N:Landroid/widget/ImageView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 525
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->O:Landroid/widget/ImageView;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 527
    invoke-direct {p0, p1}, Lcn/nubia/camera/clone/l;->d(Landroid/view/View;)V

    .line 528
    invoke-direct {p0, p1}, Lcn/nubia/camera/clone/l;->e(Landroid/view/View;)V

    const v0, 0x7f0900ee

    .line 530
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/clone/ui/ScaleLayout;

    iput-object p1, p0, Lcn/nubia/camera/clone/l;->av:Lcn/nubia/camera/clone/ui/ScaleLayout;

    return-void
.end method

.method private d(I)V
    .locals 3

    .line 914
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    if-nez v0, :cond_0

    const-string p1, "CloneViewManager"

    const-string v0, "setEditShowBitmap failed, beacuse mClone is null"

    .line 915
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 918
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->X:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 919
    iget v0, p0, Lcn/nubia/camera/clone/l;->h:I

    iget v1, p0, Lcn/nubia/camera/clone/l;->i:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->X:Landroid/graphics/Bitmap;

    .line 922
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->ag:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 923
    iget v0, p0, Lcn/nubia/camera/clone/l;->h:I

    iget v1, p0, Lcn/nubia/camera/clone/l;->i:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->ag:Landroid/graphics/Bitmap;

    .line 926
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/a;->a()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcn/nubia/camera/clone/l;->X:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/clone/a;->b(ILandroid/graphics/Bitmap;)V

    .line 927
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/a;->a()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    iget-object p1, p0, Lcn/nubia/camera/clone/l;->ag:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/camera/clone/a;->c(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f09011c

    .line 535
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->E:Landroid/widget/RelativeLayout;

    const v0, 0x7f09011f

    .line 537
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->F:Landroid/widget/RelativeLayout;

    const v0, 0x7f090122

    .line 539
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->G:Landroid/widget/RelativeLayout;

    const v0, 0x7f090125

    .line 541
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->H:Landroid/widget/RelativeLayout;

    const v0, 0x7f090128

    .line 543
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/nubia/camera/clone/l;->I:Landroid/widget/RelativeLayout;

    .line 544
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->J:[Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/camera/clone/l;->E:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 545
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->F:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 546
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->G:Landroid/widget/RelativeLayout;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 547
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->H:Landroid/widget/RelativeLayout;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    .line 548
    aput-object p1, v0, v1

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/clone/l;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->A()V

    return-void
.end method

.method private e(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 931
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    invoke-virtual {v2}, Lcn/nubia/camera/clone/a;->a()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 933
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->J:[Landroid/view/View;

    aget-object v2, v2, v1

    const v3, 0x7f0800dc

    .line 934
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 935
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->V:[Landroid/view/View;

    aget-object v2, v2, v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 937
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->J:[Landroid/view/View;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 938
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->V:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f09011b

    .line 552
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->Q:Landroid/widget/ImageView;

    const v0, 0x7f09011e

    .line 553
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->R:Landroid/widget/ImageView;

    const v0, 0x7f090121

    .line 554
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->S:Landroid/widget/ImageView;

    const v0, 0x7f090124

    .line 555
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->T:Landroid/widget/ImageView;

    const v0, 0x7f090127

    .line 556
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/camera/clone/l;->U:Landroid/widget/ImageView;

    .line 557
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->V:[Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/camera/clone/l;->Q:Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 558
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->R:Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 559
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->S:Landroid/widget/ImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 560
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->T:Landroid/widget/ImageView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    .line 561
    aput-object p1, v0, v1

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/clone/l;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->B()V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/clone/l;)I
    .locals 0

    .line 56
    iget p0, p0, Lcn/nubia/camera/clone/l;->e:I

    return p0
.end method

.method private f(I)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    const/16 v3, 0xb4

    if-eq p1, v2, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 978
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->s:Landroid/widget/TextView;

    const v1, 0x7f0f0048

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 979
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 980
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->u:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 981
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->H()V

    goto/16 :goto_0

    .line 973
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->r:Landroid/widget/TextView;

    const v0, 0x7f0f0050

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 974
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->u:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 975
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->u:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/nubia/camera/clone/l;->v:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 968
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->r:Landroid/widget/TextView;

    const v0, 0x7f0f004f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 969
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->u:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 970
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->u:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/nubia/camera/clone/l;->v:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 962
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->m:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 963
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->r:Landroid/widget/TextView;

    const v0, 0x7f0f004e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 964
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->u:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 965
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->u:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/nubia/camera/clone/l;->v:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 954
    :cond_4
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->r:Landroid/widget/TextView;

    const v0, 0x7f0f004d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 955
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 956
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->n:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 957
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->u:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 958
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->u:Landroid/widget/ImageView;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 959
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->u:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/nubia/camera/clone/l;->v:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 946
    :cond_5
    iget-boolean p1, p0, Lcn/nubia/camera/clone/l;->aA:Z

    if-nez p1, :cond_6

    .line 947
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 949
    :cond_6
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->s:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 950
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->r:Landroid/widget/TextView;

    const v1, 0x7f0f004c

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 951
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->u:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private f(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0900f5

    .line 566
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->an:Landroid/widget/ImageView;

    const v0, 0x7f0900ed

    .line 568
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->q:Landroid/widget/ImageView;

    const v0, 0x7f0900f4

    .line 570
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->u:Landroid/widget/ImageView;

    const v0, 0x7f0900f7

    .line 571
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->s:Landroid/widget/TextView;

    const v0, 0x7f0900f8

    .line 572
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->r:Landroid/widget/TextView;

    const v0, 0x7f0900bc

    .line 574
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->aC:Lcom/android/common/ui/RotateLayout;

    const v0, 0x7f0900bd

    .line 575
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/clone/l;->aD:Landroid/widget/TextView;

    .line 577
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/camera/clone/l;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->i()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/clone/l;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;ILandroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/clone/l;)I
    .locals 0

    .line 56
    iget p0, p0, Lcn/nubia/camera/clone/l;->f:I

    return p0
.end method

.method static synthetic h(Lcn/nubia/camera/clone/l;)I
    .locals 0

    .line 56
    iget p0, p0, Lcn/nubia/camera/clone/l;->g:I

    return p0
.end method

.method static synthetic i(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/l$a;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/camera/clone/l;->j:Lcn/nubia/camera/clone/l$a;

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/camera/clone/l;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->n()V

    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/clone/l;)Ljava/lang/Object;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/camera/clone/l;->aF:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/clone/l;)Landroid/graphics/Bitmap;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/camera/clone/l;->t:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/camera/clone/l;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/camera/clone/l;->aG:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/camera/clone/l;)I
    .locals 0

    .line 56
    iget p0, p0, Lcn/nubia/camera/clone/l;->h:I

    return p0
.end method

.method private n()V
    .locals 3

    const-string v0, "CloneViewManager"

    const-string v1, "reset"

    .line 218
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-boolean v1, p0, Lcn/nubia/camera/clone/l;->as:Z

    if-eqz v1, :cond_0

    const-string v1, "reset failed, because is Waiting"

    .line 220
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 223
    iput v0, p0, Lcn/nubia/camera/clone/l;->a:I

    const/4 v1, 0x1

    .line 224
    iput-boolean v1, p0, Lcn/nubia/camera/clone/l;->at:Z

    .line 225
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->p()V

    .line 226
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->o()V

    const/4 v1, 0x0

    .line 227
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->ac:Landroid/graphics/Canvas;

    .line 228
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->aa:Landroid/graphics/Canvas;

    .line 229
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->v:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 230
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 231
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->v:Landroid/graphics/Bitmap;

    .line 233
    :cond_1
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->t:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 234
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 235
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->t:Landroid/graphics/Bitmap;

    .line 237
    :cond_2
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->ag:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 238
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 239
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->ag:Landroid/graphics/Bitmap;

    .line 241
    :cond_3
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->ah:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 242
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 243
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->ah:Landroid/graphics/Bitmap;

    .line 245
    :cond_4
    iput v0, p0, Lcn/nubia/camera/clone/l;->ai:I

    .line 246
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    invoke-virtual {v1}, Lcn/nubia/camera/clone/a;->c()V

    .line 247
    iput-boolean v0, p0, Lcn/nubia/camera/clone/l;->aE:Z

    .line 248
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->j:Lcn/nubia/camera/clone/l$a;

    invoke-interface {v1, v0}, Lcn/nubia/camera/clone/l$a;->a(Z)V

    .line 249
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method static synthetic o(Lcn/nubia/camera/clone/l;)I
    .locals 0

    .line 56
    iget p0, p0, Lcn/nubia/camera/clone/l;->i:I

    return p0
.end method

.method private o()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->X:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->X:Landroid/graphics/Bitmap;

    .line 257
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->W:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 258
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->W:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 259
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->J:[Landroid/view/View;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 260
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->P:[Landroid/view/View;

    aget-object v2, v2, v0

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 262
    :cond_1
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->W:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 263
    iget-object v2, p0, Lcn/nubia/camera/clone/l;->W:[Landroid/graphics/Bitmap;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_2
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->W:[Landroid/graphics/Bitmap;

    return-void
.end method

.method private p()V
    .locals 2

    const-string v0, "CloneViewManager"

    const-string v1, "resetUI"

    .line 270
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->q()V

    .line 272
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->G()V

    const/4 v0, 0x0

    .line 274
    invoke-direct {p0, v0}, Lcn/nubia/camera/clone/l;->f(I)V

    return-void
.end method

.method static synthetic p(Lcn/nubia/camera/clone/l;)Z
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->t()Z

    move-result p0

    return p0
.end method

.method private q()V
    .locals 3

    const-string v0, "CloneViewManager"

    const-string v1, "resetBottomUI"

    .line 278
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->D()V

    .line 280
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->m:Lcom/android/common/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->n:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->p:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v2, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    .line 284
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->aG:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->aG:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method static synthetic q(Lcn/nubia/camera/clone/l;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcn/nubia/camera/clone/l;->Y:Z

    return p0
.end method

.method static synthetic r(Lcn/nubia/camera/clone/l;)I
    .locals 0

    .line 56
    iget p0, p0, Lcn/nubia/camera/clone/l;->a:I

    return p0
.end method

.method private r()V
    .locals 3

    const-string v0, "CloneViewManager"

    const-string v1, "hideWaitView"

    .line 294
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lcn/nubia/camera/clone/l;->as:Z

    .line 296
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v2, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v1, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    .line 297
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->m:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 299
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->n:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    return-void
.end method

.method private s()V
    .locals 2

    const-string v0, "CloneViewManager"

    const-string v1, "showWaitView"

    .line 306
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcn/nubia/camera/clone/l;->as:Z

    .line 308
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 310
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->m:Lcom/android/common/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->n:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic s(Lcn/nubia/camera/clone/l;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcn/nubia/camera/clone/l;->as:Z

    return p0
.end method

.method static synthetic t(Lcn/nubia/camera/clone/l;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->M()V

    return-void
.end method

.method private t()Z
    .locals 4

    .line 426
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcn/nubia/camera/clone/l;->w:Lcn/nubia/camera/clone/m;

    if-nez v2, :cond_0

    goto :goto_2

    .line 430
    :cond_0
    iget v2, p0, Lcn/nubia/camera/clone/l;->ai:I

    invoke-virtual {v0}, Lcn/nubia/camera/clone/a;->a()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-ne v2, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    .line 433
    iput-boolean v1, p0, Lcn/nubia/camera/clone/l;->Y:Z

    .line 434
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->w:Lcn/nubia/camera/clone/m;

    invoke-virtual {v1}, Lcn/nubia/camera/clone/m;->c()V

    goto :goto_1

    .line 436
    :cond_2
    iput-boolean v3, p0, Lcn/nubia/camera/clone/l;->Y:Z

    .line 437
    iget-boolean v1, p0, Lcn/nubia/camera/clone/l;->Z:Z

    if-eqz v1, :cond_3

    .line 438
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->w:Lcn/nubia/camera/clone/m;

    invoke-virtual {v1}, Lcn/nubia/camera/clone/m;->b()V

    goto :goto_1

    .line 440
    :cond_3
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->w:Lcn/nubia/camera/clone/m;

    invoke-virtual {v1}, Lcn/nubia/camera/clone/m;->a()V

    :goto_1
    return v0

    :cond_4
    :goto_2
    const-string v0, "CloneViewManager"

    const-string v2, "setButtonState failed!"

    .line 427
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private u()V
    .locals 4

    .line 447
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->ab:Landroid/graphics/Paint;

    .line 448
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 449
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->ab:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 450
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->ab:Landroid/graphics/Paint;

    iget-object v2, p0, Lcn/nubia/camera/clone/l;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 452
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->w()V

    .line 453
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->ab:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 455
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->ad:Landroid/graphics/Paint;

    .line 456
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 457
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->ad:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 458
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->x()V

    .line 459
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->ad:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 461
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->ap:Landroid/graphics/Matrix;

    .line 462
    sget v1, Lcn/nubia/camera/clone/l;->al:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 464
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/clone/l;->aj:I

    .line 465
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/clone/l;->ak:I

    return-void
.end method

.method static synthetic u(Lcn/nubia/camera/clone/l;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->J()V

    return-void
.end method

.method private v()V
    .locals 0

    .line 469
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->w()V

    .line 470
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->x()V

    return-void
.end method

.method static synthetic v(Lcn/nubia/camera/clone/l;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcn/nubia/camera/clone/l;->ax:Z

    return p0
.end method

.method static synthetic w(Lcn/nubia/camera/clone/l;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcn/nubia/camera/clone/l;->aw:J

    return-wide v0
.end method

.method private w()V
    .locals 2

    .line 474
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->ab:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    return-void

    .line 477
    :cond_0
    iget v0, p0, Lcn/nubia/camera/clone/l;->aj:I

    .line 478
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->av:Lcn/nubia/camera/clone/ui/ScaleLayout;

    if-eqz v1, :cond_1

    int-to-float v0, v0

    .line 479
    invoke-virtual {v1}, Lcn/nubia/camera/clone/ui/ScaleLayout;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 481
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->ab:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static synthetic x(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/ui/ScaleLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/camera/clone/l;->av:Lcn/nubia/camera/clone/ui/ScaleLayout;

    return-object p0
.end method

.method private x()V
    .locals 2

    .line 485
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->ad:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    return-void

    .line 488
    :cond_0
    iget v0, p0, Lcn/nubia/camera/clone/l;->ak:I

    .line 489
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->av:Lcn/nubia/camera/clone/ui/ScaleLayout;

    if-eqz v1, :cond_1

    int-to-float v0, v0

    .line 490
    invoke-virtual {v1}, Lcn/nubia/camera/clone/ui/ScaleLayout;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 492
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->ad:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private y()V
    .locals 3

    .line 679
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->o()V

    .line 680
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->t:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 682
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->t:Landroid/graphics/Bitmap;

    .line 684
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->ag:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 685
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 686
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->ag:Landroid/graphics/Bitmap;

    .line 688
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->ah:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 689
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 690
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->ah:Landroid/graphics/Bitmap;

    .line 692
    :cond_2
    invoke-static {}, Lcn/nubia/camera/clone/j;->a()Lcn/nubia/camera/clone/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/clone/j;->b()Lcn/nubia/camera/clone/j$a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/clone/j$a;->a:Lcn/nubia/camera/clone/j$a;

    if-ne v0, v2, :cond_3

    .line 693
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    if-eqz v0, :cond_3

    .line 694
    invoke-virtual {v0}, Lcn/nubia/camera/clone/a;->c()V

    .line 695
    iput-object v1, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    .line 698
    :cond_3
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method static synthetic y(Lcn/nubia/camera/clone/l;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcn/nubia/camera/clone/l;->Z:Z

    return p0
.end method

.method static synthetic z(Lcn/nubia/camera/clone/l;)F
    .locals 0

    .line 56
    iget p0, p0, Lcn/nubia/camera/clone/l;->ae:F

    return p0
.end method

.method private z()V
    .locals 2

    const-string v0, "CloneViewManager"

    const-string v1, "composeConfirm"

    .line 702
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->s()V

    .line 704
    new-instance v0, Lcn/nubia/camera/clone/l$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/clone/l$3;-><init>(Lcn/nubia/camera/clone/l;)V

    .line 724
    invoke-virtual {v0}, Lcn/nubia/camera/clone/l$3;->start()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const-string v0, "CloneViewManager"

    const-string v1, "enterDelayShootMode"

    .line 1315
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1316
    iput-boolean v0, p0, Lcn/nubia/camera/clone/l;->aA:Z

    .line 1317
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 1318
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x3

    .line 1322
    invoke-virtual {p0, p1}, Lcn/nubia/camera/clone/l;->b(I)V

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 397
    iput p1, p0, Lcn/nubia/camera/clone/l;->h:I

    .line 398
    iput p2, p0, Lcn/nubia/camera/clone/l;->i:I

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 1404
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->m:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 1405
    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateImageView;->a(IZ)V

    .line 1407
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->n:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 1408
    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateImageView;->a(IZ)V

    .line 1410
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->p:Lcom/android/common/ui/RotateTextImageView;

    if-eqz v0, :cond_2

    .line 1411
    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateTextImageView;->a(IZ)V

    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .line 581
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 p1, 0x4

    .line 604
    invoke-direct {p0, p1}, Lcn/nubia/camera/clone/l;->c(I)V

    goto :goto_0

    :sswitch_1
    const/4 p1, 0x3

    .line 601
    invoke-direct {p0, p1}, Lcn/nubia/camera/clone/l;->c(I)V

    goto :goto_0

    :sswitch_2
    const/4 p1, 0x2

    .line 598
    invoke-direct {p0, p1}, Lcn/nubia/camera/clone/l;->c(I)V

    goto :goto_0

    .line 595
    :sswitch_3
    invoke-direct {p0, v1}, Lcn/nubia/camera/clone/l;->c(I)V

    goto :goto_0

    .line 592
    :sswitch_4
    invoke-direct {p0, v0}, Lcn/nubia/camera/clone/l;->c(I)V

    goto :goto_0

    .line 583
    :sswitch_5
    iput-boolean v0, p0, Lcn/nubia/camera/clone/l;->Z:Z

    .line 584
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->w:Lcn/nubia/camera/clone/m;

    invoke-virtual {p1}, Lcn/nubia/camera/clone/m;->a()V

    goto :goto_0

    .line 607
    :sswitch_6
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->j:Lcn/nubia/camera/clone/l$a;

    invoke-interface {p1}, Lcn/nubia/camera/clone/l$a;->i()V

    goto :goto_0

    .line 587
    :sswitch_7
    iput-boolean v1, p0, Lcn/nubia/camera/clone/l;->Z:Z

    .line 588
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->w:Lcn/nubia/camera/clone/m;

    invoke-virtual {p1}, Lcn/nubia/camera/clone/m;->b()V

    .line 589
    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcn/nubia/camera/clone/l;->ag:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcn/nubia/camera/clone/l;->ac:Landroid/graphics/Canvas;

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900b5 -> :sswitch_7
        0x7f0900c3 -> :sswitch_6
        0x7f09010b -> :sswitch_5
        0x7f09011a -> :sswitch_4
        0x7f09011d -> :sswitch_3
        0x7f090120 -> :sswitch_2
        0x7f090123 -> :sswitch_1
        0x7f090126 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Z)V
    .locals 1

    .line 1289
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->n:Lcom/android/common/ui/RotateImageView;

    if-nez v0, :cond_0

    const-string p1, "CloneViewManager"

    const-string v0, "readyForNextCapture failed!"

    .line 1290
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1293
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setEnabled(Z)V

    .line 1294
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setClickable(Z)V

    .line 1295
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->m:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    .line 1296
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->m:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    .line 1297
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->n:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    .line 1298
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->n:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    if-eqz p1, :cond_2

    .line 1300
    iget p1, p0, Lcn/nubia/camera/clone/l;->au:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    goto :goto_0

    .line 1303
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setEnabled(Z)V

    .line 1304
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setClickable(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a([BIII)V
    .locals 9

    .line 731
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->aF:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcn/nubia/camera/clone/l;->az:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 736
    iput-boolean v1, p0, Lcn/nubia/camera/clone/l;->at:Z

    .line 737
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->v:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 738
    iget v1, p0, Lcn/nubia/camera/clone/l;->h:I

    iget v2, p0, Lcn/nubia/camera/clone/l;->i:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/clone/l;->v:Landroid/graphics/Bitmap;

    .line 741
    :cond_1
    iput p3, p0, Lcn/nubia/camera/clone/l;->f:I

    .line 742
    iput p2, p0, Lcn/nubia/camera/clone/l;->e:I

    .line 743
    iput p4, p0, Lcn/nubia/camera/clone/l;->g:I

    .line 744
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    iget-object v4, p0, Lcn/nubia/camera/clone/l;->v:Landroid/graphics/Bitmap;

    iget v7, p0, Lcn/nubia/camera/clone/l;->h:I

    iget v8, p0, Lcn/nubia/camera/clone/l;->i:I

    move-object v2, p1

    move v3, p4

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/clone/a;->a([BILandroid/graphics/Bitmap;IIII)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/clone/l;->au:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    const-string p1, "CloneViewManager"

    const-string p2, "onPictureCapture failed, mPicTakenNum is -1"

    .line 748
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->aG:Landroid/os/Handler;

    const/4 p2, 0x4

    iget p3, p0, Lcn/nubia/camera/clone/l;->au:I

    invoke-virtual {p1, p2, p3, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 751
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->j:Lcn/nubia/camera/clone/l$a;

    iget p2, p0, Lcn/nubia/camera/clone/l;->au:I

    invoke-interface {p1, p2}, Lcn/nubia/camera/clone/l$a;->b(I)V

    const-string p1, "CloneViewManager"

    .line 752
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mPicTakenNum = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcn/nubia/camera/clone/l;->au:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    monitor-exit v0

    return-void

    :cond_3
    :goto_0
    const-string p1, "CloneViewManager"

    const-string p2, "onPictureCapture failed, because mClone is null"

    .line 733
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 753
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()[Landroid/view/View;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    .line 366
    iget-object v1, p0, Lcn/nubia/camera/clone/l;->k:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/clone/l;->B:Landroid/view/View;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 402
    iget v0, p0, Lcn/nubia/camera/clone/l;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/a;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/clone/l;->j:Lcn/nubia/camera/clone/l$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 403
    invoke-interface {v0, v1}, Lcn/nubia/camera/clone/l$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 1366
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->aD:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcn/nubia/camera/clone/l;->aH:I

    if-eq v1, p1, :cond_0

    .line 1367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->U()V

    .line 1370
    :cond_0
    iput p1, p0, Lcn/nubia/camera/clone/l;->aH:I

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .line 616
    iget-boolean v0, p0, Lcn/nubia/camera/clone/l;->at:Z

    const-string v1, "CloneViewManager"

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcn/nubia/camera/clone/l;->as:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 621
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->k:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 626
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900ba

    if-eq p1, v0, :cond_6

    const v0, 0x7f0900bf

    if-eq p1, v0, :cond_4

    const v0, 0x7f0900c4

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 631
    :cond_2
    iget p1, p0, Lcn/nubia/camera/clone/l;->a:I

    if-nez p1, :cond_3

    .line 632
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->s:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 633
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->H()V

    goto :goto_0

    .line 635
    :cond_3
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->z()V

    goto :goto_0

    .line 639
    :cond_4
    iget-object p1, p0, Lcn/nubia/camera/clone/l;->j:Lcn/nubia/camera/clone/l$a;

    invoke-interface {p1}, Lcn/nubia/camera/clone/l$a;->e()V

    .line 640
    iget p1, p0, Lcn/nubia/camera/clone/l;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 641
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->B()V

    goto :goto_0

    .line 643
    :cond_5
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->s()V

    .line 644
    new-instance p1, Lcn/nubia/camera/clone/l$2;

    invoke-direct {p1, p0}, Lcn/nubia/camera/clone/l$2;-><init>(Lcn/nubia/camera/clone/l;)V

    .line 662
    invoke-virtual {p1}, Lcn/nubia/camera/clone/l$2;->start()V

    goto :goto_0

    .line 628
    :cond_6
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->n()V

    :goto_0
    return-void

    :cond_7
    :goto_1
    const-string p1, "BottomOnClickListener can\'t use,because mBottomLayout is null or View.GONE"

    .line 622
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 617
    :cond_8
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BottomOnClickListener can\'t use,because IsResetted : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcn/nubia/camera/clone/l;->as:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; mIsWaiting : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcn/nubia/camera/clone/l;->as:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->ar:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->ar:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 411
    :cond_0
    iget v0, p0, Lcn/nubia/camera/clone/l;->a:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 412
    invoke-virtual {p0, v0}, Lcn/nubia/camera/clone/l;->a(Z)V

    .line 414
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->T()V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 422
    iget v0, p0, Lcn/nubia/camera/clone/l;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 2

    .line 672
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->aF:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 673
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/clone/l;->az:Z

    .line 674
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->y()V

    .line 675
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Z
    .locals 1

    .line 761
    iget v0, p0, Lcn/nubia/camera/clone/l;->a:I

    if-nez v0, :cond_0

    .line 762
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->performClick()Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 4

    .line 1120
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->d:Lcn/nubia/camera/clone/a;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/a;->a()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1122
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/clone/l;->as:Z

    const/4 v2, 0x1

    const-string v3, "CloneViewManager"

    if-eqz v0, :cond_1

    const-string v0, "onBackPressed failed, because is making."

    .line 1123
    invoke-static {v3, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1126
    :cond_1
    iget v0, p0, Lcn/nubia/camera/clone/l;->a:I

    if-nez v0, :cond_3

    .line 1127
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->n:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_2

    .line 1128
    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->callOnClick()Z

    goto :goto_0

    :cond_2
    const-string v0, "onBackPressed, call Cancel view is null "

    .line 1130
    invoke-static {v3, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1135
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/clone/l;->h()V

    :goto_0
    return v2
.end method

.method public h()V
    .locals 4

    .line 1170
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->ar:Landroid/app/Dialog;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1171
    new-instance v0, Lcn/nubia/camera/am/a$a;

    iget-object v2, p0, Lcn/nubia/camera/clone/l;->b:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcn/nubia/camera/am/a$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f003e

    .line 1172
    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->c(I)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v2, 0x7f0f004b

    new-instance v3, Lcn/nubia/camera/clone/l$6;

    invoke-direct {v3, p0}, Lcn/nubia/camera/clone/l$6;-><init>(Lcn/nubia/camera/clone/l;)V

    .line 1173
    invoke-virtual {v0, v2, v3}, Lcn/nubia/camera/am/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v2, 0x7f0f0036

    new-instance v3, Lcn/nubia/camera/clone/l$5;

    invoke-direct {v3, p0}, Lcn/nubia/camera/clone/l$5;-><init>(Lcn/nubia/camera/clone/l;)V

    .line 1181
    invoke-virtual {v0, v2, v3}, Lcn/nubia/camera/am/a$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 1189
    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a$a;->b(Z)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 1190
    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a$a;->a(Z)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 1191
    invoke-virtual {v0}, Lcn/nubia/camera/am/a$a;->a()Lcn/nubia/camera/am/a;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/clone/l;->ar:Landroid/app/Dialog;

    .line 1193
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->ar:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1194
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->ar:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public i()Z
    .locals 1

    .line 1330
    iget-boolean v0, p0, Lcn/nubia/camera/clone/l;->aA:Z

    return v0
.end method

.method public j()V
    .locals 2

    .line 1334
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->aC:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1335
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    :cond_0
    const/4 v0, -0x1

    .line 1337
    iput v0, p0, Lcn/nubia/camera/clone/l;->aH:I

    .line 1338
    invoke-direct {p0}, Lcn/nubia/camera/clone/l;->Q()V

    return-void
.end method

.method public k()V
    .locals 2

    .line 1377
    iget v0, p0, Lcn/nubia/camera/clone/l;->a:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CloneViewManager"

    const-string v1, "exitDelayShootMode"

    .line 1380
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1381
    iput-boolean v0, p0, Lcn/nubia/camera/clone/l;->aA:Z

    .line 1383
    iget-object v0, p0, Lcn/nubia/camera/clone/l;->b:Landroid/app/Activity;

    new-instance v1, Lcn/nubia/camera/clone/l$7;

    invoke-direct {v1, p0}, Lcn/nubia/camera/clone/l$7;-><init>(Lcn/nubia/camera/clone/l;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    .line 1396
    iput-boolean v0, p0, Lcn/nubia/camera/clone/l;->aE:Z

    return-void
.end method

.method public m()Z
    .locals 1

    .line 1400
    iget-boolean v0, p0, Lcn/nubia/camera/clone/l;->aE:Z

    return v0
.end method
