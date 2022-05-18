.class public Lcn/nubia/camera/w/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/w/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/w/a$d;,
        Lcn/nubia/camera/w/a$e;,
        Lcn/nubia/camera/w/a$a;,
        Lcn/nubia/camera/w/a$b;,
        Lcn/nubia/camera/w/a$c;
    }
.end annotation


# instance fields
.field private A:Lcn/nubia/camera/prosetting/ui/NumberView;

.field private B:Landroid/widget/TextView;

.field private C:Lcn/nubia/camera/prosetting/ui/DurationView;

.field private D:Landroid/widget/TextView;

.field private E:Lcn/nubia/camera/prosetting/ui/ColorTintView;

.field private F:Lcn/nubia/camera/ad/a;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcn/nubia/camera/k/ah;

.field private I:Ljava/lang/String;

.field private J:Lcn/nubia/camera/k/ab$a;

.field private K:Landroid/os/Handler;

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private N:Lcn/nubia/camera/w/a$a;

.field private O:Lcn/nubia/camera/w/c;

.field private P:Ljava/lang/String;

.field private Q:I

.field private R:F

.field private S:I

.field private T:Lcn/nubia/camera/af/a;

.field private a:Landroid/view/View;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/View;

.field private d:Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Lcn/nubia/camera/prosetting/ui/MeteringModeView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;

.field private j:Landroid/widget/TextView;

.field private k:Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;

.field private l:Landroid/widget/TextView;

.field private m:Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;

.field private n:Landroid/widget/TextView;

.field private o:Lcn/nubia/camera/prosetting/ui/ManualFocusView;

.field private p:Landroid/widget/TextView;

.field private q:Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;

.field private r:Landroid/widget/TextView;

.field private s:Lcn/nubia/camera/prosetting/ui/ShutterCompensationView;

.field private t:Landroid/widget/TextView;

.field private u:Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;

.field private v:Landroid/widget/TextView;

.field private w:Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;

.field private x:Landroid/widget/TextView;

.field private y:Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Ljava/util/List;Lcn/nubia/camera/k/ah;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/ad/a;",
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;",
            "Lcn/nubia/camera/k/ah;",
            ")V"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcn/nubia/camera/w/a;->d:Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;

    .line 56
    iput-object v0, p0, Lcn/nubia/camera/w/a;->e:Landroid/widget/RelativeLayout;

    .line 57
    iput-object v0, p0, Lcn/nubia/camera/w/a;->f:Lcn/nubia/camera/prosetting/ui/MeteringModeView;

    .line 58
    iput-object v0, p0, Lcn/nubia/camera/w/a;->g:Landroid/view/View;

    .line 59
    iput-object v0, p0, Lcn/nubia/camera/w/a;->h:Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lcn/nubia/camera/w/a;->i:Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;

    .line 61
    iput-object v0, p0, Lcn/nubia/camera/w/a;->j:Landroid/widget/TextView;

    .line 62
    iput-object v0, p0, Lcn/nubia/camera/w/a;->k:Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;

    .line 63
    iput-object v0, p0, Lcn/nubia/camera/w/a;->l:Landroid/widget/TextView;

    .line 64
    iput-object v0, p0, Lcn/nubia/camera/w/a;->m:Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;

    .line 65
    iput-object v0, p0, Lcn/nubia/camera/w/a;->n:Landroid/widget/TextView;

    .line 66
    iput-object v0, p0, Lcn/nubia/camera/w/a;->o:Lcn/nubia/camera/prosetting/ui/ManualFocusView;

    .line 67
    iput-object v0, p0, Lcn/nubia/camera/w/a;->p:Landroid/widget/TextView;

    .line 68
    iput-object v0, p0, Lcn/nubia/camera/w/a;->q:Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;

    .line 69
    iput-object v0, p0, Lcn/nubia/camera/w/a;->r:Landroid/widget/TextView;

    .line 70
    iput-object v0, p0, Lcn/nubia/camera/w/a;->s:Lcn/nubia/camera/prosetting/ui/ShutterCompensationView;

    .line 71
    iput-object v0, p0, Lcn/nubia/camera/w/a;->t:Landroid/widget/TextView;

    .line 72
    iput-object v0, p0, Lcn/nubia/camera/w/a;->u:Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;

    .line 73
    iput-object v0, p0, Lcn/nubia/camera/w/a;->v:Landroid/widget/TextView;

    .line 74
    iput-object v0, p0, Lcn/nubia/camera/w/a;->w:Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;

    .line 75
    iput-object v0, p0, Lcn/nubia/camera/w/a;->x:Landroid/widget/TextView;

    .line 76
    iput-object v0, p0, Lcn/nubia/camera/w/a;->y:Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;

    .line 77
    iput-object v0, p0, Lcn/nubia/camera/w/a;->z:Landroid/widget/TextView;

    .line 78
    iput-object v0, p0, Lcn/nubia/camera/w/a;->A:Lcn/nubia/camera/prosetting/ui/NumberView;

    .line 79
    iput-object v0, p0, Lcn/nubia/camera/w/a;->B:Landroid/widget/TextView;

    .line 80
    iput-object v0, p0, Lcn/nubia/camera/w/a;->C:Lcn/nubia/camera/prosetting/ui/DurationView;

    .line 81
    iput-object v0, p0, Lcn/nubia/camera/w/a;->D:Landroid/widget/TextView;

    .line 82
    iput-object v0, p0, Lcn/nubia/camera/w/a;->E:Lcn/nubia/camera/prosetting/ui/ColorTintView;

    .line 90
    iput-object v0, p0, Lcn/nubia/camera/w/a;->K:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcn/nubia/camera/w/a;->Q:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 97
    iput v1, p0, Lcn/nubia/camera/w/a;->R:F

    .line 98
    iput v0, p0, Lcn/nubia/camera/w/a;->S:I

    .line 122
    iput-object p1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    .line 123
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/w/a;->T:Lcn/nubia/camera/af/a;

    .line 124
    iput-object p2, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    .line 125
    iput-object p3, p0, Lcn/nubia/camera/w/a;->H:Lcn/nubia/camera/k/ah;

    .line 126
    iget-object p3, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/camera/w/a;->I:Ljava/lang/String;

    .line 127
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcn/nubia/camera/w/a;->L:Ljava/util/List;

    .line 128
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcn/nubia/camera/w/a;->M:Ljava/util/List;

    .line 129
    new-instance p3, Lcn/nubia/camera/w/c;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->H:Lcn/nubia/camera/k/ah;

    invoke-direct {p3, p1, p2, v0}, Lcn/nubia/camera/w/c;-><init>(Lcn/nubia/camera/ad/a;Ljava/util/List;Lcn/nubia/camera/k/ah;)V

    iput-object p3, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    return-void
