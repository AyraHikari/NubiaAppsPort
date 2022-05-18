.class public Lcn/nubia/camera/lightpainting/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Lcom/android/common/ui/NubiaProgressWheel;

.field private e:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private f:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

.field private g:Lcom/android/preference/PreferenceGroup;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Lcom/android/common/ui/RotateImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/android/common/ui/RotateImageView;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private o:Lcom/android/common/ui/RotateImageView;

.field private p:Lcom/android/common/ui/RotateImageView;

.field private final q:I

.field private final r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Landroid/view/View;Landroid/content/Context;Lcom/android/preference/PreferenceGroup;Landroid/view/View$OnClickListener;Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/lightpainting/LightStepSeekBar$a;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p7, 0x0

    .line 35
    iput-object p7, p0, Lcn/nubia/camera/lightpainting/g;->b:Landroid/view/View;

    .line 36
    iput-object p7, p0, Lcn/nubia/camera/lightpainting/g;->c:Landroid/widget/RelativeLayout;

    .line 37
    iput-object p7, p0, Lcn/nubia/camera/lightpainting/g;->d:Lcom/android/common/ui/NubiaProgressWheel;

    .line 38
    iput-object p7, p0, Lcn/nubia/camera/lightpainting/g;->e:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 39
    iput-object p7, p0, Lcn/nubia/camera/lightpainting/g;->f:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 40
    iput-object p7, p0, Lcn/nubia/camera/lightpainting/g;->g:Lcom/android/preference/PreferenceGroup;

    .line 41
    iput-object p7, p0, Lcn/nubia/camera/lightpainting/g;->h:Landroid/widget/RelativeLayout;

    .line 42
    iput-object p7, p0, Lcn/nubia/camera/lightpainting/g;->i:Lcom/android/common/ui/RotateImageView;

    .line 43
    iput-object p7, p0, Lcn/nubia/camera/lightpainting/g;->j:Landroid/widget/ImageView;

    .line 47
    iput-object p7, p0, Lcn/nubia/camera/lightpainting/g;->m:Landroid/widget/RelativeLayout;

    .line 48
    iput-object p7, p0, Lcn/nubia/camera/lightpainting/g;->n:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 49
    iput-object p7, p0, Lcn/nubia/camera/lightpainting/g;->o:Lcom/android/common/ui/RotateImageView;

    .line 50
    iput-object p7, p0, Lcn/nubia/camera/lightpainting/g;->p:Lcom/android/common/ui/RotateImageView;

    .line 58
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p7

    const v0, 0x7f070135

    invoke-virtual {p7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p7

    iput p7, p0, Lcn/nubia/camera/lightpainting/g;->q:I

    .line 59
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p7, 0x7f0f01f1

    invoke-virtual {p3, p7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/camera/lightpainting/g;->r:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcn/nubia/camera/lightpainting/g;->g:Lcom/android/preference/PreferenceGroup;

    .line 61
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/g;->a:Lcn/nubia/camera/ad/a;

    const p3, 0x7f090357

    .line 62
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/camera/lightpainting/g;->b:Landroid/view/View;

    const/4 p3, 0x1

    .line 63
    invoke-virtual {p0, p3}, Lcn/nubia/camera/lightpainting/g;->a(Z)V

    .line 64
    invoke-direct {p0, p2, p6}, Lcn/nubia/camera/lightpainting/g;->a(Landroid/view/View;Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    .line 65
    invoke-direct {p0, p2, p5}, Lcn/nubia/camera/lightpainting/g;->b(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-direct {p0, p2, p5}, Lcn/nubia/camera/lightpainting/g;->c(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-direct {p0, p2, p5}, Lcn/nubia/camera/lightpainting/g;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-direct {p0, p2, p5}, Lcn/nubia/camera/lightpainting/g;->d(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p2, p0, Lcn/nubia/camera/lightpainting/g;->b:Landroid/view/View;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;ILandroid/content/res/Resources;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    const v0, 0x7f0900a8

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/g;->m:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900a7

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object p1, p0, Lcn/nubia/camera/lightpainting/g;->n:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 79
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/g;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V
    .locals 1

    const v0, 0x7f0902f7

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/g;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f0902f9

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/g;->f:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 125
    invoke-virtual {v0, p2}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setOnShutterButtonListener(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    const p2, 0x7f0902cd

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/common/ui/NubiaProgressWheel;

    iput-object p2, p0, Lcn/nubia/camera/lightpainting/g;->d:Lcom/android/common/ui/NubiaProgressWheel;

    const p2, 0x7f0902f8

    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object p1, p0, Lcn/nubia/camera/lightpainting/g;->e:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    return-void
.end method

.method private b(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    const v0, 0x7f090079

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/g;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f09007a

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateImageView;

    iput-object p1, p0, Lcn/nubia/camera/lightpainting/g;->i:Lcom/android/common/ui/RotateImageView;

    .line 85
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/g;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/g;->h:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private b(Z)V
    .locals 4

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->m:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 150
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->n:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 155
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->n:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method private c(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    const v0, 0x7f090345

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/g;->l:Landroid/widget/RelativeLayout;

    const v0, 0x7f090344

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/g;->k:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f090343

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/camera/lightpainting/g;->j:Landroid/widget/ImageView;

    .line 95
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/g;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private d(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    const v0, 0x7f09024a

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/g;->o:Lcom/android/common/ui/RotateImageView;

    .line 100
    invoke-virtual {v0, p2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09010e

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateImageView;

    iput-object p1, p0, Lcn/nubia/camera/lightpainting/g;->p:Lcom/android/common/ui/RotateImageView;

    .line 102
    invoke-virtual {p1, p2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private h()Z
    .locals 4

    .line 187
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/g;->a:Lcn/nubia/camera/ad/a;

    .line 188
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f01f1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_light_draw_step"

    .line 187
    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    const-string v2, "pref_manual_cct"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "0"

    .line 191
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7fffffff

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v3
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->o:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    const/16 v0, 0x8

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 109
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/g;->o:Lcom/android/common/ui/RotateImageView;

    const p2, 0x7f08033a

    invoke-virtual {p1, p2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 110
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/g;->p:Lcom/android/common/ui/RotateImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/g;->o:Lcom/android/common/ui/RotateImageView;

    const p2, 0x7f080338

    invoke-virtual {p1, p2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 113
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/g;->p:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/g;->p:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->b:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 230
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/g;->b:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 225
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/g;->b:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :cond_2
    :goto_0
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    sget-object v0, Lcn/nubia/camera/af/a;->i:Lcn/nubia/camera/af/a;

    invoke-virtual {p1, v1, v0}, Lcn/nubia/camera/ba/f;->d(ZLcn/nubia/camera/af/a;)V

    :cond_4
    return-void
.end method

.method public a()[Landroid/view/View;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    .line 73
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/g;->i:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/g;->k:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/g;->o:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/g;->p:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, v0}, Lcn/nubia/camera/lightpainting/g;->a(Z)V

    .line 132
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/g;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/g;->d:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/g;->d:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v1}, Lcom/android/common/ui/NubiaProgressWheel;->a()V

    .line 135
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/g;->e:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/g;->e:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b(Z)V

    .line 137
    invoke-virtual {p0, v0, v0}, Lcn/nubia/camera/lightpainting/g;->a(IZ)V

    .line 138
    invoke-direct {p0, v2}, Lcn/nubia/camera/lightpainting/g;->b(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->d:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->b()V

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->d:Lcom/android/common/ui/NubiaProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->e:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V

    .line 145
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->e:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->l:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 162
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->k:Lcom/android/common/ui/RotateImageView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setAlpha(F)V

    return-void
.end method

.method public e()V
    .locals 4

    .line 166
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->g:Lcom/android/preference/PreferenceGroup;

    const-string v1, "pref_lightdraw_flashmode_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 171
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void

    .line 175
    :cond_1
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->n()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/g;->h()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->l:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->k:Lcom/android/common/ui/RotateImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setAlpha(F)V

    goto :goto_1

    .line 176
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    :goto_1
    return-void
.end method

.method public f()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->d:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->b()V

    .line 201
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->d:Lcom/android/common/ui/NubiaProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->e:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->c()V

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->e:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v2, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    .line 205
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->e:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->l:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 208
    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/lightpainting/g;->a(IZ)V

    .line 209
    invoke-direct {p0, v2}, Lcn/nubia/camera/lightpainting/g;->b(Z)V

    return-void
.end method

.method public g()Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/g;->f:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->performClick()Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
