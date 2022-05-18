.class public Lcn/nubia/camera/o/c;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/o/i$a;
.implements Lcn/nubia/camera/w/a$c;
.implements Lcn/nubia/camera/z/e;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/o/c$a;,
        Lcn/nubia/camera/o/c$b;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:F

.field private D:I

.field private E:J

.field private F:J

.field private G:Z

.field private H:Landroid/util/Size;

.field private I:Z

.field private J:Landroid/graphics/Bitmap;

.field private K:J

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/camera/o/a;",
            ">;"
        }
    .end annotation
.end field

.field private M:Lcn/nubia/camera/k/z;

.field private N:J

.field private O:Lcom/android/common/c/f$b;

.field public a:I

.field public b:I

.field public c:Lcn/nubia/camera/o/c$b;

.field private final i:Ljava/lang/String;

.field private j:Landroid/widget/RelativeLayout;

.field private final k:Ljava/lang/String;

.field private l:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

.field private m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private n:Lcom/android/common/ui/RotateTextImageView;

.field private o:Lcn/nubia/camera/o/g;

.field private p:Lcn/nubia/camera/o/h;

.field private q:Z

.field private r:Lcn/nubia/k/a/a;

.field private s:Ljava/lang/String;

.field private t:Landroid/widget/ImageView;

.field private u:Lcom/android/common/ui/NubiaProgressWheel;

.field private v:Lcn/nubia/camera/q/c;

.field private w:Lcn/nubia/camera/o/i;

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 160
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const-string v0, "ElectronicFnoFragment"

    .line 85
    iput-object v0, p0, Lcn/nubia/camera/o/c;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcn/nubia/camera/o/c;->j:Landroid/widget/RelativeLayout;

    const-string v1, "ui_change_electronicfno"

    .line 87
    iput-object v1, p0, Lcn/nubia/camera/o/c;->k:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcn/nubia/camera/o/c;->l:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 89
    iput-object v0, p0, Lcn/nubia/camera/o/c;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 90
    iput-object v0, p0, Lcn/nubia/camera/o/c;->n:Lcom/android/common/ui/RotateTextImageView;

    .line 91
    iput-object v0, p0, Lcn/nubia/camera/o/c;->o:Lcn/nubia/camera/o/g;

    .line 92
    iput-object v0, p0, Lcn/nubia/camera/o/c;->p:Lcn/nubia/camera/o/h;

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, p0, Lcn/nubia/camera/o/c;->q:Z

    .line 94
    iput-object v0, p0, Lcn/nubia/camera/o/c;->r:Lcn/nubia/k/a/a;

    .line 95
    iput-object v0, p0, Lcn/nubia/camera/o/c;->s:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcn/nubia/camera/o/c;->t:Landroid/widget/ImageView;

    .line 98
    iput-object v0, p0, Lcn/nubia/camera/o/c;->v:Lcn/nubia/camera/q/c;

    .line 100
    iput-object v0, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    .line 101
    iput v1, p0, Lcn/nubia/camera/o/c;->a:I

    .line 102
    iput v1, p0, Lcn/nubia/camera/o/c;->b:I

    const/4 v1, 0x0

    .line 103
    iput v1, p0, Lcn/nubia/camera/o/c;->x:I

    .line 104
    iput v1, p0, Lcn/nubia/camera/o/c;->y:I

    const-string v2, "11"

    .line 106
    iput-object v2, p0, Lcn/nubia/camera/o/c;->z:Ljava/lang/String;

    const-string v2, "0"

    .line 107
    iput-object v2, p0, Lcn/nubia/camera/o/c;->A:Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, Lcn/nubia/camera/o/c;->B:Z

    const/4 v2, 0x0

    .line 110
    iput v2, p0, Lcn/nubia/camera/o/c;->C:F

    .line 112
    new-instance v2, Lcn/nubia/camera/o/c$b;

    invoke-direct {v2, p0}, Lcn/nubia/camera/o/c$b;-><init>(Lcn/nubia/camera/o/c;)V

    iput-object v2, p0, Lcn/nubia/camera/o/c;->c:Lcn/nubia/camera/o/c$b;

    .line 113
    iput v1, p0, Lcn/nubia/camera/o/c;->D:I

    .line 117
    iput-boolean v1, p0, Lcn/nubia/camera/o/c;->G:Z

    .line 118
    iput-object v0, p0, Lcn/nubia/camera/o/c;->H:Landroid/util/Size;

    .line 119
    iput-boolean v1, p0, Lcn/nubia/camera/o/c;->I:Z

    .line 120
    iput-object v0, p0, Lcn/nubia/camera/o/c;->J:Landroid/graphics/Bitmap;

    const-wide/16 v1, 0x0

    .line 122
    iput-wide v1, p0, Lcn/nubia/camera/o/c;->K:J

    .line 124
    iput-object v0, p0, Lcn/nubia/camera/o/c;->L:Ljava/util/List;

    .line 126
    new-instance v0, Lcn/nubia/camera/o/c$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/o/c$1;-><init>(Lcn/nubia/camera/o/c;)V

    iput-object v0, p0, Lcn/nubia/camera/o/c;->M:Lcn/nubia/camera/k/z;

    .line 500
    iput-wide v1, p0, Lcn/nubia/camera/o/c;->N:J

    .line 995
    new-instance v0, Lcn/nubia/camera/o/c$6;

    invoke-direct {v0, p0}, Lcn/nubia/camera/o/c$6;-><init>(Lcn/nubia/camera/o/c;)V

    iput-object v0, p0, Lcn/nubia/camera/o/c;->O:Lcom/android/common/c/f$b;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 165
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const-string p1, "ElectronicFnoFragment"

    .line 85
    iput-object p1, p0, Lcn/nubia/camera/o/c;->i:Ljava/lang/String;

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcn/nubia/camera/o/c;->j:Landroid/widget/RelativeLayout;

    const-string v0, "ui_change_electronicfno"

    .line 87
    iput-object v0, p0, Lcn/nubia/camera/o/c;->k:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcn/nubia/camera/o/c;->l:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 89
    iput-object p1, p0, Lcn/nubia/camera/o/c;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 90
    iput-object p1, p0, Lcn/nubia/camera/o/c;->n:Lcom/android/common/ui/RotateTextImageView;

    .line 91
    iput-object p1, p0, Lcn/nubia/camera/o/c;->o:Lcn/nubia/camera/o/g;

    .line 92
    iput-object p1, p0, Lcn/nubia/camera/o/c;->p:Lcn/nubia/camera/o/h;

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcn/nubia/camera/o/c;->q:Z

    .line 94
    iput-object p1, p0, Lcn/nubia/camera/o/c;->r:Lcn/nubia/k/a/a;

    .line 95
    iput-object p1, p0, Lcn/nubia/camera/o/c;->s:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcn/nubia/camera/o/c;->t:Landroid/widget/ImageView;

    .line 98
    iput-object p1, p0, Lcn/nubia/camera/o/c;->v:Lcn/nubia/camera/q/c;

    .line 100
    iput-object p1, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    .line 101
    iput v0, p0, Lcn/nubia/camera/o/c;->a:I

    .line 102
    iput v0, p0, Lcn/nubia/camera/o/c;->b:I

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcn/nubia/camera/o/c;->x:I

    .line 104
    iput v0, p0, Lcn/nubia/camera/o/c;->y:I

    const-string v1, "11"

    .line 106
    iput-object v1, p0, Lcn/nubia/camera/o/c;->z:Ljava/lang/String;

    const-string v1, "0"

    .line 107
    iput-object v1, p0, Lcn/nubia/camera/o/c;->A:Ljava/lang/String;

    .line 109
    iput-boolean v0, p0, Lcn/nubia/camera/o/c;->B:Z

    const/4 v1, 0x0

    .line 110
    iput v1, p0, Lcn/nubia/camera/o/c;->C:F

    .line 112
    new-instance v1, Lcn/nubia/camera/o/c$b;

    invoke-direct {v1, p0}, Lcn/nubia/camera/o/c$b;-><init>(Lcn/nubia/camera/o/c;)V

    iput-object v1, p0, Lcn/nubia/camera/o/c;->c:Lcn/nubia/camera/o/c$b;

    .line 113
    iput v0, p0, Lcn/nubia/camera/o/c;->D:I

    .line 117
    iput-boolean v0, p0, Lcn/nubia/camera/o/c;->G:Z

    .line 118
    iput-object p1, p0, Lcn/nubia/camera/o/c;->H:Landroid/util/Size;

    .line 119
    iput-boolean v0, p0, Lcn/nubia/camera/o/c;->I:Z

    .line 120
    iput-object p1, p0, Lcn/nubia/camera/o/c;->J:Landroid/graphics/Bitmap;

    const-wide/16 v0, 0x0

    .line 122
    iput-wide v0, p0, Lcn/nubia/camera/o/c;->K:J

    .line 124
    iput-object p1, p0, Lcn/nubia/camera/o/c;->L:Ljava/util/List;

    .line 126
    new-instance p1, Lcn/nubia/camera/o/c$1;

    invoke-direct {p1, p0}, Lcn/nubia/camera/o/c$1;-><init>(Lcn/nubia/camera/o/c;)V

    iput-object p1, p0, Lcn/nubia/camera/o/c;->M:Lcn/nubia/camera/k/z;

    .line 500
    iput-wide v0, p0, Lcn/nubia/camera/o/c;->N:J

    .line 995
    new-instance p1, Lcn/nubia/camera/o/c$6;

    invoke-direct {p1, p0}, Lcn/nubia/camera/o/c$6;-><init>(Lcn/nubia/camera/o/c;)V

    iput-object p1, p0, Lcn/nubia/camera/o/c;->O:Lcom/android/common/c/f$b;

    return-void