.end method

.method static synthetic A(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->y:Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;

    return-object p0
.end method

.method static synthetic B(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->B:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic C(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/NumberView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->A:Lcn/nubia/camera/prosetting/ui/NumberView;

    return-object p0
.end method

.method static synthetic D(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->D:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic E(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/DurationView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->C:Lcn/nubia/camera/prosetting/ui/DurationView;

    return-object p0
.end method

.method static synthetic F(Lcn/nubia/camera/w/a;)I
    .locals 0

    .line 47
    iget p0, p0, Lcn/nubia/camera/w/a;->S:I

    return p0
.end method

.method static synthetic G(Lcn/nubia/camera/w/a;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->K:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/w/c;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    return-object p0
.end method

.method private a(F)V
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 756
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/three_a/a;->a(Lcom/android/preference/c;Lcn/nubia/camera/af/a;)I

    move-result v0

    const/4 v1, 0x0

    .line 757
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 758
    iget-object v2, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v2}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v2

    sget-object v3, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v2}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v2

    sget-object v3, Lcn/nubia/camera/w/b;->e:Lcn/nubia/camera/w/b;

    if-ne v2, v3, :cond_4

    :cond_1
    if-gez v0, :cond_4

    .line 760
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/w/a;->I:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Lcn/nubia/b/b;->k()F

    move-result v0

    cmpg-float v2, v0, p1

    if-gez v2, :cond_2

    move p1, v0

    .line 763
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/w/a;->I:Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/nubia/camera/ba/c;->a(Ljava/lang/String;F)I

    move-result p1

    .line 764
    iget-object v0, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v0}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/w/b;->e:Lcn/nubia/camera/w/b;

    if-ne v0, v2, :cond_3

    const/16 v0, 0x1e

    if-le p1, v0, :cond_3

    .line 765
    iget-object v2, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/w/d$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/nubia/camera/w/d$a;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 767
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/w/d$a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/w/d$a;->b(Ljava/lang/String;)V

    .line 769
    :goto_1
    iget v0, p0, Lcn/nubia/camera/w/a;->R:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_5

    .line 770
    iget-object v0, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    iget-object v2, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v1}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/b;)V

    .line 771
    iput p1, p0, Lcn/nubia/camera/w/a;->R:F

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private a(J)V
    .locals 11

    .line 712
    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->k(Lcn/nubia/camera/ad/a;)J

    move-result-wide v0

    .line 713
    iget-object v2, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    sget-object v3, Lcn/nubia/camera/af/a;->c:Lcn/nubia/camera/af/a;

    if-eq v2, v3, :cond_4

    const/4 v2, 0x0

    .line 715
    sget-wide v3, Lcn/nubia/camera/aq/f;->h:J

    div-long v3, p1, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const-string v4, "s"

    if-gtz v3, :cond_0

    .line 716
    sget-wide v2, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr v2, p1

    .line 717
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "1/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 718
    :cond_0
    sget-wide v7, Lcn/nubia/camera/aq/f;->h:J

    div-long v7, p1, v7

    const-wide/16 v9, 0x1

    cmp-long v3, v7, v9

    const-wide/16 v7, 0x78

    if-ltz v3, :cond_1

    sget-wide v9, Lcn/nubia/camera/aq/f;->h:J

    div-long v9, p1, v9

    cmp-long v3, v9, v7

    if-gez v3, :cond_1

    .line 720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v7, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr p1, v7

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 721
    :cond_1
    sget-wide v3, Lcn/nubia/camera/aq/f;->h:J

    div-long v3, p1, v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_2

    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr p1, v3

    const-wide/16 v3, 0x3c

    div-long/2addr p1, v3

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "min"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 724
    :goto_1
    iget-object p2, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 725
    iget-object p2, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p2}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object p2

    sget-object v3, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    if-ne p2, v3, :cond_3

    cmp-long p2, v0, v5

    if-gtz p2, :cond_3

    iget-object p2, p0, Lcn/nubia/camera/w/a;->P:Ljava/lang/String;

    .line 726
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 727
    iget-object p2, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p2, v2}, Lcn/nubia/camera/w/d$a;->b(Ljava/lang/String;)V

    .line 728
    iget-object p2, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p1}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/b;)V

    .line 729
    iput-object v2, p0, Lcn/nubia/camera/w/a;->P:Ljava/lang/String;

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private a(Lcn/nubia/camera/prosetting/ui/b;)V
    .locals 2

    .line 837
    iget-object v0, p0, Lcn/nubia/camera/w/a;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/w/a$c;

    .line 838
    invoke-interface {v1, p1}, Lcn/nubia/camera/w/a$c;->a(Lcn/nubia/camera/prosetting/ui/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/w/a;F)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->a(F)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/w/a;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/w/a;J)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/w/a;->a(J)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/prosetting/ui/b;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/prosetting/ui/b;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcn/nubia/camera/w/b;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 287
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 288
    iget-object v1, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v1}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 289
    iget-object p1, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/w/d$a;->b(Ljava/lang/String;)V

    .line 290
    iget-object p1, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    iget-object p2, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p2}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/b;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;I)Z
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1031
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 1032
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 1033
    aget v0, v0, v3

    add-int/2addr v0, p3

    .line 1034
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    int-to-float v4, v2

    cmpg-float p3, p3, v4

    if-ltz p3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    cmpl-float p3, p3, v2

    if-gtz p3, :cond_1

    .line 1035
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    int-to-float v2, v0

    cmpg-float p3, p3, v2

    if-ltz p3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    int-to-float p1, v0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic b(Lcn/nubia/camera/w/a;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcn/nubia/camera/w/a;->S:I

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/w/a;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    return-object p0
.end method

.method private b(I)V
    .locals 2

    .line 373
    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    const/16 p1, 0x8

    .line 376
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/w/a;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcn/nubia/camera/w/a;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 379
    iget-object p1, p0, Lcn/nubia/camera/w/a;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->Q(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 2

    .line 849
    iget-object v0, p0, Lcn/nubia/camera/w/a;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/w/a$c;

    .line 850
    invoke-interface {v1, p1}, Lcn/nubia/camera/w/a$c;->f(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->c(Landroid/view/View;)V

    .line 172
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->d(Landroid/view/View;)V

    .line 173
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->e(Landroid/view/View;)V

    .line 174
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->f(Landroid/view/View;)V

    .line 175
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->g(Landroid/view/View;)V

    .line 176
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->h(Landroid/view/View;)V

    .line 177
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->i(Landroid/view/View;)V

    .line 178
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->j(Landroid/view/View;)V

    .line 179
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->k(Landroid/view/View;)V

    .line 180
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->l(Landroid/view/View;)V

    .line 181
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->m(Landroid/view/View;)V

    .line 182
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->n(Landroid/view/View;)V

    .line 183
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->o(Landroid/view/View;)V

    .line 184
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->p(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcn/nubia/camera/w/b;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 297
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 298
    iget-object v1, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v1}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 299
    iget-object p1, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/w/d$a;->a(Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    iget-object p2, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p2}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/b;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private b(ZZ)V
    .locals 2

    .line 843
    iget-object v0, p0, Lcn/nubia/camera/w/a;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/w/a$c;

    .line 844
    invoke-interface {v1, p1, p2}, Lcn/nubia/camera/w/a$c;->a(ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/w/a;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->a:Landroid/view/View;

    return-object p0
.end method

.method private c(I)V
    .locals 4

    .line 737
    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 738
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 739
    iget-object v2, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v2}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v2

    sget-object v3, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcn/nubia/camera/w/a;->a:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    .line 740
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v3}, Lcn/nubia/camera/w/d$a;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    .line 741
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f01ef

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 742
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/w/d$a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/w/d$a;->b(Ljava/lang/String;)V

    .line 743
    iget v0, p0, Lcn/nubia/camera/w/a;->Q:I

    if-eq v0, p1, :cond_2

    .line 744
    iget-object v0, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    iget-object v2, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v1}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/b;)V

    .line 745
    iput p1, p0, Lcn/nubia/camera/w/a;->Q:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0902d3

    .line 307
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;

    iput-object v0, p0, Lcn/nubia/camera/w/a;->d:Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;

    const v0, 0x7f0902d1

    .line 308
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/w/a;->h:Landroid/widget/TextView;

    .line 309
    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->n(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object p1, p0, Lcn/nubia/camera/w/a;->d:Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/w/d;->c(Lcn/nubia/camera/af/a;Ljava/lang/String;)[Landroid/util/Rational;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    .line 311
    invoke-static {v1}, Lcn/nubia/camera/w/d;->Y(Lcn/nubia/camera/ad/a;)[Landroid/util/Rational;

    move-result-object v1

    const/4 v2, 0x0

    .line 310
    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->a([Landroid/util/Rational;[Landroid/util/Rational;Z)V

    .line 312
    iget-object p1, p0, Lcn/nubia/camera/w/a;->d:Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->l(Lcn/nubia/camera/ad/a;)Landroid/util/Rational;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->b(Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Lcn/nubia/camera/w/a;->d:Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;

    new-instance v0, Lcn/nubia/camera/w/a$12;

    invoke-direct {v0, p0}, Lcn/nubia/camera/w/a$12;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->setListener(Lcn/nubia/camera/prosetting/ui/a$b;)V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/w/a;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->c(I)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0902d4

    .line 355
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/w/a;->g:Landroid/view/View;

    const v0, 0x7f090188

    .line 356
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/w/a;->e:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901f2

    .line 357
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/prosetting/ui/MeteringModeView;

    iput-object p1, p0, Lcn/nubia/camera/w/a;->f:Lcn/nubia/camera/prosetting/ui/MeteringModeView;

    .line 358
    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->P(Lcn/nubia/camera/ad/a;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b(I)V

    .line 359
    iget-object p1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {p1}, Lcn/nubia/camera/w/d;->k(Lcn/nubia/camera/ad/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->b(I)V

    .line 360
    iget-object p1, p0, Lcn/nubia/camera/w/a;->f:Lcn/nubia/camera/prosetting/ui/MeteringModeView;

    new-instance v0, Lcn/nubia/camera/w/a$15;

    invoke-direct {v0, p0}, Lcn/nubia/camera/w/a$15;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->setListener(Lcn/nubia/camera/prosetting/ui/MeteringModeView$c;)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method private e(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090065

    .line 394
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;

    iput-object v0, p0, Lcn/nubia/camera/w/a;->k:Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;

    const v0, 0x7f090066

    .line 395
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/w/a;->j:Landroid/widget/TextView;

    .line 396
    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->q(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object p1, p0, Lcn/nubia/camera/w/a;->k:Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->p(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->b(Ljava/lang/String;)V

    .line 398
    iget-object p1, p0, Lcn/nubia/camera/w/a;->k:Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;

    new-instance v0, Lcn/nubia/camera/w/a$16;

    invoke-direct {v0, p0}, Lcn/nubia/camera/w/a$16;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->setListener(Lcn/nubia/camera/prosetting/ui/a$b;)V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->d:Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;

    return-object p0
.end method

.method private f(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f09039a

    .line 417
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;

    iput-object v0, p0, Lcn/nubia/camera/w/a;->i:Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;

    const v0, 0x7f090057

    .line 418
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/w/a;->l:Landroid/widget/TextView;

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f00d8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    .line 420
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v2}, Lcn/nubia/camera/w/d;->s(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/camera/w/d;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object p1, p0, Lcn/nubia/camera/w/a;->i:Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/b;->l()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->setIsIwbSupported(Z)V

    .line 422
    iget-object p1, p0, Lcn/nubia/camera/w/a;->i:Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->s(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->b(Ljava/lang/String;)V

    .line 423
    iget-object p1, p0, Lcn/nubia/camera/w/a;->i:Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;

    new-instance v0, Lcn/nubia/camera/w/a$17;

    invoke-direct {v0, p0}, Lcn/nubia/camera/w/a$17;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->setListener(Lcn/nubia/camera/prosetting/ui/a$b;)V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/MeteringModeView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->f:Lcn/nubia/camera/prosetting/ui/MeteringModeView;

    return-object p0
.end method

.method private g(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0900c9

    .line 442
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/prosetting/ui/ColorTintView;

    iput-object p1, p0, Lcn/nubia/camera/w/a;->E:Lcn/nubia/camera/prosetting/ui/ColorTintView;

    .line 443
    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->v(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/ColorTintView;->b(Ljava/lang/String;)V

    .line 444
    iget-object p1, p0, Lcn/nubia/camera/w/a;->E:Lcn/nubia/camera/prosetting/ui/ColorTintView;

    new-instance v0, Lcn/nubia/camera/w/a$18;

    invoke-direct {v0, p0}, Lcn/nubia/camera/w/a$18;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/ColorTintView;->setListener(Lcn/nubia/camera/prosetting/ui/a$b;)V

    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/w/a;->c:Landroid/view/View;

    new-instance v1, Lcn/nubia/camera/w/a$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/w/a$1;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private h(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0901cf

    .line 456
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;

    iput-object v0, p0, Lcn/nubia/camera/w/a;->m:Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;

    const v0, 0x7f0901d0

    .line 457
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/w/a;->n:Landroid/widget/TextView;

    .line 458
    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->y(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object p1, p0, Lcn/nubia/camera/w/a;->m:Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/w/d;->b(Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v1}, Lcn/nubia/camera/w/d;->Z(Lcn/nubia/camera/ad/a;)[Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->a([Ljava/lang/Integer;[Ljava/lang/Integer;)V

    .line 460
    iget-object p1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {p1}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/w/a;->S:I

    .line 461
    iget-object p1, p0, Lcn/nubia/camera/w/a;->m:Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->b(Ljava/lang/String;)V

    .line 462
    iget-object p1, p0, Lcn/nubia/camera/w/a;->m:Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;

    new-instance v0, Lcn/nubia/camera/w/a$19;

    invoke-direct {v0, p0}, Lcn/nubia/camera/w/a$19;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->setListener(Lcn/nubia/camera/prosetting/ui/a$b;)V

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->k:Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;

    return-object p0
.end method

.method private i()V
    .locals 3

    .line 487
    iget-object v0, p0, Lcn/nubia/camera/w/a;->o:Lcn/nubia/camera/prosetting/ui/ManualFocusView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/w/a;->p:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v1}, Lcn/nubia/camera/w/d;->aa(Lcn/nubia/camera/ad/a;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/prosetting/ui/ManualFocusView;->setManualFocus([I)V

    .line 489
    iget-object v0, p0, Lcn/nubia/camera/w/a;->o:Lcn/nubia/camera/prosetting/ui/ManualFocusView;

    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v1}, Lcn/nubia/camera/w/d;->A(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/prosetting/ui/ManualFocusView;->b(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcn/nubia/camera/w/a;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v1}, Lcn/nubia/camera/w/d;->B(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/w/a;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 494
    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0027

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/w/a;->u:Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;

    if-eqz v0, :cond_2

    .line 497
    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v1}, Lcn/nubia/camera/w/d;->aa(Lcn/nubia/camera/ad/a;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->setManualFocus([I)V

    .line 498
    iget-object v0, p0, Lcn/nubia/camera/w/a;->u:Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;

    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v1}, Lcn/nubia/camera/w/d;->A(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private i(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090157

    .line 503
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/prosetting/ui/ManualFocusView;

    iput-object v0, p0, Lcn/nubia/camera/w/a;->o:Lcn/nubia/camera/prosetting/ui/ManualFocusView;

    const v0, 0x7f090158

    .line 504
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/w/a;->p:Landroid/widget/TextView;

    .line 505
    invoke-direct {p0}, Lcn/nubia/camera/w/a;->i()V

    .line 506
    iget-object p1, p0, Lcn/nubia/camera/w/a;->o:Lcn/nubia/camera/prosetting/ui/ManualFocusView;

    new-instance v0, Lcn/nubia/camera/w/a$20;

    invoke-direct {v0, p0}, Lcn/nubia/camera/w/a$20;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/ManualFocusView;->setListener(Lcn/nubia/camera/prosetting/ui/a$b;)V

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method private j()V
    .locals 2

    .line 779
    new-instance v0, Lcn/nubia/camera/w/a$9;

    invoke-direct {v0, p0}, Lcn/nubia/camera/w/a$9;-><init>(Lcn/nubia/camera/w/a;)V

    iput-object v0, p0, Lcn/nubia/camera/w/a;->K:Landroid/os/Handler;

    .line 798
    new-instance v0, Lcn/nubia/camera/w/a$10;

    invoke-direct {v0, p0}, Lcn/nubia/camera/w/a$10;-><init>(Lcn/nubia/camera/w/a;)V

    iput-object v0, p0, Lcn/nubia/camera/w/a;->J:Lcn/nubia/camera/k/ab$a;

    .line 819
    iget-object v1, p0, Lcn/nubia/camera/w/a;->H:Lcn/nubia/camera/k/ah;

    if-eqz v1, :cond_0

    .line 820
    invoke-virtual {v1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

    :cond_0
    return-void
.end method

.method private j(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090132

    .line 527
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;

    iput-object v0, p0, Lcn/nubia/camera/w/a;->q:Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;

    const v0, 0x7f090133

    .line 528
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/w/a;->r:Landroid/widget/TextView;

    .line 529
    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->E(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object p1, p0, Lcn/nubia/camera/w/a;->q:Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->D(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->b(Ljava/lang/String;)V

    .line 531
    iget-object p1, p0, Lcn/nubia/camera/w/a;->q:Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;

    new-instance v0, Lcn/nubia/camera/w/a$21;

    invoke-direct {v0, p0}, Lcn/nubia/camera/w/a$21;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->setListener(Lcn/nubia/camera/prosetting/ui/a$b;)V

    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->i:Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;

    return-object p0
.end method

.method private k(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0902ce

    .line 560
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/prosetting/ui/ShutterCompensationView;

    iput-object v0, p0, Lcn/nubia/camera/w/a;->s:Lcn/nubia/camera/prosetting/ui/ShutterCompensationView;

    const v0, 0x7f0902cf

    .line 561
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/w/a;->t:Landroid/widget/TextView;

    .line 562
    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->H(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object p1, p0, Lcn/nubia/camera/w/a;->s:Lcn/nubia/camera/prosetting/ui/ShutterCompensationView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->G(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/ShutterCompensationView;->b(Ljava/lang/String;)V

    .line 564
    iget-object p1, p0, Lcn/nubia/camera/w/a;->s:Lcn/nubia/camera/prosetting/ui/ShutterCompensationView;

    new-instance v0, Lcn/nubia/camera/w/a$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/w/a$2;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/ShutterCompensationView;->setListener(Lcn/nubia/camera/prosetting/ui/a$b;)V

    return-void
.end method

.method static synthetic l(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/ColorTintView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->E:Lcn/nubia/camera/prosetting/ui/ColorTintView;

    return-object p0
.end method

.method private l(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0901f3

    .line 578
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;

    iput-object v0, p0, Lcn/nubia/camera/w/a;->u:Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;

    const v0, 0x7f0901f4

    .line 579
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/w/a;->v:Landroid/widget/TextView;

    .line 580
    invoke-direct {p0}, Lcn/nubia/camera/w/a;->i()V

    .line 581
    iget-object p1, p0, Lcn/nubia/camera/w/a;->u:Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;

    new-instance v0, Lcn/nubia/camera/w/a$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/w/a$3;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->setListener(Lcn/nubia/camera/prosetting/ui/a$b;)V

    .line 599
    iget-object p1, p0, Lcn/nubia/camera/w/a;->u:Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;

    new-instance v0, Lcn/nubia/camera/w/a$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/w/a$4;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->setMicrospurListener(Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView$a;)V

    return-void
.end method

.method static synthetic m(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method private m(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090145

    .line 624
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;

    iput-object v0, p0, Lcn/nubia/camera/w/a;->w:Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;

    .line 625
    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v1}, Lcn/nubia/camera/w/d;->M(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->b(Ljava/lang/String;)V

    const v0, 0x7f090146

    .line 626
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/w/a;->x:Landroid/widget/TextView;

    .line 627
    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->N(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    iget-object p1, p0, Lcn/nubia/camera/w/a;->w:Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;

    new-instance v0, Lcn/nubia/camera/w/a$5;

    invoke-direct {v0, p0}, Lcn/nubia/camera/w/a$5;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->setListener(Lcn/nubia/camera/prosetting/ui/a$b;)V

    return-void
.end method

.method static synthetic n(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->m:Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;

    return-object p0
.end method

.method private n(Landroid/view/View;)V
    .locals 1

    .line 648
    iget-object p1, p0, Lcn/nubia/camera/w/a;->a:Landroid/view/View;

    const v0, 0x7f0901c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/w/a;->z:Landroid/widget/TextView;

    .line 649
    iget-object p1, p0, Lcn/nubia/camera/w/a;->a:Landroid/view/View;

    const v0, 0x7f0901c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;

    iput-object p1, p0, Lcn/nubia/camera/w/a;->y:Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;

    .line 650
    iget-object p1, p0, Lcn/nubia/camera/w/a;->z:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->K(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object p1, p0, Lcn/nubia/camera/w/a;->y:Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->J(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->b(Ljava/lang/String;)V

    .line 652
    iget-object p1, p0, Lcn/nubia/camera/w/a;->y:Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;

    new-instance v0, Lcn/nubia/camera/w/a$6;

    invoke-direct {v0, p0}, Lcn/nubia/camera/w/a$6;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->setListener(Lcn/nubia/camera/prosetting/ui/a$b;)V

    return-void
.end method

.method static synthetic o(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method private o(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090238

    .line 678
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/w/a;->B:Landroid/widget/TextView;

    .line 679
    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v1}, Lcn/nubia/camera/w/d;->S(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090237

    .line 680
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/prosetting/ui/NumberView;

    iput-object p1, p0, Lcn/nubia/camera/w/a;->A:Lcn/nubia/camera/prosetting/ui/NumberView;

    .line 681
    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->R(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/NumberView;->b(Ljava/lang/String;)V

    .line 682
    iget-object p1, p0, Lcn/nubia/camera/w/a;->A:Lcn/nubia/camera/prosetting/ui/NumberView;

    new-instance v0, Lcn/nubia/camera/w/a$7;

    invoke-direct {v0, p0}, Lcn/nubia/camera/w/a$7;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/NumberView;->setListener(Lcn/nubia/camera/prosetting/ui/a$b;)V

    return-void
.end method

.method static synthetic p(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/ManualFocusView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->o:Lcn/nubia/camera/prosetting/ui/ManualFocusView;

    return-object p0
.end method

.method private p(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090114

    .line 695
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/w/a;->D:Landroid/widget/TextView;

    .line 696
    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v1}, Lcn/nubia/camera/w/d;->U(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090113

    .line 697
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/prosetting/ui/DurationView;

    iput-object p1, p0, Lcn/nubia/camera/w/a;->C:Lcn/nubia/camera/prosetting/ui/DurationView;

    .line 698
    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->T(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/DurationView;->b(Ljava/lang/String;)V

    .line 699
    iget-object p1, p0, Lcn/nubia/camera/w/a;->C:Lcn/nubia/camera/prosetting/ui/DurationView;

    new-instance v0, Lcn/nubia/camera/w/a$8;

    invoke-direct {v0, p0}, Lcn/nubia/camera/w/a$8;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/DurationView;->setListener(Lcn/nubia/camera/prosetting/ui/a$b;)V

    return-void
.end method

.method static synthetic q(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->q:Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;

    return-object p0
.end method

.method static synthetic s(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/ShutterCompensationView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->s:Lcn/nubia/camera/prosetting/ui/ShutterCompensationView;

    return-object p0
.end method

.method static synthetic t(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->t:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic u(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic v(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->u:Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;

    return-object p0
.end method

.method static synthetic w(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/w/a$a;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->N:Lcn/nubia/camera/w/a$a;

    return-object p0
.end method

.method static synthetic x(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic y(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->w:Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;

    return-object p0
.end method

.method static synthetic z(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/camera/w/a;->z:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 914
    iget-object v0, p0, Lcn/nubia/camera/w/a;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 915
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    iput-object p1, p0, Lcn/nubia/camera/w/a;->a:Landroid/view/View;

    const v0, 0x7f090187

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/camera/w/a;->b:Landroid/view/ViewGroup;

    const v0, 0x7f0901ef

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/w/a;->c:Landroid/view/View;

    .line 139
    invoke-direct {p0}, Lcn/nubia/camera/w/a;->h()V

    .line 140
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->b(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/w/c;->a(Landroid/view/View;)V

    .line 142
    iget-object p1, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    invoke-virtual {p1, p0}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/c$a;)V

    .line 143
    invoke-direct {p0}, Lcn/nubia/camera/w/a;->j()V

    return-void
.end method

.method public a(Lcn/nubia/camera/w/a$a;)V
    .locals 1

    .line 889
    iget-object v0, p0, Lcn/nubia/camera/w/a;->N:Lcn/nubia/camera/w/a$a;

    if-nez v0, :cond_0

    .line 890
    iput-object p1, p0, Lcn/nubia/camera/w/a;->N:Lcn/nubia/camera/w/a$a;

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/w/a$b;)V
    .locals 1

    .line 883
    iget-object v0, p0, Lcn/nubia/camera/w/a;->M:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 884
    iget-object v0, p0, Lcn/nubia/camera/w/a;->M:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/w/a$c;)V
    .locals 1

    .line 877
    iget-object v0, p0, Lcn/nubia/camera/w/a;->L:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 878
    iget-object v0, p0, Lcn/nubia/camera/w/a;->L:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/w/b;)V
    .locals 6

    .line 194
    sget-object v0, Lcn/nubia/camera/w/b;->o:Lcn/nubia/camera/w/b;

    if-ne p1, v0, :cond_1

    .line 195
    iget-object p1, p0, Lcn/nubia/camera/w/a;->M:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/w/a$b;

    .line 196
    invoke-interface {v0}, Lcn/nubia/camera/w/a$b;->f_()V

    goto :goto_0

    :cond_0
    return-void

    .line 201
    :cond_1
    sget-object v0, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 202
    iget-object p1, p0, Lcn/nubia/camera/w/a;->d:Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->l(Lcn/nubia/camera/ad/a;)Landroid/util/Rational;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->b(Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcn/nubia/camera/w/a;->f:Lcn/nubia/camera/prosetting/ui/MeteringModeView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->P(Lcn/nubia/camera/ad/a;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b(I)V

    .line 204
    iget-object p1, p0, Lcn/nubia/camera/w/a;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->n(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object p1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {p1}, Lcn/nubia/camera/w/d;->k(Lcn/nubia/camera/ad/a;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-direct {p0, v1}, Lcn/nubia/camera/w/a;->b(I)V

    .line 206
    sget-object p1, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->n(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 207
    sget-object p1, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->l(Lcn/nubia/camera/ad/a;)Landroid/util/Rational;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcn/nubia/camera/w/a;->d:Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;

    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/prosetting/ui/b;)V

    .line 209
    iget-object p1, p0, Lcn/nubia/camera/w/a;->f:Lcn/nubia/camera/prosetting/ui/MeteringModeView;

    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/prosetting/ui/b;)V

    const/4 p1, 0x0

    .line 210
    iput-object p1, p0, Lcn/nubia/camera/w/a;->P:Ljava/lang/String;

    goto/16 :goto_2

    .line 211
    :cond_3
    sget-object v0, Lcn/nubia/camera/w/b;->l:Lcn/nubia/camera/w/b;

    if-ne p1, v0, :cond_4

    .line 212
    iget-object p1, p0, Lcn/nubia/camera/w/a;->k:Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->b(Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcn/nubia/camera/w/a;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->q(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    sget-object p1, Lcn/nubia/camera/w/b;->l:Lcn/nubia/camera/w/b;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->q(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 215
    sget-object p1, Lcn/nubia/camera/w/b;->l:Lcn/nubia/camera/w/b;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->o(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 216
    iget-object p1, p0, Lcn/nubia/camera/w/a;->k:Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;

    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/prosetting/ui/b;)V

    goto/16 :goto_2

    .line 217
    :cond_4
    sget-object v0, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    if-ne p1, v0, :cond_5

    .line 218
    iget-object p1, p0, Lcn/nubia/camera/w/a;->i:Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->s(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->b(Ljava/lang/String;)V

    .line 219
    iget-object p1, p0, Lcn/nubia/camera/w/a;->E:Lcn/nubia/camera/prosetting/ui/ColorTintView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->v(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/ColorTintView;->b(Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lcn/nubia/camera/w/a;->l:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f00d8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    .line 221
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v2}, Lcn/nubia/camera/w/d;->s(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/camera/w/d;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    sget-object p1, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->t(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 223
    sget-object p1, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->s(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcn/nubia/camera/w/a;->i:Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;

    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/prosetting/ui/b;)V

    .line 225
    iget-object p1, p0, Lcn/nubia/camera/w/a;->E:Lcn/nubia/camera/prosetting/ui/ColorTintView;

    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/prosetting/ui/b;)V

    goto/16 :goto_2

    .line 226
    :cond_5
    sget-object v0, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    const/4 v1, -0x1

    if-ne p1, v0, :cond_6

    .line 227
    iget-object p1, p0, Lcn/nubia/camera/w/a;->m:Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->b(Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcn/nubia/camera/w/a;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->y(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    sget-object p1, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcn/nubia/camera/w/a;->m:Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;

    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/prosetting/ui/b;)V

    .line 231
    iget-object p1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {p1}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/w/a;->S:I

    .line 232
    iput v1, p0, Lcn/nubia/camera/w/a;->Q:I

    goto/16 :goto_2

    .line 233
    :cond_6
    sget-object v0, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    const/high16 v2, -0x40800000    # -1.0f

    if-ne p1, v0, :cond_7

    .line 234
    invoke-direct {p0}, Lcn/nubia/camera/w/a;->i()V

    .line 235
    sget-object p1, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->B(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 236
    sget-object p1, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->A(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 237
    iget-object p1, p0, Lcn/nubia/camera/w/a;->o:Lcn/nubia/camera/prosetting/ui/ManualFocusView;

    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/prosetting/ui/b;)V

    .line 238
    iput v2, p0, Lcn/nubia/camera/w/a;->R:F

    goto/16 :goto_2

    .line 239
    :cond_7
    sget-object v0, Lcn/nubia/camera/w/b;->e:Lcn/nubia/camera/w/b;

    if-ne p1, v0, :cond_8

    .line 240
    invoke-direct {p0}, Lcn/nubia/camera/w/a;->i()V

    .line 241
    sget-object p1, Lcn/nubia/camera/w/b;->e:Lcn/nubia/camera/w/b;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0f0027

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 242
    sget-object p1, Lcn/nubia/camera/w/b;->e:Lcn/nubia/camera/w/b;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 243
    iget-object p1, p0, Lcn/nubia/camera/w/a;->u:Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;

    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/prosetting/ui/b;)V

    .line 244
    iput v2, p0, Lcn/nubia/camera/w/a;->R:F

    goto/16 :goto_2

    .line 245
    :cond_8
    sget-object v0, Lcn/nubia/camera/w/b;->h:Lcn/nubia/camera/w/b;

    if-ne p1, v0, :cond_9

    .line 246
    invoke-virtual {p0}, Lcn/nubia/camera/w/a;->f()V

    .line 247
    iget-object p1, p0, Lcn/nubia/camera/w/a;->w:Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;

    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/prosetting/ui/b;)V

    goto/16 :goto_2

    .line 248
    :cond_9
    sget-object v0, Lcn/nubia/camera/w/b;->i:Lcn/nubia/camera/w/b;

    if-ne p1, v0, :cond_a

    .line 250
    iget-object p1, p0, Lcn/nubia/camera/w/a;->z:Landroid/widget/TextView;

    const v0, 0x7f0f00de

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 252
    iget-object p1, p0, Lcn/nubia/camera/w/a;->y:Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->b(Ljava/lang/String;)V

    .line 254
    sget-object p1, Lcn/nubia/camera/w/b;->i:Lcn/nubia/camera/w/b;

    iget-object v2, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 256
    sget-object p1, Lcn/nubia/camera/w/b;->i:Lcn/nubia/camera/w/b;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcn/nubia/camera/w/a;->y:Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;

    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/prosetting/ui/b;)V

    goto/16 :goto_2

    .line 259
    :cond_a
    sget-object v0, Lcn/nubia/camera/w/b;->f:Lcn/nubia/camera/w/b;

    if-ne p1, v0, :cond_b

    .line 260
    iget-object p1, p0, Lcn/nubia/camera/w/a;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->C(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object p1, p0, Lcn/nubia/camera/w/a;->q:Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->C(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->b(Ljava/lang/String;)V

    .line 262
    sget-object p1, Lcn/nubia/camera/w/b;->f:Lcn/nubia/camera/w/b;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->C(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 263
    sget-object p1, Lcn/nubia/camera/w/b;->f:Lcn/nubia/camera/w/b;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->C(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcn/nubia/camera/w/a;->q:Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;

    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/prosetting/ui/b;)V

    goto/16 :goto_2

    .line 265
    :cond_b
    sget-object v0, Lcn/nubia/camera/w/b;->g:Lcn/nubia/camera/w/b;

    if-ne p1, v0, :cond_c

    .line 266
    iget-object p1, p0, Lcn/nubia/camera/w/a;->t:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->F(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object p1, p0, Lcn/nubia/camera/w/a;->s:Lcn/nubia/camera/prosetting/ui/ShutterCompensationView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->F(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/ShutterCompensationView;->b(Ljava/lang/String;)V

    .line 268
    sget-object p1, Lcn/nubia/camera/w/b;->g:Lcn/nubia/camera/w/b;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->F(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 269
    sget-object p1, Lcn/nubia/camera/w/b;->g:Lcn/nubia/camera/w/b;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->F(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 270
    iget-object p1, p0, Lcn/nubia/camera/w/a;->s:Lcn/nubia/camera/prosetting/ui/ShutterCompensationView;

    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/prosetting/ui/b;)V

    goto :goto_2

    .line 271
    :cond_c
    sget-object v0, Lcn/nubia/camera/w/b;->m:Lcn/nubia/camera/w/b;

    if-ne p1, v0, :cond_d

    .line 272
    iget-object p1, p0, Lcn/nubia/camera/w/a;->B:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->S(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object p1, p0, Lcn/nubia/camera/w/a;->A:Lcn/nubia/camera/prosetting/ui/NumberView;

    invoke-static {}, Lcn/nubia/camera/w/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/NumberView;->b(Ljava/lang/String;)V

    .line 274
    sget-object p1, Lcn/nubia/camera/w/b;->m:Lcn/nubia/camera/w/b;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->S(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 275
    sget-object p1, Lcn/nubia/camera/w/b;->m:Lcn/nubia/camera/w/b;

    invoke-static {}, Lcn/nubia/camera/w/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcn/nubia/camera/w/a;->A:Lcn/nubia/camera/prosetting/ui/NumberView;

    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/prosetting/ui/b;)V

    goto :goto_2

    .line 277
    :cond_d
    sget-object v0, Lcn/nubia/camera/w/b;->n:Lcn/nubia/camera/w/b;

    if-ne p1, v0, :cond_e

    .line 278
    iget-object p1, p0, Lcn/nubia/camera/w/a;->D:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->U(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object p1, p0, Lcn/nubia/camera/w/a;->C:Lcn/nubia/camera/prosetting/ui/DurationView;

    invoke-static {}, Lcn/nubia/camera/w/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/DurationView;->b(Ljava/lang/String;)V

    .line 280
    sget-object p1, Lcn/nubia/camera/w/b;->n:Lcn/nubia/camera/w/b;

    iget-object v0, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/w/d;->U(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 281
    sget-object p1, Lcn/nubia/camera/w/b;->n:Lcn/nubia/camera/w/b;

    invoke-static {}, Lcn/nubia/camera/w/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 282
    iget-object p1, p0, Lcn/nubia/camera/w/a;->C:Lcn/nubia/camera/prosetting/ui/DurationView;

    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/prosetting/ui/b;)V

    :cond_e
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 920
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 921
    iget-object v1, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v1}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    if-ne v1, v2, :cond_0

    .line 922
    iget-object v1, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/w/d$a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/nubia/camera/w/d$a;->b(Ljava/lang/String;)V

    .line 923
    iget-object p1, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    iget-object v1, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v0}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/b;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 954
    iget-object v0, p0, Lcn/nubia/camera/w/a;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/w/c;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .line 189
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/w/a;->b(ZZ)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 960
    iget-object v0, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    invoke-virtual {v0}, Lcn/nubia/camera/w/c;->c()I

    move-result v0

    const/4 v1, -0x1

    const v2, 0x7f090192

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    iget-object v4, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    invoke-virtual {v4}, Lcn/nubia/camera/w/c;->c()I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v0}, Lcn/nubia/camera/w/d$a;->c()I

    move-result v0

    if-eqz v0, :cond_2

    .line 961
    iget-object v0, p0, Lcn/nubia/camera/w/a;->a:Landroid/view/View;

    iget-object v4, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    iget-object v5, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    invoke-virtual {v5}, Lcn/nubia/camera/w/c;->c()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v4}, Lcn/nubia/camera/w/d$a;->c()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 962
    new-instance v4, Lcn/nubia/camera/w/a$11;

    invoke-direct {v4, p0}, Lcn/nubia/camera/w/a$11;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 977
    iget-object v4, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    iget-object v5, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    invoke-virtual {v5}, Lcn/nubia/camera/w/c;->c()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v4}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v4

    sget-object v5, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    const-wide/16 v6, 0x0

    const v8, 0x7f09018f

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    .line 978
    invoke-static {v4}, Lcn/nubia/camera/w/d;->k(Lcn/nubia/camera/ad/a;)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 979
    iget-object v0, p0, Lcn/nubia/camera/w/a;->a:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 981
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/w/a;->a:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcn/nubia/camera/w/a$13;

    invoke-direct {v5, p0}, Lcn/nubia/camera/w/a$13;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 990
    iget-object v4, p0, Lcn/nubia/camera/w/a;->a:Landroid/view/View;

    const v5, 0x7f0902d2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v9, Lcn/nubia/camera/w/a$14;

    invoke-direct {v9, p0}, Lcn/nubia/camera/w/a$14;-><init>(Lcn/nubia/camera/w/a;)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1000
    iget-object v4, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    invoke-virtual {v4}, Lcn/nubia/camera/w/c;->c()I

    move-result v4

    const/16 v9, 0x4b

    if-eq v4, v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    iget-object v4, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    .line 1001
    invoke-virtual {v4}, Lcn/nubia/camera/w/c;->c()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v1}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v1

    sget-object v4, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    .line 1002
    invoke-static {v1}, Lcn/nubia/camera/w/d;->k(Lcn/nubia/camera/ad/a;)J

    move-result-wide v10

    cmp-long v1, v10, v6

    if-lez v1, :cond_1

    .line 1003
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/w/a;->a:Landroid/view/View;

    .line 1004
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, v9}, Lcn/nubia/camera/w/a;->a(Landroid/view/View;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/w/a;->a:Landroid/view/View;

    .line 1005
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, v3}, Lcn/nubia/camera/w/a;->a(Landroid/view/View;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/w/a;->a:Landroid/view/View;

    .line 1006
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, v9}, Lcn/nubia/camera/w/a;->a(Landroid/view/View;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1007
    invoke-virtual {p0}, Lcn/nubia/camera/w/a;->g()V

    .line 1008
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->b(Landroid/view/MotionEvent;)V

    .line 1009
    iget-object p1, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    invoke-virtual {p1}, Lcn/nubia/camera/w/c;->b()V

    goto :goto_0

    .line 1012
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 1013
    invoke-direct {p0, v0, p1, v9}, Lcn/nubia/camera/w/a;->a(Landroid/view/View;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/w/a;->a:Landroid/view/View;

    .line 1014
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, v3}, Lcn/nubia/camera/w/a;->a(Landroid/view/View;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1015
    invoke-virtual {p0}, Lcn/nubia/camera/w/a;->g()V

    .line 1016
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->b(Landroid/view/MotionEvent;)V

    .line 1017
    iget-object p1, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    invoke-virtual {p1}, Lcn/nubia/camera/w/c;->b()V

    goto :goto_0

    .line 1021
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/w/a;->a:Landroid/view/View;

    .line 1022
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, v3}, Lcn/nubia/camera/w/a;->a(Landroid/view/View;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1023
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/a;->b(Landroid/view/MotionEvent;)V

    :cond_3
    :goto_0
    return v3
.end method

.method public b()V
    .locals 4

    .line 862
    iget-object v0, p0, Lcn/nubia/camera/w/a;->m:Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/w/a;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 863
    iget-object v1, p0, Lcn/nubia/camera/w/a;->F:Lcn/nubia/camera/ad/a;

    invoke-static {v1}, Lcn/nubia/camera/w/d;->w(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    iget-object v0, p0, Lcn/nubia/camera/w/a;->m:Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 866
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 867
    iget-object v2, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v2}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v2

    sget-object v3, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    if-ne v2, v3, :cond_1

    .line 868
    iget-object v2, p0, Lcn/nubia/camera/w/a;->a:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v1}, Lcn/nubia/camera/w/d$a;->c()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 869
    invoke-direct {p0, v0, v0}, Lcn/nubia/camera/w/a;->b(ZZ)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 873
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    sget-object v1, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/b;)V

    return-void
.end method

.method public b(Lcn/nubia/camera/w/b;)V
    .locals 1

    .line 858
    iget-object v0, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/b;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 895
    iget-object v0, p0, Lcn/nubia/camera/w/a;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    invoke-virtual {v0}, Lcn/nubia/camera/w/c;->a()V

    return-void
.end method

.method public d()V
    .locals 2

    .line 900
    iget-object v0, p0, Lcn/nubia/camera/w/a;->b:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 903
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    if-eqz v0, :cond_1

    .line 904
    invoke-virtual {v0, v1}, Lcn/nubia/camera/w/c;->b(I)V

    :cond_1
    return-void
.end method

.method public e()Z
    .locals 1

    .line 909
    iget-object v0, p0, Lcn/nubia/camera/w/a;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 5

    .line 930
    iget-object v0, p0, Lcn/nubia/camera/w/a;->w:Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcn/nubia/camera/w/a;->w:Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->b(Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcn/nubia/camera/w/a;->x:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 933
    sget-object v0, Lcn/nubia/camera/w/b;->h:Lcn/nubia/camera/w/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 934
    sget-object v0, Lcn/nubia/camera/w/b;->h:Lcn/nubia/camera/w/b;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    .line 944
    iget-object v0, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    invoke-virtual {v0}, Lcn/nubia/camera/w/c;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 945
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    iget-object v1, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    invoke-virtual {v1}, Lcn/nubia/camera/w/c;->c()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v0}, Lcn/nubia/camera/w/d$a;->c()I

    move-result v0

    if-eqz v0, :cond_1

    .line 946
    iget-object v0, p0, Lcn/nubia/camera/w/a;->a:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/camera/w/a;->G:Ljava/util/List;

    iget-object v2, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    invoke-virtual {v2}, Lcn/nubia/camera/w/c;->c()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v1}, Lcn/nubia/camera/w/d$a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 947
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 948
    invoke-direct {p0, v0, v0}, Lcn/nubia/camera/w/a;->b(ZZ)V

    .line 950
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/w/a;->O:Lcn/nubia/camera/w/c;

    invoke-virtual {v0}, Lcn/nubia/camera/w/c;->d()V

    return-void
.end method
