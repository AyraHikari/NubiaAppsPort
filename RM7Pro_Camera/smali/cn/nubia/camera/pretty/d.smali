.class public Lcn/nubia/camera/pretty/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/pretty/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/pretty/d$c;,
        Lcn/nubia/camera/pretty/d$a;,
        Lcn/nubia/camera/pretty/d$b;
    }
.end annotation


# instance fields
.field private A:Lcn/nubia/camera/pretty/WaterDropSeekbar;

.field private B:Landroid/widget/RelativeLayout;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Lcn/nubia/camera/extendedUI/a;

.field private G:Z

.field private H:Landroid/os/Handler;

.field private I:Lcn/nubia/camera/pretty/d$b;

.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/pretty/a$b;

.field private c:Lcn/nubia/camera/pretty/a$a;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private final t:I

.field private u:Landroid/view/View;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/ImageView;

.field private z:Lcn/nubia/camera/pretty/WaterDropSeekbar;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;ZI)V
    .locals 3

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcn/nubia/camera/pretty/d;->d:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lcn/nubia/camera/pretty/d;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 60
    iput-boolean v1, p0, Lcn/nubia/camera/pretty/d;->f:Z

    .line 61
    iput-boolean v1, p0, Lcn/nubia/camera/pretty/d;->g:Z

    .line 62
    iput-object v0, p0, Lcn/nubia/camera/pretty/d;->h:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcn/nubia/camera/pretty/d;->i:Ljava/lang/String;

    const/4 v2, -0x1

    .line 68
    iput v2, p0, Lcn/nubia/camera/pretty/d;->j:I

    const/high16 v2, -0x1000000

    .line 69
    iput v2, p0, Lcn/nubia/camera/pretty/d;->k:I

    .line 89
    iput-object v0, p0, Lcn/nubia/camera/pretty/d;->B:Landroid/widget/RelativeLayout;

    .line 96
    iput-boolean v1, p0, Lcn/nubia/camera/pretty/d;->G:Z

    .line 98
    new-instance v1, Lcn/nubia/camera/pretty/d$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/pretty/d$1;-><init>(Lcn/nubia/camera/pretty/d;)V

    iput-object v1, p0, Lcn/nubia/camera/pretty/d;->H:Landroid/os/Handler;

    .line 118
    iput-object p1, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    .line 119
    iput-boolean p2, p0, Lcn/nubia/camera/pretty/d;->C:Z

    .line 120
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07012d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/pretty/d;->l:I

    .line 121
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070136

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/pretty/d;->m:I

    .line 122
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700c6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/pretty/d;->n:I

    .line 123
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700f6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/pretty/d;->o:I

    .line 124
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07008a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/pretty/d;->p:I

    .line 125
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700d5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/pretty/d;->r:I

    .line 126
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700be

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/pretty/d;->q:I

    .line 127
    new-instance p1, Lcn/nubia/camera/pretty/d$a;

    invoke-direct {p1, p0, v0}, Lcn/nubia/camera/pretty/d$a;-><init>(Lcn/nubia/camera/pretty/d;Lcn/nubia/camera/pretty/d$1;)V

    iput-object p1, p0, Lcn/nubia/camera/pretty/d;->I:Lcn/nubia/camera/pretty/d$b;

    .line 128
    iput p3, p0, Lcn/nubia/camera/pretty/d;->s:I

    .line 129
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    .line 130
    iput p1, p0, Lcn/nubia/camera/pretty/d;->t:I

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    .line 133
    iput p1, p0, Lcn/nubia/camera/pretty/d;->t:I

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/view/View;IIII)Ljava/lang/Runnable;
    .locals 9

    .line 547
    new-instance v8, Lcn/nubia/camera/pretty/d$3;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move v3, p5

    move v4, p6

    move v5, p3

    move v6, p4

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/pretty/d$3;-><init>(Lcn/nubia/camera/pretty/d;Landroid/view/View;IIIILjava/lang/String;)V

    return-object v8
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .line 179
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    .line 180
    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v0

    .line 181
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 182
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 183
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V
    .locals 1

    const v0, 0x7f080265

    .line 598
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/4 p3, 0x0

    .line 599
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 600
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 601
    iget p3, p0, Lcn/nubia/camera/pretty/d;->j:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 603
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    const/4 v0, -0x2

    .line 604
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 605
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    iget-object p2, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07012c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 609
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 611
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 616
    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p6, :cond_0

    const p4, 0x7f0801ee

    goto :goto_0

    :cond_0
    const p4, 0x7f0801ef

    .line 618
    :goto_0
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    if-eqz p5, :cond_1

    const p4, 0x7f0801ec

    goto :goto_1

    :cond_1
    const p4, 0x7f0801ed

    .line 621
    :goto_1
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    if-eqz p5, :cond_2

    .line 624
    iget p4, p0, Lcn/nubia/camera/pretty/d;->k:I

    goto :goto_2

    :cond_2
    iget p4, p0, Lcn/nubia/camera/pretty/d;->j:I

    :goto_2
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p6, :cond_3

    .line 625
    iget p4, p0, Lcn/nubia/camera/pretty/d;->k:I

    goto :goto_3

    :cond_3
    iget p4, p0, Lcn/nubia/camera/pretty/d;->j:I

    :goto_3
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextColor(I)V

    const p4, 0x7f0801f0

    .line 626
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 628
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    .line 629
    iget p5, p0, Lcn/nubia/camera/pretty/d;->l:I

    iput p5, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 630
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    iget-object p3, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070089

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4, p4, p4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 633
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    invoke-direct {p3, p5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    iget p5, p0, Lcn/nubia/camera/pretty/d;->l:I

    iput p5, p3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 635
    iput p4, p3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 636
    iput p4, p3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 637
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    invoke-virtual {p2, p4, p4, p4, p4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 640
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    iget p3, p0, Lcn/nubia/camera/pretty/d;->l:I

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 642
    iput p4, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 643
    iput p4, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 644
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/d;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcn/nubia/camera/pretty/d;->h()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/d;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/d;->d(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/d;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/d;->f:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f090259

    .line 320
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/pretty/d;->w:Landroid/widget/TextView;

    const v0, 0x7f09025c

    .line 321
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/pretty/WaterDropSeekbar;

    iput-object p1, p0, Lcn/nubia/camera/pretty/d;->z:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    .line 323
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->w:Landroid/widget/TextView;

    new-instance v0, Lcn/nubia/camera/pretty/d$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/pretty/d$4;-><init>(Lcn/nubia/camera/pretty/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->z:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    new-instance v0, Lcn/nubia/camera/pretty/d$5;

    invoke-direct {v0, p0}, Lcn/nubia/camera/pretty/d$5;-><init>(Lcn/nubia/camera/pretty/d;)V

    iget v1, p0, Lcn/nubia/camera/pretty/d;->t:I

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a(Lcn/nubia/camera/pretty/WaterDropSeekbar$a;II)V

    .line 374
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->z:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/pretty/d;->s:I

    const-string v2, "pref_camera_pretty_slimming"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setProgress(I)V

    .line 375
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->z:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    new-instance v0, Lcn/nubia/camera/pretty/d$6;

    invoke-direct {v0, p0}, Lcn/nubia/camera/pretty/d$6;-><init>(Lcn/nubia/camera/pretty/d;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setOnSeekBarChangeListener(Lcn/nubia/camera/pretty/WaterDropSeekbar$b;)V

    return-void
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 2

    const v0, 0x7f09006b

    .line 304
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/pretty/d;->d:Landroid/widget/TextView;

    .line 305
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 306
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->d:Landroid/widget/TextView;

    const v0, 0x7f0f0029

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->d:Landroid/widget/TextView;

    const v0, 0x7f0f0028

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 310
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;ILandroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/pretty/d;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/d;->g:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/pretty/d;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/camera/pretty/d;->w:Landroid/widget/TextView;

    return-object p0
.end method

.method private c(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f090070

    .line 395
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/pretty/d;->x:Landroid/widget/TextView;

    const v0, 0x7f090071

    .line 396
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/pretty/WaterDropSeekbar;

    iput-object p1, p0, Lcn/nubia/camera/pretty/d;->A:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    .line 398
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->x:Landroid/widget/TextView;

    new-instance v0, Lcn/nubia/camera/pretty/d$7;

    invoke-direct {v0, p0}, Lcn/nubia/camera/pretty/d$7;-><init>(Lcn/nubia/camera/pretty/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->A:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    new-instance v0, Lcn/nubia/camera/pretty/d$8;

    invoke-direct {v0, p0}, Lcn/nubia/camera/pretty/d$8;-><init>(Lcn/nubia/camera/pretty/d;)V

    iget-object v1, p0, Lcn/nubia/camera/pretty/d;->I:Lcn/nubia/camera/pretty/d$b;

    .line 449
    invoke-interface {v1}, Lcn/nubia/camera/pretty/d$b;->a()I

    move-result v1

    const/4 v2, 0x6

    .line 434
    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a(Lcn/nubia/camera/pretty/WaterDropSeekbar$a;II)V

    .line 450
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->A:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->I:Lcn/nubia/camera/pretty/d$b;

    iget-object v1, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    const-string v2, "pref_bigaperture_focus_length"

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v1, v2, v3}, Lcom/android/preference/c;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/camera/pretty/d$b;->a(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setProgress(I)V

    .line 452
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->A:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    new-instance v0, Lcn/nubia/camera/pretty/d$9;

    invoke-direct {v0, p0}, Lcn/nubia/camera/pretty/d$9;-><init>(Lcn/nubia/camera/pretty/d;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setOnSeekBarChangeListener(Lcn/nubia/camera/pretty/WaterDropSeekbar$b;)V

    return-void
.end method

.method private c(Landroid/view/ViewGroup;)V
    .locals 1

    const v0, 0x7f09025e

    .line 314
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/pretty/d;->e:Landroid/widget/TextView;

    const p1, 0x7f0f02d6

    .line 315
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/d;->e(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/pretty/d;->i:Ljava/lang/String;

    const p1, 0x7f0f02d5

    .line 316
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/d;->e(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/pretty/d;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/pretty/d;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/d;->G:Z

    return p1
.end method

.method static synthetic d(Lcn/nubia/camera/pretty/d;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/camera/pretty/d;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method private d(I)V
    .locals 2

    .line 679
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_pretty_slimming"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_pretty_smooth"

    .line 680
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_pretty_toning"

    .line 681
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 682
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090173

    .line 475
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/camera/pretty/d;->y:Landroid/widget/ImageView;

    .line 476
    new-instance v0, Lcn/nubia/camera/pretty/d$10;

    invoke-direct {v0, p0}, Lcn/nubia/camera/pretty/d$10;-><init>(Lcn/nubia/camera/pretty/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/pretty/d;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/d;->D:Z

    return p1
.end method

.method static synthetic e(Lcn/nubia/camera/pretty/d;)I
    .locals 0

    .line 43
    iget p0, p0, Lcn/nubia/camera/pretty/d;->j:I

    return p0
.end method

.method private e(I)Ljava/lang/String;
    .locals 1

    .line 686
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09025a

    .line 497
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/pretty/d;->u:Landroid/view/View;

    const v0, 0x7f090172

    .line 498
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcn/nubia/camera/pretty/d;->v:Landroid/widget/LinearLayout;

    .line 499
    new-instance v0, Lcn/nubia/camera/pretty/d$11;

    invoke-direct {v0, p0}, Lcn/nubia/camera/pretty/d$11;-><init>(Lcn/nubia/camera/pretty/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private e()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/d;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->u:Landroid/view/View;

    .line 300
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic e(Lcn/nubia/camera/pretty/d;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/d;->E:Z

    return p1
.end method

.method static synthetic f(Lcn/nubia/camera/pretty/d;)I
    .locals 0

    .line 43
    iget p0, p0, Lcn/nubia/camera/pretty/d;->k:I

    return p0
.end method

.method private f()V
    .locals 9

    .line 530
    invoke-direct {p0}, Lcn/nubia/camera/pretty/d;->j()Z

    move-result v0

    .line 531
    invoke-direct {p0}, Lcn/nubia/camera/pretty/d;->k()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 533
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->w:Landroid/widget/TextView;

    iget v8, p0, Lcn/nubia/camera/pretty/d;->p:I

    const/4 v6, 0x0

    const-string v3, "PrettyTabButton"

    move-object v2, p0

    move-object v4, v0

    move v5, v8

    move v7, v8

    invoke-direct/range {v2 .. v8}, Lcn/nubia/camera/pretty/d;->a(Ljava/lang/String;Landroid/view/View;IIII)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 534
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->x:Landroid/widget/TextView;

    const/4 v5, 0x0

    iget v8, p0, Lcn/nubia/camera/pretty/d;->p:I

    const-string v3, "BokehTabButton"

    move-object v4, v0

    move v7, v8

    invoke-direct/range {v2 .. v8}, Lcn/nubia/camera/pretty/d;->a(Ljava/lang/String;Landroid/view/View;IIII)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 535
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->y:Landroid/widget/ImageView;

    iget v8, p0, Lcn/nubia/camera/pretty/d;->p:I

    const-string v3, "ArrowTab"

    move-object v4, v0

    move v6, v8

    move v7, v8

    invoke-direct/range {v2 .. v8}, Lcn/nubia/camera/pretty/d;->a(Ljava/lang/String;Landroid/view/View;IIII)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->w:Landroid/widget/TextView;

    iget v5, p0, Lcn/nubia/camera/pretty/d;->q:I

    const/4 v6, 0x0

    iget v8, p0, Lcn/nubia/camera/pretty/d;->p:I

    const-string v3, "PrettyTabButton"

    move-object v2, p0

    move-object v4, v0

    move v7, v8

    invoke-direct/range {v2 .. v8}, Lcn/nubia/camera/pretty/d;->a(Ljava/lang/String;Landroid/view/View;IIII)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 538
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->y:Landroid/widget/ImageView;

    const/4 v5, 0x0

    iget v8, p0, Lcn/nubia/camera/pretty/d;->r:I

    const-string v3, "ArrowTab"

    move-object v4, v0

    move v6, v8

    move v7, v8

    invoke-direct/range {v2 .. v8}, Lcn/nubia/camera/pretty/d;->a(Ljava/lang/String;Landroid/view/View;IIII)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 540
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->x:Landroid/widget/TextView;

    iget v5, p0, Lcn/nubia/camera/pretty/d;->q:I

    const/4 v6, 0x0

    iget v8, p0, Lcn/nubia/camera/pretty/d;->p:I

    const-string v3, "BokehTabButton"

    move-object v2, p0

    move-object v4, v0

    move v7, v8

    invoke-direct/range {v2 .. v8}, Lcn/nubia/camera/pretty/d;->a(Ljava/lang/String;Landroid/view/View;IIII)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 541
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->y:Landroid/widget/ImageView;

    const/4 v5, 0x0

    iget v8, p0, Lcn/nubia/camera/pretty/d;->r:I

    const-string v3, "ArrowTab"

    move-object v4, v0

    move v6, v8

    move v7, v8

    invoke-direct/range {v2 .. v8}, Lcn/nubia/camera/pretty/d;->a(Ljava/lang/String;Landroid/view/View;IIII)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private f(Landroid/view/View;)V
    .locals 8

    .line 510
    new-instance v7, Lcn/nubia/camera/extendedUI/a;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    iget p1, p0, Lcn/nubia/camera/pretty/d;->m:I

    int-to-float v4, p1

    const-string v2, "translationY"

    const/4 v3, 0x0

    const-wide/16 v5, 0x1f4

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/extendedUI/a;-><init>([Ljava/lang/Object;Ljava/lang/String;FFJ)V

    iput-object v7, p0, Lcn/nubia/camera/pretty/d;->F:Lcn/nubia/camera/extendedUI/a;

    .line 513
    new-instance p1, Lcn/nubia/camera/pretty/d$2;

    invoke-direct {p1, p0}, Lcn/nubia/camera/pretty/d$2;-><init>(Lcn/nubia/camera/pretty/d;)V

    invoke-virtual {v7, p1}, Lcn/nubia/camera/extendedUI/a;->a(Lcn/nubia/camera/extendedUI/a$a;)V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/pretty/WaterDropSeekbar;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/camera/pretty/d;->A:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 581
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/d;->D:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->F:Lcn/nubia/camera/extendedUI/a;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/a;->a()V

    .line 583
    iput-boolean v1, p0, Lcn/nubia/camera/pretty/d;->E:Z

    .line 584
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->c:Lcn/nubia/camera/pretty/a$a;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 585
    invoke-interface {v0, v1}, Lcn/nubia/camera/pretty/a$a;->a(Z)V

    goto :goto_0

    .line 588
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->F:Lcn/nubia/camera/extendedUI/a;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/a;->b()V

    .line 589
    iput-boolean v1, p0, Lcn/nubia/camera/pretty/d;->E:Z

    .line 590
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->c:Lcn/nubia/camera/pretty/a$a;

    if-eqz v0, :cond_1

    .line 591
    invoke-interface {v0, v1}, Lcn/nubia/camera/pretty/a$a;->a(Z)V

    .line 593
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/pretty/WaterDropSeekbar;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/camera/pretty/d;->z:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 666
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 667
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 672
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/d;->D:Z

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->u:Landroid/view/View;

    iget v1, p0, Lcn/nubia/camera/pretty/d;->m:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x0

    .line 674
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/d;->D:Z

    :cond_0
    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/pretty/d;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcn/nubia/camera/pretty/d;->D:Z

    return p0
.end method

.method static synthetic j(Lcn/nubia/camera/pretty/d;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcn/nubia/camera/pretty/d;->g()V

    return-void
.end method

.method private j()Z
    .locals 3

    .line 690
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_pretty_switch_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcn/nubia/camera/pretty/d;)I
    .locals 0

    .line 43
    iget p0, p0, Lcn/nubia/camera/pretty/d;->t:I

    return p0
.end method

.method private k()Z
    .locals 3

    .line 694
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/camera/pretty/d;->C:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 700
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_bokeh_level_adjustable"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/pretty/a$b;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/camera/pretty/d;->b:Lcn/nubia/camera/pretty/a$b;

    return-object p0
.end method

.method private l()Z
    .locals 2

    .line 821
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/pretty/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private m()V
    .locals 3

    .line 832
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->u:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 833
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/pretty/d;->D:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ba/f;->a(ILcn/nubia/camera/af/a;)V

    goto :goto_1

    .line 835
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ba/f;->a(ILcn/nubia/camera/af/a;)V

    :goto_1
    return-void
.end method

.method static synthetic m(Lcn/nubia/camera/pretty/d;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcn/nubia/camera/pretty/d;->G:Z

    return p0
.end method

.method static synthetic n(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/pretty/d$b;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/camera/pretty/d;->I:Lcn/nubia/camera/pretty/d$b;

    return-object p0
.end method

.method static synthetic o(Lcn/nubia/camera/pretty/d;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcn/nubia/camera/pretty/d;->l()Z

    move-result p0

    return p0
.end method

.method static synthetic p(Lcn/nubia/camera/pretty/d;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcn/nubia/camera/pretty/d;->f()V

    return-void
.end method

.method static synthetic q(Lcn/nubia/camera/pretty/d;)Landroid/widget/ImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/camera/pretty/d;->y:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/camera/pretty/d;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcn/nubia/camera/pretty/d;->m()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 252
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/d;->d()V

    .line 253
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->u:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 254
    invoke-direct {p0}, Lcn/nubia/camera/pretty/d;->i()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->b:Lcn/nubia/camera/pretty/a$b;

    invoke-interface {v0}, Lcn/nubia/camera/pretty/a$b;->a()V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->u:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 270
    iget-object v1, p0, Lcn/nubia/camera/pretty/d;->u:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    invoke-direct {p0}, Lcn/nubia/camera/pretty/d;->m()V

    if-nez p1, :cond_0

    if-eq v0, p1, :cond_0

    .line 274
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ba/f;->c()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 3

    .line 164
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0087

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 165
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/d;->b(Landroid/view/ViewGroup;)V

    .line 166
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/d;->c(Landroid/view/ViewGroup;)V

    .line 167
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/d;->b(Landroid/view/View;)V

    .line 168
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/d;->c(Landroid/view/View;)V

    .line 169
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/d;->d(Landroid/view/View;)V

    .line 170
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/d;->e(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->u:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/d;->f(Landroid/view/View;)V

    .line 172
    invoke-direct {p0}, Lcn/nubia/camera/pretty/d;->f()V

    const v0, 0x7f090253

    .line 174
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/nubia/camera/pretty/d;->B:Landroid/widget/RelativeLayout;

    .line 175
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/d;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/pretty/a$b;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcn/nubia/camera/pretty/d;->b:Lcn/nubia/camera/pretty/a$b;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->A:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0, p1}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setEnabled(Z)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->z:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {v0, p1}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 261
    invoke-direct {p0}, Lcn/nubia/camera/pretty/d;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PortraitPrettySettingLayout"

    const-string v0, "Setting animating, prettyFragment consume the TouchEvent"

    .line 262
    invoke-static {p1, v0}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 1

    .line 280
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->u:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    .line 149
    iget v0, p0, Lcn/nubia/camera/pretty/d;->s:I

    if-ne v0, p1, :cond_0

    return-void

    .line 152
    :cond_0
    iput p1, p0, Lcn/nubia/camera/pretty/d;->s:I

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->z:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0, p1}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setProgress(I)V

    .line 155
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->z:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    invoke-virtual {p1}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->invalidate()V

    .line 157
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/pretty/d;->b:Lcn/nubia/camera/pretty/a$b;

    if-eqz p1, :cond_2

    .line 158
    invoke-interface {p1}, Lcn/nubia/camera/pretty/a$b;->a()V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 826
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 12

    .line 187
    invoke-direct {p0}, Lcn/nubia/camera/pretty/d;->j()Z

    move-result v0

    .line 188
    invoke-direct {p0}, Lcn/nubia/camera/pretty/d;->k()Z

    move-result v1

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrettySwitchOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; BokehLevelOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PortraitPrettySettingLayout"

    invoke-static {v3, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 191
    iget-object v4, p0, Lcn/nubia/camera/pretty/d;->u:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcn/nubia/camera/pretty/d;->x:Landroid/widget/TextView;

    .line 192
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcn/nubia/camera/pretty/d;->w:Landroid/widget/TextView;

    .line 193
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/pretty/d;->u:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->w:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 203
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->z:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->A:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setVisibility(I)V

    move v11, v3

    move v10, v4

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 205
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->x:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 207
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->z:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->A:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setVisibility(I)V

    move v10, v3

    move v11, v4

    .line 212
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v6, p0, Lcn/nubia/camera/pretty/d;->w:Landroid/widget/TextView;

    iget-object v7, p0, Lcn/nubia/camera/pretty/d;->x:Landroid/widget/TextView;

    iget-object v8, p0, Lcn/nubia/camera/pretty/d;->y:Landroid/widget/ImageView;

    iget-object v9, p0, Lcn/nubia/camera/pretty/d;->v:Landroid/widget/LinearLayout;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcn/nubia/camera/pretty/d;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;ZZ)V

    goto/16 :goto_1

    :cond_2
    return-void

    :cond_3
    if-eqz v0, :cond_5

    .line 218
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->u:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->x:Landroid/widget/TextView;

    .line 219
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->w:Landroid/widget/TextView;

    .line 220
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->z:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    .line 221
    invoke-virtual {v0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 224
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->u:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->A:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->z:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/camera/pretty/d;->y:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/camera/pretty/d;->v:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/pretty/d;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_7

    .line 231
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->u:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->x:Landroid/widget/TextView;

    .line 232
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->w:Landroid/widget/TextView;

    .line 233
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->A:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    .line 234
    invoke-virtual {v0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 237
    :cond_6
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->u:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->A:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->z:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/camera/pretty/d;->y:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/camera/pretty/d;->v:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/pretty/d;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    goto :goto_1

    .line 244
    :cond_7
    iget-object v0, p0, Lcn/nubia/camera/pretty/d;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :goto_1
    invoke-direct {p0}, Lcn/nubia/camera/pretty/d;->f()V

    .line 247
    invoke-direct {p0}, Lcn/nubia/camera/pretty/d;->m()V

    return-void
.end method