.end method

.method private J()V
    .locals 4

    const-string v0, "ElectronicFnoFragment"

    const-string v1, "stop capture"

    .line 724
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 725
    invoke-direct {p0, v0}, Lcn/nubia/camera/o/c;->c(Z)V

    .line 726
    iget-object v1, p0, Lcn/nubia/camera/o/c;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v1, v0, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    .line 727
    iget-object v1, p0, Lcn/nubia/camera/o/c;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v2, Lcom/android/common/ui/shutterbutton/d;->a:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v1, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 728
    iget-object v1, p0, Lcn/nubia/camera/o/c;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 729
    iget-object v1, p0, Lcn/nubia/camera/o/c;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 730
    iget-object v1, p0, Lcn/nubia/camera/o/c;->u:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v1}, Lcom/android/common/ui/NubiaProgressWheel;->b()V

    .line 731
    iget-object v1, p0, Lcn/nubia/camera/o/c;->u:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v1, v2}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 732
    iget-object v1, p0, Lcn/nubia/camera/o/c;->t:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 733
    iget-object v1, p0, Lcn/nubia/camera/o/c;->t:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v1, "ui_change_electronicfno"

    .line 734
    invoke-virtual {p0, v1}, Lcn/nubia/camera/o/c;->c(Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0, v1}, Lcn/nubia/camera/o/c;->e(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/i;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/camera/q/i;->a_(Z)V

    .line 737
    iget-object v1, p0, Lcn/nubia/camera/o/c;->p:Lcn/nubia/camera/o/h;

    invoke-virtual {v1}, Lcn/nubia/camera/o/h;->e()V

    .line 738
    iput-boolean v0, p0, Lcn/nubia/camera/o/c;->I:Z

    .line 739
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v1, v2, :cond_0

    .line 740
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 742
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void
.end method

.method private K()V
    .locals 1

    .line 746
    iget-object v0, p0, Lcn/nubia/camera/o/c;->o:Lcn/nubia/camera/o/g;

    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {v0}, Lcn/nubia/camera/o/g;->a()V

    .line 748
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->h()V

    .line 750
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    if-eqz v0, :cond_1

    .line 751
    invoke-virtual {v0}, Lcn/nubia/camera/o/i;->a()I

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    invoke-virtual {v0}, Lcn/nubia/camera/o/i;->b()V

    const/4 v0, 0x0

    .line 753
    iput-object v0, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    :cond_1
    return-void
.end method

.method private L()V
    .locals 1

    .line 925
    iget-boolean v0, p0, Lcn/nubia/camera/o/c;->B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 926
    invoke-direct {p0, v0}, Lcn/nubia/camera/o/c;->f(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 928
    invoke-direct {p0, v0}, Lcn/nubia/camera/o/c;->f(I)V

    :goto_0
    return-void
.end method

.method private M()V
    .locals 3

    .line 946
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-eq v0, v1, :cond_2

    .line 947
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7f0f00ac

    .line 950
    invoke-virtual {p0, v0}, Lcn/nubia/camera/o/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 951
    iget-boolean v1, p0, Lcn/nubia/camera/o/c;->B:Z

    if-nez v1, :cond_1

    .line 952
    iget v0, p0, Lcn/nubia/camera/o/c;->b:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/camera/o/c;->C:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/o/c;->y:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcn/nubia/camera/o/c;->a(F)F

    move-result v0

    .line 953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 955
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/o/c;->L:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 956
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/o/c;->L:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 957
    iget-object v2, p0, Lcn/nubia/camera/o/c;->L:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/o/a;

    invoke-interface {v2, v0}, Lcn/nubia/camera/o/a;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private a(F)F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    .line 963
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1
.end method

.method private a(F[F)F
    .locals 4

    const/4 v0, 0x0

    .line 694
    aget v1, p2, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 695
    aget p1, p2, v0

    return p1

    .line 697
    :cond_0
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget v1, p2, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    .line 698
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget p1, p2, p1

    return p1

    :cond_1
    move v1, v0

    .line 701
    :goto_0
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    .line 702
    aget v3, p2, v2

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 705
    :cond_2
    aget v0, p2, v1

    sub-float v0, p1, v0

    .line 706
    aget v3, p2, v2

    sub-float/2addr v3, p1

    cmpl-float p1, v0, v3

    if-ltz p1, :cond_3

    .line 708
    aget p1, p2, v2

    return p1

    .line 710
    :cond_3
    aget p1, p2, v1

    return p1

    .line 713
    :cond_4
    aget p1, p2, v0

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/o/c;J)J
    .locals 0

    .line 79
    iput-wide p1, p0, Lcn/nubia/camera/o/c;->K:J

    return-wide p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;
    .locals 2

    .line 844
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 845
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".jpg"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "_display_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p3, "datetaken"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 848
    invoke-static {p2}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 850
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 851
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 854
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 855
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-object v0
.end method

.method private a(J)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 861
    iget-wide v0, p0, Lcn/nubia/camera/o/c;->F:J

    iget-wide v2, p0, Lcn/nubia/camera/o/c;->E:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 862
    iget-object v1, p0, Lcn/nubia/camera/o/c;->z:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 863
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 864
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 865
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 866
    sget v4, Lcn/nubia/d/a;->g:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 867
    sget v4, Lcn/nubia/d/a;->h:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 868
    sget v4, Lcn/nubia/d/a;->ad:I

    new-instance v5, Lcn/nubia/d/l;

    const/4 v6, 0x0

    aget v3, v3, v6

    const v6, 0x3c23d70a    # 0.01f

    invoke-direct {v5, v3, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 869
    sget v3, Lcn/nubia/d/a;->G:I

    new-instance v4, Lcn/nubia/d/l;

    invoke-direct {v4, v0, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 870
    sget v0, Lcn/nubia/d/a;->H:I

    new-instance v3, Lcn/nubia/d/l;

    invoke-direct {v3, v1, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 871
    invoke-static {v2, p1, p2}, Lcn/nubia/camera/ba/a;->a(Landroid/util/SparseArray;J)V

    .line 872
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 874
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2, v2}, Lcn/nubia/camera/ba/a;->a(DDLandroid/util/SparseArray;)V

    .line 876
    :cond_0
    invoke-direct {p0, v2}, Lcn/nubia/camera/o/c;->a(Landroid/util/SparseArray;)V

    return-object v2
.end method

.method static synthetic a(Lcn/nubia/camera/o/c;)Lcn/nubia/camera/o/i;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    return-object p0
.end method

.method private a(Landroid/graphics/Bitmap;II)V
    .locals 25

    move-object/from16 v8, p0

    .line 758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 759
    invoke-static {v9, v10}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v11

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/o/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 764
    :cond_0
    iget-object v0, v8, Lcn/nubia/camera/o/c;->r:Lcn/nubia/k/a/a;

    sget-object v1, Lcn/nubia/camera/af/a;->c:Lcn/nubia/camera/af/a;

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v12, v0

    .line 766
    invoke-static/range {p1 .. p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 767
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    .line 772
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 773
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move-wide v3, v9

    .line 768
    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/o/c;->a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;

    move-result-object v21

    .line 775
    new-instance v0, Lcn/nubia/k/b/b;

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/o/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 777
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v15

    iget-object v1, v8, Lcn/nubia/camera/o/c;->r:Lcn/nubia/k/a/a;

    .line 780
    invoke-direct {v8, v9, v10}, Lcn/nubia/camera/o/c;->a(J)Landroid/util/SparseArray;

    move-result-object v18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    new-instance v2, Lcn/nubia/m/b;

    const/4 v3, 0x0

    .line 786
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcn/nubia/m/b;-><init>(II)V

    move-object v13, v0

    move-object/from16 v16, v1

    move-object/from16 v24, v2

    invoke-direct/range {v13 .. v24}, Lcn/nubia/k/b/b;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;Landroid/graphics/Bitmap;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcn/nubia/k/b/d;Lcn/nubia/m/b;)V

    .line 787
    iget-object v1, v8, Lcn/nubia/camera/o/c;->r:Lcn/nubia/k/a/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    return-void
.end method

.method private a(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 881
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 882
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_picture_artist_info"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 883
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 885
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 887
    :cond_0
    sget v1, Lcn/nubia/d/a;->u:I

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/o/c;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/camera/o/c;->f(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/o/c;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/o/c;->a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .line 479
    iput-object p1, p0, Lcn/nubia/camera/o/c;->z:Ljava/lang/String;

    .line 480
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    .line 481
    iput-boolean p1, p0, Lcn/nubia/camera/o/c;->B:Z

    .line 482
    iput v1, p0, Lcn/nubia/camera/o/c;->a:I

    .line 483
    iput v2, p0, Lcn/nubia/camera/o/c;->y:I

    .line 484
    iput v2, p0, Lcn/nubia/camera/o/c;->x:I

    goto :goto_0

    .line 486
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 487
    iput-boolean v2, p0, Lcn/nubia/camera/o/c;->B:Z

    float-to-double v0, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 488
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/nubia/camera/o/c;->a:I

    .line 489
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNumWanted == "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/o/c;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ElectronicFnoFragment"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget p1, p0, Lcn/nubia/camera/o/c;->a:I

    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    .line 491
    iget v0, p0, Lcn/nubia/camera/o/c;->x:I

    add-int/lit8 v0, v0, 0xa

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcn/nubia/camera/o/c;->b:I

    .line 492
    iput v2, p0, Lcn/nubia/camera/o/c;->y:I

    goto :goto_0

    .line 494
    :cond_1
    iget v0, p0, Lcn/nubia/camera/o/c;->x:I

    iput v0, p0, Lcn/nubia/camera/o/c;->y:I

    .line 495
    iput p1, p0, Lcn/nubia/camera/o/c;->b:I

    .line 498
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->r()V

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 25

    move-object/from16 v8, p0

    move-object/from16 v15, p4

    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcn/nubia/camera/o/c;->F:J

    .line 793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 796
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    .line 797
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/o/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 799
    :cond_0
    iget-object v0, v8, Lcn/nubia/camera/o/c;->s:Ljava/lang/String;

    :goto_0
    move-object v11, v0

    .line 801
    invoke-static {v9, v10}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v12

    .line 802
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v0

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v14, "ElectronicFnoFragment"

    invoke-static {v14, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v0, 0x5a

    int-to-float v2, v1

    .line 804
    invoke-virtual {v15, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 805
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 808
    rem-int/lit16 v0, v0, 0xb4

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x5a

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v24, v3

    move v3, v2

    move/from16 v2, v24

    .line 815
    :goto_1
    invoke-virtual {v15, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 818
    :cond_2
    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_3

    move/from16 v5, p2

    move/from16 v6, p3

    goto :goto_2

    :cond_3
    move/from16 v6, p2

    move/from16 v5, p3

    :goto_2
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    move-wide v3, v9

    .line 825
    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/o/c;->a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;

    move-result-object v21

    .line 832
    new-instance v0, Lcn/nubia/k/b/c;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/o/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 833
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v2

    iget-object v3, v8, Lcn/nubia/camera/o/c;->r:Lcn/nubia/k/a/a;

    const/16 v17, 0x64

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 834
    invoke-direct {v8, v9, v10}, Lcn/nubia/camera/o/c;->a(J)Landroid/util/SparseArray;

    move-result-object v20

    const/16 v22, 0x0

    new-instance v4, Lcn/nubia/m/b;

    const/4 v5, 0x0

    .line 835
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcn/nubia/m/b;-><init>(II)V

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object/from16 v13, p1

    move-object v1, v14

    move/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v23, v4

    invoke-direct/range {v9 .. v23}, Lcn/nubia/k/b/c;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;ILjava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/content/ContentValues;Lcn/nubia/k/b/d;Lcn/nubia/m/b;)V

    .line 836
    iget-object v2, v8, Lcn/nubia/camera/o/c;->r:Lcn/nubia/k/a/a;

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    .line 837
    invoke-virtual {v2, v0, v3}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    move-result-object v0

    .line 838
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRequest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/o/c;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcn/nubia/camera/o/c;->I:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/o/c;)Lcn/nubia/camera/o/h;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/o/c;->p:Lcn/nubia/camera/o/h;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/o/c;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcn/nubia/camera/o/c;->q:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/o/c;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->K()V

    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/h;->f(Z)V

    return-void
.end method

.method private c(Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 893
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/z/b;->a(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method static synthetic d(Lcn/nubia/camera/o/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method public static d()Lcn/nubia/camera/o/c;
    .locals 2

    .line 169
    new-instance v0, Lcn/nubia/camera/o/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/o/c;-><init>(I)V

    return-object v0
.end method

.method private d(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0902f7

    .line 267
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/o/c;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f0902f9

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iput-object v0, p0, Lcn/nubia/camera/o/c;->l:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 269
    invoke-virtual {v0, p0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setOnShutterButtonListener(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    const v0, 0x7f0902f8

    .line 270
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object v0, p0, Lcn/nubia/camera/o/c;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const v0, 0x7f09007a

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateTextImageView;

    iput-object v0, p0, Lcn/nubia/camera/o/c;->n:Lcom/android/common/ui/RotateTextImageView;

    .line 272
    new-instance v1, Lcn/nubia/camera/o/c$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/o/c$2;-><init>(Lcn/nubia/camera/o/c;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090003

    .line 284
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/o/c;->t:Landroid/widget/ImageView;

    const v0, 0x7f0902cd

    .line 285
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/NubiaProgressWheel;

    iput-object p1, p0, Lcn/nubia/camera/o/c;->u:Lcom/android/common/ui/NubiaProgressWheel;

    .line 286
    iget-object p1, p0, Lcn/nubia/camera/o/c;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/o/c;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/o/c;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcn/nubia/camera/o/c;->q:Z

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/o/c;)Lcn/nubia/camera/o/g;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/o/c;->o:Lcn/nubia/camera/o/g;

    return-object p0
.end method

.method private f(I)V
    .locals 1

    .line 921
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/j/a;->b(I)V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 2

    .line 533
    iput-object p1, p0, Lcn/nubia/camera/o/c;->A:Ljava/lang/String;

    .line 534
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->r()V

    .line 535
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/camera/o/c;->x:I

    .line 537
    iget v0, p0, Lcn/nubia/camera/o/c;->a:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 538
    iput v0, p0, Lcn/nubia/camera/o/c;->b:I

    .line 539
    iput p1, p0, Lcn/nubia/camera/o/c;->y:I

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0xa

    mul-int/2addr v0, p1

    .line 541
    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcn/nubia/camera/o/c;->b:I

    const/4 p1, 0x0

    .line 542
    iput p1, p0, Lcn/nubia/camera/o/c;->y:I

    .line 544
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->M()V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/o/c;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcn/nubia/camera/o/c;->B:Z

    return p0
.end method

.method static synthetic h(Lcn/nubia/camera/o/c;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/o/c;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/camera/o/c;)Lcom/android/common/ui/NubiaProgressWheel;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/o/c;->u:Lcom/android/common/ui/NubiaProgressWheel;

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/camera/o/c;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->J()V

    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/o/c;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->L()V

    return-void
.end method

.method static synthetic l(Lcn/nubia/camera/o/c;)J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcn/nubia/camera/o/c;->K:J

    return-wide v0
.end method

.method private m()V
    .locals 2

    .line 152
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->c:Lcn/nubia/camera/af/a;

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/o/c;->s:Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/camera/o/c;->s:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-void
.end method

.method static synthetic m(Lcn/nubia/camera/o/c;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->r()V

    return-void
.end method

.method static synthetic n(Lcn/nubia/camera/o/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private n()V
    .locals 3

    .line 340
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/i;->a_(Z)V

    .line 341
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->o()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 342
    iput-boolean v2, p0, Lcn/nubia/camera/o/c;->G:Z

    .line 343
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->p()V

    goto :goto_0

    .line 345
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/camera/o/c;->G:Z

    .line 346
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->q()V

    .line 348
    :goto_0
    invoke-direct {p0, v2}, Lcn/nubia/camera/o/c;->c(Z)V

    const-string v0, "ui_change_electronicfno"

    .line 349
    invoke-virtual {p0, v0}, Lcn/nubia/camera/o/c;->d(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, v0}, Lcn/nubia/camera/o/c;->f(Ljava/lang/String;)V

    return-void
.end method

.method private o()Z
    .locals 3

    .line 355
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->u()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f01b3

    .line 356
    invoke-virtual {p0, v1}, Lcn/nubia/camera/o/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_anti_shake"

    .line 355
    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f030b

    .line 356
    invoke-virtual {p0, v1}, Lcn/nubia/camera/o/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private p()V
    .locals 12

    .line 360
    iget-object v0, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Lcn/nubia/camera/o/i;

    invoke-direct {v0}, Lcn/nubia/camera/o/i;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    .line 362
    invoke-virtual {v0, p0}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i$a;)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/o/c;->p:Lcn/nubia/camera/o/h;

    .line 365
    invoke-virtual {v0}, Lcn/nubia/camera/o/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/o/c;->H:Landroid/util/Size;

    .line 368
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 369
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/o/c;->H:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/o/c;->H:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/o/c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " compensation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/o/c;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/o/c;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ElectronicFnoFragment"

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 373
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 374
    iget-object v3, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    iget-object v1, p0, Lcn/nubia/camera/o/c;->H:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v1, p0, Lcn/nubia/camera/o/c;->H:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    iget v6, p0, Lcn/nubia/camera/o/c;->a:I

    iget v7, p0, Lcn/nubia/camera/o/c;->x:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    iget v10, p0, Lcn/nubia/camera/o/c;->D:I

    .line 375
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 374
    invoke-virtual/range {v3 .. v11}, Lcn/nubia/camera/o/i;->a(IIIIIZII)V

    return-void
.end method

.method private q()V
    .locals 4

    const-string v0, "ElectronicFnoFragment"

    const-string v1, "start normal capture!"

    .line 379
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 381
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x2

    .line 382
    invoke-direct {p0, v0}, Lcn/nubia/camera/o/c;->f(I)V

    .line 390
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->s()V

    .line 391
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 392
    iput-boolean v1, p0, Lcn/nubia/camera/o/c;->q:Z

    .line 393
    iget-object v0, p0, Lcn/nubia/camera/o/c;->p:Lcn/nubia/camera/o/h;

    invoke-virtual {v0}, Lcn/nubia/camera/o/h;->H()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 394
    new-instance v1, Lcn/nubia/camera/o/c$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/o/c$3;-><init>(Lcn/nubia/camera/o/c;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 417
    iget-object v1, p0, Lcn/nubia/camera/o/c;->o:Lcn/nubia/camera/o/g;

    if-nez v1, :cond_1

    .line 418
    new-instance v1, Lcn/nubia/camera/o/g;

    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/nubia/camera/o/g;-><init>(Landroid/graphics/SurfaceTexture;Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/camera/o/c;->o:Lcn/nubia/camera/o/g;

    .line 421
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/o/c;->o:Lcn/nubia/camera/o/g;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    goto :goto_0

    .line 423
    :cond_1
    invoke-virtual {v1, v0}, Lcn/nubia/camera/o/g;->a(Landroid/graphics/SurfaceTexture;)V

    .line 425
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/o/c;->o:Lcn/nubia/camera/o/g;

    iget-object v1, p0, Lcn/nubia/camera/o/c;->O:Lcom/android/common/c/f$b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/o/g;->a(Lcom/android/common/c/f$b;)V

    .line 426
    iget-object v0, p0, Lcn/nubia/camera/o/c;->o:Lcn/nubia/camera/o/g;

    new-instance v1, Lcn/nubia/camera/o/c$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/o/c$4;-><init>(Lcn/nubia/camera/o/c;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/o/g;->a(Lcn/nubia/camera/o/c$a;)V

    .line 470
    iget-object v0, p0, Lcn/nubia/camera/o/c;->p:Lcn/nubia/camera/o/h;

    .line 471
    invoke-virtual {v0}, Lcn/nubia/camera/o/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcn/nubia/camera/o/c;->o:Lcn/nubia/camera/o/g;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/o/g;->a(Lcn/nubia/camera/k/x$b;)V

    .line 473
    iget-object v0, p0, Lcn/nubia/camera/o/c;->o:Lcn/nubia/camera/o/g;

    iget v1, p0, Lcn/nubia/camera/o/c;->a:I

    iget v2, p0, Lcn/nubia/camera/o/c;->b:I

    iget v3, p0, Lcn/nubia/camera/o/c;->y:I

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/o/g;->a(III)V

    .line 474
    iget-object v0, p0, Lcn/nubia/camera/o/c;->p:Lcn/nubia/camera/o/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/o/h;->a(Lcn/nubia/camera/k/o;)V

    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/o/c;->E:J

    return-void
.end method

.method private r()V
    .locals 4

    .line 502
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->c:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 506
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/a/a;

    invoke-virtual {v2}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/c/a;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/camera/o/c;->N:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    iput-wide v0, p0, Lcn/nubia/camera/o/c;->N:J

    .line 512
    :goto_0
    iget-wide v2, p0, Lcn/nubia/camera/o/c;->N:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    const v0, 0x3dcccccd    # 0.1f

    .line 513
    iput v0, p0, Lcn/nubia/camera/o/c;->C:F

    goto :goto_1

    :cond_1
    long-to-float v0, v2

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 516
    iput v0, p0, Lcn/nubia/camera/o/c;->C:F

    :goto_1
    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 519
    fill-array-data v0, :array_0

    .line 520
    iget v1, p0, Lcn/nubia/camera/o/c;->C:F

    invoke-direct {p0, v1, v0}, Lcn/nubia/camera/o/c;->a(F[F)F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/o/c;->C:F

    .line 522
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->M()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 524
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 527
    :goto_2
    iget-object v0, p0, Lcn/nubia/camera/o/c;->c:Lcn/nubia/camera/o/c$b;

    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Lcn/nubia/camera/o/c$b;->removeMessages(I)V

    .line 528
    iget-object v0, p0, Lcn/nubia/camera/o/c;->c:Lcn/nubia/camera/o/c$b;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/o/c$b;->sendEmptyMessageDelayed(IJ)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3e19999a    # 0.15f
        0x3e800000    # 0.25f
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3faccccd    # 1.35f
    .end array-data
.end method

.method private s()V
    .locals 4

    .line 568
    iget-boolean v0, p0, Lcn/nubia/camera/o/c;->B:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcn/nubia/camera/o/c;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcn/nubia/camera/o/c;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b(Z)V

    .line 571
    iget-object v0, p0, Lcn/nubia/camera/o/c;->u:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcn/nubia/camera/o/c;->u:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->a()V

    goto :goto_0

    .line 574
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/o/c;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcn/nubia/camera/o/c;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v2, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 576
    iget-object v0, p0, Lcn/nubia/camera/o/c;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/camera/o/c;->K:J

    .line 579
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/o/c;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a(IZ)V
    .locals 1

    .line 259
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(IZ)V

    .line 260
    iput p1, p0, Lcn/nubia/camera/o/c;->D:I

    .line 261
    iget-object v0, p0, Lcn/nubia/camera/o/c;->n:Lcom/android/common/ui/RotateTextImageView;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateTextImageView;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 605
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ElectronicFnoFragment"

    const-string v1, "onEleProcessing"

    .line 608
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcn/nubia/camera/o/c;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/ab/a$a;)V
    .locals 1

    .line 912
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/ab/a$a;)V

    .line 913
    sget-object v0, Lcn/nubia/camera/ab/a$a;->b:Lcn/nubia/camera/ab/a$a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcn/nubia/camera/ab/a$a;->a:Lcn/nubia/camera/ab/a$a;

    if-ne p1, v0, :cond_1

    .line 914
    :cond_0
    iget-boolean p1, p0, Lcn/nubia/camera/o/c;->B:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcn/nubia/camera/o/c;->I:Z

    if-eqz p1, :cond_1

    .line 915
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->b()V

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/camera/o/a;)V
    .locals 1

    .line 967
    iget-object v0, p0, Lcn/nubia/camera/o/c;->L:Ljava/util/List;

    if-nez v0, :cond_0

    .line 968
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/o/c;->L:Ljava/util/List;

    .line 970
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/o/c;->L:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 971
    iget-object v0, p0, Lcn/nubia/camera/o/c;->L:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/camera/o/h;Lcn/nubia/k/a/a;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcn/nubia/camera/o/c;->p:Lcn/nubia/camera/o/h;

    .line 254
    iput-object p2, p0, Lcn/nubia/camera/o/c;->r:Lcn/nubia/k/a/a;

    return-void
.end method

.method public a(Lcn/nubia/camera/prosetting/ui/b;)V
    .locals 2

    .line 673
    invoke-interface {p1}, Lcn/nubia/camera/prosetting/ui/b;->getMember()Lcn/nubia/camera/w/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/w/b;->g:Lcn/nubia/camera/w/b;

    if-ne v0, v1, :cond_0

    .line 674
    invoke-interface {p1}, Lcn/nubia/camera/prosetting/ui/b;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/o/c;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 675
    :cond_0
    invoke-interface {p1}, Lcn/nubia/camera/prosetting/ui/b;->getMember()Lcn/nubia/camera/w/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/w/b;->f:Lcn/nubia/camera/w/b;

    if-ne v0, v1, :cond_1

    .line 676
    invoke-interface {p1}, Lcn/nubia/camera/prosetting/ui/b;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/o/c;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 3

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterButtonClick==mManualShuuter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/o/c;->B:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCapturing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/o/c;->I:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ElectronicFnoFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-boolean v0, p0, Lcn/nubia/camera/o/c;->B:Z

    if-eqz v0, :cond_4

    .line 303
    iget-boolean v0, p0, Lcn/nubia/camera/o/c;->I:Z

    if-nez v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lcn/nubia/camera/o/c;->I:Z

    .line 309
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->n()V

    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    if-eqz v0, :cond_3

    .line 312
    invoke-virtual {v0}, Lcn/nubia/camera/o/i;->d()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonClick==PicTaken Num = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    .line 314
    invoke-virtual {v2}, Lcn/nubia/camera/o/i;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 317
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    invoke-virtual {v0}, Lcn/nubia/camera/o/i;->c()V

    .line 319
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/o/c;->o:Lcn/nubia/camera/o/g;

    if-eqz v0, :cond_6

    .line 320
    invoke-virtual {v0}, Lcn/nubia/camera/o/g;->f()V

    goto :goto_0

    .line 324
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 328
    :cond_5
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->n()V

    :cond_6
    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "ui_change_electronicfno"

    .line 550
    invoke-virtual {p0, p1}, Lcn/nubia/camera/o/c;->c(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0, p1}, Lcn/nubia/camera/o/c;->e(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void

    .line 555
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq p1, v0, :cond_1

    const/4 p1, 0x2

    .line 556
    invoke-direct {p0, p1}, Lcn/nubia/camera/o/c;->f(I)V

    .line 558
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/o/c;->t:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string p1, "ElectronicFnoFragment"

    const-string v0, "onEleStart"

    .line 559
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->s()V

    .line 561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/o/c;->E:J

    const-wide/16 v0, 0x0

    .line 562
    iput-wide v0, p0, Lcn/nubia/camera/o/c;->F:J

    .line 563
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/c/e;->f()V

    .line 564
    iget-object p1, p0, Lcn/nubia/camera/o/c;->p:Lcn/nubia/camera/o/h;

    iget-object v0, p0, Lcn/nubia/camera/o/c;->M:Lcn/nubia/camera/k/z;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/o/h;->a(Lcn/nubia/camera/k/o;)V

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "ElectronicFnoFragment"

    const-string v1, "onEleProcessDone"

    .line 635
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    .line 637
    invoke-direct {p0, p1}, Lcn/nubia/camera/o/c;->c(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lcn/nubia/camera/o/c;->H:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/o/c;->H:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/camera/o/c;->a(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 641
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/o/c;->H:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/o/c;->H:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/camera/o/c;->a(Landroid/graphics/Bitmap;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onAntiShakeStateChanged] antiShakeOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ElectronicFnoFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 984
    iget-object v1, p0, Lcn/nubia/camera/o/c;->o:Lcn/nubia/camera/o/g;

    if-eqz v1, :cond_0

    .line 985
    invoke-virtual {v1}, Lcn/nubia/camera/o/g;->e()V

    .line 986
    iput-object v0, p0, Lcn/nubia/camera/o/c;->o:Lcn/nubia/camera/o/g;

    .line 987
    iget-object p1, p0, Lcn/nubia/camera/o/c;->p:Lcn/nubia/camera/o/h;

    invoke-virtual {p1}, Lcn/nubia/camera/o/h;->I()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 988
    iget-object p1, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    if-eqz p1, :cond_1

    .line 989
    invoke-virtual {p1}, Lcn/nubia/camera/o/i;->b()V

    .line 990
    iget-object p1, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i$a;)V

    .line 991
    iput-object v0, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 7

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEleProgressUpdated progress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ElectronicFnoFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 586
    iget-wide v2, p0, Lcn/nubia/camera/o/c;->K:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 587
    iput-wide v0, p0, Lcn/nubia/camera/o/c;->K:J

    const/4 v0, 0x1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 588
    iget-wide v3, p0, Lcn/nubia/camera/o/c;->F:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/nubia/camera/o/c;->F:J

    .line 590
    iget-object v1, p0, Lcn/nubia/camera/o/c;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v3, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v1, v3}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 591
    iget-object v1, p0, Lcn/nubia/camera/o/c;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    new-instance v3, Lcn/nubia/camera/o/c$5;

    invoke-direct {v3, p0}, Lcn/nubia/camera/o/c$5;-><init>(Lcn/nubia/camera/o/c;)V

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZILcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V

    goto :goto_0

    :cond_0
    if-ge p1, v1, :cond_1

    .line 598
    iget-object v1, p0, Lcn/nubia/camera/o/c;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v3, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v1, v3}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 599
    iget-object v1, p0, Lcn/nubia/camera/o/c;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 4

    const-string p1, "ElectronicFnoFragment"

    const-string v0, "onEleStop"

    .line 615
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->L()V

    .line 618
    iget-boolean p1, p0, Lcn/nubia/camera/o/c;->B:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/camera/o/c;->F:J

    .line 620
    iget-object p1, p0, Lcn/nubia/camera/o/c;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {p1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V

    .line 621
    iget-object p1, p0, Lcn/nubia/camera/o/c;->m:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v2, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {p1, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 622
    iget-object p1, p0, Lcn/nubia/camera/o/c;->u:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {p1}, Lcom/android/common/ui/NubiaProgressWheel;->b()V

    .line 623
    iget-object p1, p0, Lcn/nubia/camera/o/c;->u:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 625
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/o/c;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 626
    iget-object p1, p0, Lcn/nubia/camera/o/c;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    iget-wide v0, p0, Lcn/nubia/camera/o/c;->F:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/o/c;->F:J

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "ElectronicFnoFragment"

    const-string v1, "onEleReleaseEnd"

    .line 647
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isPaused return"

    .line 649
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->g()V

    .line 653
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->J()V

    .line 654
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_1

    .line 655
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    :cond_1
    return-void
.end method

.method public g_()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 2

    const-string v0, "ElectronicFnoFragment"

    const-string v1, "onEleCancel"

    .line 661
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lcn/nubia/camera/o/c;->p:Lcn/nubia/camera/o/h;

    invoke-virtual {v0}, Lcn/nubia/camera/o/h;->e()V

    .line 663
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/o/c;->E:J

    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 1

    .line 976
    iget-object v0, p0, Lcn/nubia/camera/o/c;->L:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 977
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 978
    iput-object v0, p0, Lcn/nubia/camera/o/c;->L:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 2

    .line 938
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_0

    .line 939
    iget-object v0, p0, Lcn/nubia/camera/o/c;->n:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateTextImageView;->performClick()Z

    const/4 v0, 0x1

    return v0

    .line 942
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 2

    .line 904
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_0

    .line 905
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    iget-object v0, p0, Lcn/nubia/camera/o/c;->n:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateTextImageView;->performClick()Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 175
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onCreate(Landroid/os/Bundle;)V

    .line 176
    iget-boolean p1, p0, Lcn/nubia/camera/o/c;->d:Z

    if-eqz p1, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->m()V

    .line 178
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcn/nubia/j/a;->a(I)V

    .line 179
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/j/a;->a(I)V

    .line 180
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0228

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/o/c;->z:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 186
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 187
    iget-boolean p3, p0, Lcn/nubia/camera/o/c;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c004a

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p2, "ElectronicFnoFragment"

    const-string p3, "view==null"

    .line 192
    invoke-static {p2, p3}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/camera/o/c;->d(Landroid/view/View;)V

    .line 195
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p0, p3, p3, p3, p2}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/o/c;->v:Lcn/nubia/camera/q/c;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 201
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 202
    iget-boolean v0, p0, Lcn/nubia/camera/o/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/o/c;->v:Lcn/nubia/camera/q/c;

    invoke-static {p0, v0}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 227
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 228
    iget-boolean v0, p0, Lcn/nubia/camera/o/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_1

    .line 230
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->J()V

    .line 232
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {v0}, Lcn/nubia/camera/o/i;->b()V

    .line 234
    iget-object v0, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i$a;)V

    .line 235
    iput-object v1, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    .line 237
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/o/c;->o:Lcn/nubia/camera/o/g;

    if-eqz v0, :cond_3

    .line 238
    invoke-virtual {v0}, Lcn/nubia/camera/o/g;->e()V

    .line 239
    iput-object v1, p0, Lcn/nubia/camera/o/c;->o:Lcn/nubia/camera/o/g;

    .line 241
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/o/c;->p:Lcn/nubia/camera/o/h;

    if-eqz v0, :cond_4

    .line 242
    invoke-virtual {v0}, Lcn/nubia/camera/o/h;->I()V

    .line 244
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/o/c;->J:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 245
    iget-object v0, p0, Lcn/nubia/camera/o/c;->J:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 246
    iput-object v1, p0, Lcn/nubia/camera/o/c;->J:Landroid/graphics/Bitmap;

    .line 248
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/c/a;->a(Z)V

    .line 249
    iget-object v0, p0, Lcn/nubia/camera/o/c;->c:Lcn/nubia/camera/o/c$b;

    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Lcn/nubia/camera/o/c$b;->removeMessages(I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 210
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 211
    iget-boolean v0, p0, Lcn/nubia/camera/o/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/c/a;->a(Z)V

    .line 213
    iget-object v0, p0, Lcn/nubia/camera/o/c;->z:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/camera/o/c;->a(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcn/nubia/camera/o/c;->A:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/camera/o/c;->g(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcn/nubia/camera/o/c;->r()V

    .line 216
    invoke-virtual {p0}, Lcn/nubia/camera/o/c;->u()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f01b3

    .line 217
    invoke-virtual {p0, v1}, Lcn/nubia/camera/o/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_anti_shake"

    .line 216
    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f030b

    .line 217
    invoke-virtual {p0, v1}, Lcn/nubia/camera/o/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    if-nez v0, :cond_1

    .line 219
    new-instance v0, Lcn/nubia/camera/o/i;

    invoke-direct {v0}, Lcn/nubia/camera/o/i;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/o/c;->w:Lcn/nubia/camera/o/i;

    .line 220
    invoke-virtual {v0, p0}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i$a;)V

    :cond_1
    return-void
.end method
