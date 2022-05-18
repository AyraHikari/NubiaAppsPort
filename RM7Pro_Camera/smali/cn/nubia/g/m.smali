.class public Lcn/nubia/g/m;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/nubiaimage3d/c$a;
.implements Lcom/android/common/ui/NubiaScrollView$a;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/android/common/ui/NubiaScrollView;

.field private f:Landroid/view/animation/Animation;

.field private g:Landroid/view/animation/Animation;

.field private h:Lcn/nubia/nubiaimage3d/Image3dView;

.field private i:Lcn/nubia/nubiaimage3d/Image3dView;

.field private j:Z

.field private k:Lcn/nubia/nubiaimage3d/c;

.field private l:Lcn/nubia/nubiaimage3d/h;

.field private m:Landroid/graphics/Bitmap;

.field private n:I

.field private o:I

.field private p:I

.field private q:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcn/nubia/g/m;->a:Landroid/widget/ImageView;

    .line 39
    iput-object v0, p0, Lcn/nubia/g/m;->b:Landroid/widget/LinearLayout;

    .line 40
    iput-object v0, p0, Lcn/nubia/g/m;->c:Landroid/widget/ImageButton;

    .line 41
    iput-object v0, p0, Lcn/nubia/g/m;->d:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcn/nubia/g/m;->e:Lcom/android/common/ui/NubiaScrollView;

    .line 43
    iput-object v0, p0, Lcn/nubia/g/m;->f:Landroid/view/animation/Animation;

    .line 44
    iput-object v0, p0, Lcn/nubia/g/m;->g:Landroid/view/animation/Animation;

    .line 45
    iput-object v0, p0, Lcn/nubia/g/m;->h:Lcn/nubia/nubiaimage3d/Image3dView;

    .line 46
    iput-object v0, p0, Lcn/nubia/g/m;->i:Lcn/nubia/nubiaimage3d/Image3dView;

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcn/nubia/g/m;->j:Z

    .line 49
    iput-object v0, p0, Lcn/nubia/g/m;->k:Lcn/nubia/nubiaimage3d/c;

    .line 50
    iput-object v0, p0, Lcn/nubia/g/m;->l:Lcn/nubia/nubiaimage3d/h;

    .line 52
    iput-object v0, p0, Lcn/nubia/g/m;->m:Landroid/graphics/Bitmap;

    .line 53
    iput v1, p0, Lcn/nubia/g/m;->n:I

    .line 54
    iput v1, p0, Lcn/nubia/g/m;->o:I

    const/16 v0, 0x50

    .line 55
    iput v0, p0, Lcn/nubia/g/m;->p:I

    new-array v0, v0, [I

    .line 57
    sget v2, Lcn/nubia/g/a$b;->a:I

    aput v2, v0, v1

    sget v1, Lcn/nubia/g/a$b;->l:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->w:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->H:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->S:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->ad:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->ao:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->az:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->aB:I

    const/16 v2, 0x8

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->b:I

    const/16 v2, 0x9

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->c:I

    const/16 v2, 0xa

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->d:I

    const/16 v2, 0xb

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->e:I

    const/16 v2, 0xc

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->f:I

    const/16 v2, 0xd

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->g:I

    const/16 v2, 0xe

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->h:I

    const/16 v2, 0xf

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->i:I

    const/16 v2, 0x10

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->j:I

    const/16 v2, 0x11

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->k:I

    const/16 v2, 0x12

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->m:I

    const/16 v2, 0x13

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->n:I

    const/16 v2, 0x14

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->o:I

    const/16 v2, 0x15

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->p:I

    const/16 v2, 0x16

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->q:I

    const/16 v2, 0x17

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->r:I

    const/16 v2, 0x18

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->s:I

    const/16 v2, 0x19

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->t:I

    const/16 v2, 0x1a

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->u:I

    const/16 v2, 0x1b

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->v:I

    const/16 v2, 0x1c

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->x:I

    const/16 v2, 0x1d

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->y:I

    const/16 v2, 0x1e

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->z:I

    const/16 v2, 0x1f

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->A:I

    const/16 v2, 0x20

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->B:I

    const/16 v2, 0x21

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->C:I

    const/16 v2, 0x22

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->D:I

    const/16 v2, 0x23

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->E:I

    const/16 v2, 0x24

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->F:I

    const/16 v2, 0x25

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->G:I

    const/16 v2, 0x26

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->I:I

    const/16 v2, 0x27

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->J:I

    const/16 v2, 0x28

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->K:I

    const/16 v2, 0x29

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->L:I

    const/16 v2, 0x2a

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->M:I

    const/16 v2, 0x2b

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->N:I

    const/16 v2, 0x2c

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->O:I

    const/16 v2, 0x2d

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->P:I

    const/16 v2, 0x2e

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->Q:I

    const/16 v2, 0x2f

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->R:I

    const/16 v2, 0x30

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->T:I

    const/16 v2, 0x31

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->U:I

    const/16 v2, 0x32

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->V:I

    const/16 v2, 0x33

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->W:I

    const/16 v2, 0x34

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->X:I

    const/16 v2, 0x35

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->Y:I

    const/16 v2, 0x36

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->Z:I

    const/16 v2, 0x37

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->aa:I

    const/16 v2, 0x38

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->ab:I

    const/16 v2, 0x39

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->ac:I

    const/16 v2, 0x3a

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->ae:I

    const/16 v2, 0x3b

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->af:I

    const/16 v2, 0x3c

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->ag:I

    const/16 v2, 0x3d

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->ah:I

    const/16 v2, 0x3e

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->ai:I

    const/16 v2, 0x3f

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->aj:I

    const/16 v2, 0x40

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->ak:I

    const/16 v2, 0x41

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->al:I

    const/16 v2, 0x42

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->am:I

    const/16 v2, 0x43

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->an:I

    const/16 v2, 0x44

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->ap:I

    const/16 v2, 0x45

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->aq:I

    const/16 v2, 0x46

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->ar:I

    const/16 v2, 0x47

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->as:I

    const/16 v2, 0x48

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->at:I

    const/16 v2, 0x49

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->au:I

    const/16 v2, 0x4a

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->av:I

    const/16 v2, 0x4b

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->aw:I

    const/16 v2, 0x4c

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->ax:I

    const/16 v2, 0x4d

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->ay:I

    const/16 v2, 0x4e

    aput v1, v0, v2

    sget v1, Lcn/nubia/g/a$b;->aA:I

    const/16 v2, 0x4f

    aput v1, v0, v2

    iput-object v0, p0, Lcn/nubia/g/m;->q:[I

    return-void
.end method

.method private a()V
    .locals 2

    .line 130
    iget-boolean v0, p0, Lcn/nubia/g/m;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcn/nubia/g/m;->j:Z

    .line 134
    iget-object v0, p0, Lcn/nubia/g/m;->c:Landroid/widget/ImageButton;

    sget v1, Lcn/nubia/g/a$b;->aD:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 135
    iget-object v0, p0, Lcn/nubia/g/m;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcn/nubia/g/m;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/g/m;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 137
    iget-object v0, p0, Lcn/nubia/g/m;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 95
    sget v0, Lcn/nubia/g/a$c;->w:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/g/m;->a:Landroid/widget/ImageView;

    .line 96
    sget v0, Lcn/nubia/g/a$c;->q:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/nubia/g/m;->c:Landroid/widget/ImageButton;

    .line 97
    sget v0, Lcn/nubia/g/a$c;->v:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/g/m;->b:Landroid/widget/LinearLayout;

    .line 98
    sget v0, Lcn/nubia/g/a$c;->u:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/g/m;->d:Landroid/widget/TextView;

    .line 99
    sget v0, Lcn/nubia/g/a$c;->r:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/nubiaimage3d/Image3dView;

    iput-object v0, p0, Lcn/nubia/g/m;->h:Lcn/nubia/nubiaimage3d/Image3dView;

    .line 100
    sget v0, Lcn/nubia/g/a$c;->s:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/nubiaimage3d/Image3dView;

    iput-object v0, p0, Lcn/nubia/g/m;->i:Lcn/nubia/nubiaimage3d/Image3dView;

    .line 103
    invoke-virtual {p0}, Lcn/nubia/g/m;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/g/a$b;->aE:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/g/m;->m:Landroid/graphics/Bitmap;

    .line 104
    iget-object v0, p0, Lcn/nubia/g/m;->h:Lcn/nubia/nubiaimage3d/Image3dView;

    invoke-virtual {v0}, Lcn/nubia/nubiaimage3d/Image3dView;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/g/m;->o:I

    .line 106
    iget-object v0, p0, Lcn/nubia/g/m;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit16 v0, v0, -0x3d8

    iget v1, p0, Lcn/nubia/g/m;->p:I

    div-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/g/m;->n:I

    .line 107
    new-instance v0, Lcn/nubia/nubiaimage3d/c;

    invoke-virtual {p0}, Lcn/nubia/g/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/nubiaimage3d/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/g/m;->k:Lcn/nubia/nubiaimage3d/c;

    .line 108
    invoke-virtual {v0, p0}, Lcn/nubia/nubiaimage3d/c;->a(Lcn/nubia/nubiaimage3d/c$a;)V

    .line 109
    iget-object v0, p0, Lcn/nubia/g/m;->k:Lcn/nubia/nubiaimage3d/c;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcn/nubia/nubiaimage3d/c;->a(F)V

    .line 111
    new-instance v0, Lcn/nubia/nubiaimage3d/h;

    iget v1, p0, Lcn/nubia/g/m;->p:I

    const/4 v2, 0x1

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/nubiaimage3d/h;-><init>(IIF)V

    iput-object v0, p0, Lcn/nubia/g/m;->l:Lcn/nubia/nubiaimage3d/h;

    .line 112
    iget v1, p0, Lcn/nubia/g/m;->p:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/nubiaimage3d/h;->a(I)V

    .line 114
    iget-object v0, p0, Lcn/nubia/g/m;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcn/nubia/g/m;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-direct {p0, p1}, Lcn/nubia/g/m;->b(Landroid/view/View;)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 141
    iget-boolean v0, p0, Lcn/nubia/g/m;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcn/nubia/g/m;->j:Z

    .line 145
    iget-object v0, p0, Lcn/nubia/g/m;->c:Landroid/widget/ImageButton;

    sget v1, Lcn/nubia/g/a$b;->aC:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 146
    iget-object v0, p0, Lcn/nubia/g/m;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcn/nubia/g/m;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/g/m;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 148
    iget-object v0, p0, Lcn/nubia/g/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .line 120
    sget v0, Lcn/nubia/g/a$c;->t:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/NubiaScrollView;

    iput-object p1, p0, Lcn/nubia/g/m;->e:Lcom/android/common/ui/NubiaScrollView;

    .line 121
    invoke-virtual {p1, p0}, Lcom/android/common/ui/NubiaScrollView;->setScrollViewListener(Lcom/android/common/ui/NubiaScrollView$a;)V

    .line 122
    iget-object p1, p0, Lcn/nubia/g/m;->e:Lcom/android/common/ui/NubiaScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/common/ui/NubiaScrollView;->smoothScrollTo(II)V

    .line 123
    invoke-virtual {p0}, Lcn/nubia/g/m;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcn/nubia/g/a$a;->b:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/g/m;->f:Landroid/view/animation/Animation;

    .line 125
    invoke-virtual {p0}, Lcn/nubia/g/m;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcn/nubia/g/a$a;->a:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/g/m;->g:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public a(FFFFFF)V
    .locals 0

    .line 193
    iget-object p1, p0, Lcn/nubia/g/m;->l:Lcn/nubia/nubiaimage3d/h;

    invoke-virtual {p1, p2, p4}, Lcn/nubia/nubiaimage3d/h;->a(FF)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 196
    iget-object p2, p0, Lcn/nubia/g/m;->h:Lcn/nubia/nubiaimage3d/Image3dView;

    invoke-virtual {p0}, Lcn/nubia/g/m;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object p4, p0, Lcn/nubia/g/m;->q:[I

    aget p4, p4, p1

    invoke-static {p3, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcn/nubia/nubiaimage3d/Image3dView;->setFrame(Landroid/graphics/Bitmap;)V

    .line 197
    iget-object p2, p0, Lcn/nubia/g/m;->i:Lcn/nubia/nubiaimage3d/Image3dView;

    iget-object p3, p0, Lcn/nubia/g/m;->m:Landroid/graphics/Bitmap;

    iget p4, p0, Lcn/nubia/g/m;->n:I

    mul-int/2addr p1, p4

    const/4 p4, 0x0

    const/16 p5, 0x3d8

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p6

    invoke-static {p3, p1, p4, p5, p6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/nubia/nubiaimage3d/Image3dView;->setFrame(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 0

    const/16 p1, 0x12c

    if-le p2, p4, :cond_0

    if-le p2, p1, :cond_0

    .line 183
    invoke-direct {p0}, Lcn/nubia/g/m;->b()V

    goto :goto_0

    :cond_0
    if-ge p2, p4, :cond_1

    if-ge p2, p1, :cond_1

    .line 185
    invoke-direct {p0}, Lcn/nubia/g/m;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 174
    sget v0, Lcn/nubia/g/a$c;->v:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget v0, Lcn/nubia/g/a$c;->q:I

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/g/m;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 88
    sget p3, Lcn/nubia/g/a$d;->k:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Lcn/nubia/g/m;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 154
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 155
    iget-object v0, p0, Lcn/nubia/g/m;->k:Lcn/nubia/nubiaimage3d/c;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcn/nubia/nubiaimage3d/c;->b()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 163
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 164
    iget-object v0, p0, Lcn/nubia/g/m;->k:Lcn/nubia/nubiaimage3d/c;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcn/nubia/nubiaimage3d/c;->a()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcn/nubia/g/m;->l:Lcn/nubia/nubiaimage3d/h;

    if-eqz v0, :cond_1

    .line 168
    iget v1, p0, Lcn/nubia/g/m;->p:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/nubiaimage3d/h;->a(I)V

    :cond_1
    return-void
.end method
