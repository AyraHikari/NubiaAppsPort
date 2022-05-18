.class public Lcn/nubia/camera/aj/c;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/aj/a$a;
.implements Lcn/nubia/camera/aj/i;
.implements Lcn/nubia/camera/j/d;
.implements Lcn/nubia/camera/n/b$e;
.implements Lcn/nubia/camera/q/m$a;
.implements Lcn/nubia/camera/z/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aj/c$b;,
        Lcn/nubia/camera/aj/c$a;,
        Lcn/nubia/camera/aj/c$c;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/lang/Object;

.field private D:I

.field private final E:I

.field private F:F

.field private G:Lcn/nubia/camera/k/ab$a;

.field private H:Lcn/nubia/camera/k/ab$a;

.field private I:Lcn/nubia/camera/aj/l;

.field private J:Lcn/nubia/camera/k/ab$a;

.field private K:Lcn/nubia/camera/extendedUI/c;

.field protected a:Lcn/nubia/camera/aj/f;

.field b:Lcn/nubia/camera/s/a$d;

.field private c:Lcn/nubia/camera/n/b;

.field private i:Z

.field private j:Lcn/nubia/camera/aj/a/a;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private m:Z

.field private n:Lcn/nubia/camera/aj/c$b;

.field private o:Lcn/nubia/camera/aj/c$a;

.field private p:Lcn/nubia/camera/aj/h;

.field private q:Lcom/android/common/ui/RotateImageView;

.field private r:Lcn/nubia/camera/pretty/a;

.field private s:Lcn/nubia/camera/s/a;

.field private t:Lcn/nubia/camera/s/a$b;

.field private u:F

.field private v:Lcn/nubia/camera/aj/c$c;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/ImageView;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 109
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    const/4 v1, 0x0

    .line 79
    iput-boolean v1, p0, Lcn/nubia/camera/aj/c;->i:Z

    .line 81
    iput-object v0, p0, Lcn/nubia/camera/aj/c;->a:Lcn/nubia/camera/aj/f;

    .line 82
    iput-object v0, p0, Lcn/nubia/camera/aj/c;->k:Landroid/widget/RelativeLayout;

    .line 83
    iput-object v0, p0, Lcn/nubia/camera/aj/c;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 84
    iput-boolean v1, p0, Lcn/nubia/camera/aj/c;->m:Z

    .line 85
    iput-object v0, p0, Lcn/nubia/camera/aj/c;->n:Lcn/nubia/camera/aj/c$b;

    .line 94
    new-instance v2, Lcn/nubia/camera/aj/c$a;

    invoke-direct {v2, p0}, Lcn/nubia/camera/aj/c$a;-><init>(Lcn/nubia/camera/aj/c;)V

    iput-object v2, p0, Lcn/nubia/camera/aj/c;->o:Lcn/nubia/camera/aj/c$a;

    .line 96
    iput-object v0, p0, Lcn/nubia/camera/aj/c;->q:Lcom/android/common/ui/RotateImageView;

    .line 97
    iput-object v0, p0, Lcn/nubia/camera/aj/c;->r:Lcn/nubia/camera/pretty/a;

    .line 99
    sget-object v2, Lcn/nubia/camera/s/a$b;->c:Lcn/nubia/camera/s/a$b;

    iput-object v2, p0, Lcn/nubia/camera/aj/c;->t:Lcn/nubia/camera/s/a$b;

    const/4 v2, 0x0

    .line 100
    iput v2, p0, Lcn/nubia/camera/aj/c;->u:F

    .line 103
    iput-object v0, p0, Lcn/nubia/camera/aj/c;->w:Landroid/widget/RelativeLayout;

    .line 104
    iput-object v0, p0, Lcn/nubia/camera/aj/c;->x:Landroid/widget/ImageView;

    .line 105
    iput-boolean v1, p0, Lcn/nubia/camera/aj/c;->y:Z

    .line 106
    iput-boolean v1, p0, Lcn/nubia/camera/aj/c;->z:Z

    .line 748
    new-instance v3, Lcn/nubia/camera/aj/c$5;

    invoke-direct {v3, p0}, Lcn/nubia/camera/aj/c$5;-><init>(Lcn/nubia/camera/aj/c;)V

    iput-object v3, p0, Lcn/nubia/camera/aj/c;->b:Lcn/nubia/camera/s/a$d;

    .line 824
    iput-boolean v1, p0, Lcn/nubia/camera/aj/c;->A:Z

    .line 825
    iput-boolean v1, p0, Lcn/nubia/camera/aj/c;->B:Z

    .line 826
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcn/nubia/camera/aj/c;->C:Ljava/lang/Object;

    .line 827
    iput v1, p0, Lcn/nubia/camera/aj/c;->D:I

    const/16 v1, 0x8

    .line 828
    iput v1, p0, Lcn/nubia/camera/aj/c;->E:I

    .line 829
    iput v2, p0, Lcn/nubia/camera/aj/c;->F:F

    .line 830
    new-instance v1, Lcn/nubia/camera/aj/c$6;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aj/c$6;-><init>(Lcn/nubia/camera/aj/c;)V

    iput-object v1, p0, Lcn/nubia/camera/aj/c;->G:Lcn/nubia/camera/k/ab$a;

    .line 895
    new-instance v1, Lcn/nubia/camera/aj/c$7;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aj/c$7;-><init>(Lcn/nubia/camera/aj/c;)V

    iput-object v1, p0, Lcn/nubia/camera/aj/c;->H:Lcn/nubia/camera/k/ab$a;

    .line 923
    new-instance v1, Lcn/nubia/camera/aj/l;

    invoke-direct {v1}, Lcn/nubia/camera/aj/l;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/aj/c;->I:Lcn/nubia/camera/aj/l;

    .line 924
    new-instance v1, Lcn/nubia/camera/aj/c$8;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aj/c$8;-><init>(Lcn/nubia/camera/aj/c;)V

    iput-object v1, p0, Lcn/nubia/camera/aj/c;->J:Lcn/nubia/camera/k/ab$a;

    .line 1003
    iput-object v0, p0, Lcn/nubia/camera/aj/c;->K:Lcn/nubia/camera/extendedUI/c;

    return-void
.end method

.method public constructor <init>(ILcn/nubia/camera/aj/a/a;Lcn/nubia/camera/aj/f;Lcn/nubia/camera/aj/h;Lcom/android/common/ui/RotateImageView;)V
    .locals 3

    .line 115
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcn/nubia/camera/aj/c;->i:Z

    .line 81
    iput-object p1, p0, Lcn/nubia/camera/aj/c;->a:Lcn/nubia/camera/aj/f;

    .line 82
    iput-object p1, p0, Lcn/nubia/camera/aj/c;->k:Landroid/widget/RelativeLayout;

    .line 83
    iput-object p1, p0, Lcn/nubia/camera/aj/c;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 84
    iput-boolean v0, p0, Lcn/nubia/camera/aj/c;->m:Z

    .line 85
    iput-object p1, p0, Lcn/nubia/camera/aj/c;->n:Lcn/nubia/camera/aj/c$b;

    .line 94
    new-instance v1, Lcn/nubia/camera/aj/c$a;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aj/c$a;-><init>(Lcn/nubia/camera/aj/c;)V

    iput-object v1, p0, Lcn/nubia/camera/aj/c;->o:Lcn/nubia/camera/aj/c$a;

    .line 96
    iput-object p1, p0, Lcn/nubia/camera/aj/c;->q:Lcom/android/common/ui/RotateImageView;

    .line 97
    iput-object p1, p0, Lcn/nubia/camera/aj/c;->r:Lcn/nubia/camera/pretty/a;

    .line 99
    sget-object v1, Lcn/nubia/camera/s/a$b;->c:Lcn/nubia/camera/s/a$b;

    iput-object v1, p0, Lcn/nubia/camera/aj/c;->t:Lcn/nubia/camera/s/a$b;

    const/4 v1, 0x0

    .line 100
    iput v1, p0, Lcn/nubia/camera/aj/c;->u:F

    .line 103
    iput-object p1, p0, Lcn/nubia/camera/aj/c;->w:Landroid/widget/RelativeLayout;

    .line 104
    iput-object p1, p0, Lcn/nubia/camera/aj/c;->x:Landroid/widget/ImageView;

    .line 105
    iput-boolean v0, p0, Lcn/nubia/camera/aj/c;->y:Z

    .line 106
    iput-boolean v0, p0, Lcn/nubia/camera/aj/c;->z:Z

    .line 748
    new-instance v2, Lcn/nubia/camera/aj/c$5;

    invoke-direct {v2, p0}, Lcn/nubia/camera/aj/c$5;-><init>(Lcn/nubia/camera/aj/c;)V

    iput-object v2, p0, Lcn/nubia/camera/aj/c;->b:Lcn/nubia/camera/s/a$d;

    .line 824
    iput-boolean v0, p0, Lcn/nubia/camera/aj/c;->A:Z

    .line 825
    iput-boolean v0, p0, Lcn/nubia/camera/aj/c;->B:Z

    .line 826
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcn/nubia/camera/aj/c;->C:Ljava/lang/Object;

    .line 827
    iput v0, p0, Lcn/nubia/camera/aj/c;->D:I

    const/16 v0, 0x8

    .line 828
    iput v0, p0, Lcn/nubia/camera/aj/c;->E:I

    .line 829
    iput v1, p0, Lcn/nubia/camera/aj/c;->F:F

    .line 830
    new-instance v0, Lcn/nubia/camera/aj/c$6;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aj/c$6;-><init>(Lcn/nubia/camera/aj/c;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/c;->G:Lcn/nubia/camera/k/ab$a;

    .line 895
    new-instance v0, Lcn/nubia/camera/aj/c$7;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aj/c$7;-><init>(Lcn/nubia/camera/aj/c;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/c;->H:Lcn/nubia/camera/k/ab$a;

    .line 923
    new-instance v0, Lcn/nubia/camera/aj/l;

    invoke-direct {v0}, Lcn/nubia/camera/aj/l;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aj/c;->I:Lcn/nubia/camera/aj/l;

    .line 924
    new-instance v0, Lcn/nubia/camera/aj/c$8;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aj/c$8;-><init>(Lcn/nubia/camera/aj/c;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/c;->J:Lcn/nubia/camera/k/ab$a;

    .line 1003
    iput-object p1, p0, Lcn/nubia/camera/aj/c;->K:Lcn/nubia/camera/extendedUI/c;

    .line 116
    iput-object p2, p0, Lcn/nubia/camera/aj/c;->j:Lcn/nubia/camera/aj/a/a;

    .line 117
    iput-object p3, p0, Lcn/nubia/camera/aj/c;->a:Lcn/nubia/camera/aj/f;

    .line 118
    iput-object p4, p0, Lcn/nubia/camera/aj/c;->p:Lcn/nubia/camera/aj/h;

    .line 119
    iput-object p5, p0, Lcn/nubia/camera/aj/c;->q:Lcom/android/common/ui/RotateImageView;

    return-void
.end method

.method static synthetic A(Lcn/nubia/camera/aj/c;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcn/nubia/camera/aj/c;->A:Z

    return p0
.end method

.method static synthetic B(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/l;
    .locals 0

    .line 69
    iget-object p0, p0, Lcn/nubia/camera/aj/c;->I:Lcn/nubia/camera/aj/l;

    return-object p0
.end method

.method static synthetic C(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic D(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic E(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic F(Lcn/nubia/camera/aj/c;)F
    .locals 0

    .line 69
    iget p0, p0, Lcn/nubia/camera/aj/c;->u:F

    return p0
.end method

.method static synthetic G(Lcn/nubia/camera/aj/c;)F
    .locals 0

    .line 69
    iget p0, p0, Lcn/nubia/camera/aj/c;->F:F

    return p0
.end method

.method static synthetic H(Lcn/nubia/camera/aj/c;)I
    .locals 0

    .line 69
    iget p0, p0, Lcn/nubia/camera/aj/c;->D:I

    return p0
.end method

.method static synthetic I(Lcn/nubia/camera/aj/c;)I
    .locals 2

    .line 69
    iget v0, p0, Lcn/nubia/camera/aj/c;->D:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/camera/aj/c;->D:I

    return v0
.end method

.method static synthetic J(Lcn/nubia/camera/aj/c;)I
    .locals 2

    .line 69
    iget v0, p0, Lcn/nubia/camera/aj/c;->D:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/nubia/camera/aj/c;->D:I

    return v0
.end method

.method private J()Z
    .locals 2

    .line 694
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->u()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_camera_pretty_slimming"

    invoke-virtual {v0, v1}, Lcom/android/preference/c;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->u()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_camera_pretty_smooth"

    invoke-virtual {v0, v1}, Lcom/android/preference/c;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 696
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->u()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_camera_pretty_toning"

    invoke-virtual {v0, v1}, Lcom/android/preference/c;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private K()Z
    .locals 2

    .line 703
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->G()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 705
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->J()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic K(Lcn/nubia/camera/aj/c;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcn/nubia/camera/aj/c;->z:Z

    return p0
.end method

.method static synthetic L(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private L()V
    .locals 3

    .line 712
    iget-boolean v0, p0, Lcn/nubia/camera/aj/c;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/aj/c;->s:Lcn/nubia/camera/s/a;

    if-nez v0, :cond_2

    .line 714
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 715
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 716
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 720
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->u()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_gender_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/c;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->u()Lcom/android/preference/c;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/aj/c;->t:Lcn/nubia/camera/s/a$b;

    invoke-virtual {v2}, Lcn/nubia/camera/s/a$b;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/nubia/camera/s/a$b;->a(I)Lcn/nubia/camera/s/a$b;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/aj/c;->t:Lcn/nubia/camera/s/a$b;

    return-void

    :cond_1
    const-string v0, "NormalFragment"

    const-string v1, "initGenderEffectControl"

    .line 724
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    new-instance v0, Lcn/nubia/camera/s/a;

    invoke-direct {v0}, Lcn/nubia/camera/s/a;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aj/c;->s:Lcn/nubia/camera/s/a;

    .line 726
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/s/a;->a(Lcn/nubia/camera/ad/a;)V

    .line 727
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->s:Lcn/nubia/camera/s/a;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/c;->a(Ljava/lang/Object;)V

    .line 728
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->T()Lcn/nubia/camera/facedetection/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/c;->s:Lcn/nubia/camera/s/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/facedetection/a;->a(Lcn/nubia/camera/k/k;)V

    .line 729
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->s:Lcn/nubia/camera/s/a;

    iget-object v1, p0, Lcn/nubia/camera/aj/c;->b:Lcn/nubia/camera/s/a$d;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/s/a;->a(Lcn/nubia/camera/s/a$d;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private M()V
    .locals 2

    .line 733
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->s:Lcn/nubia/camera/s/a;

    if-eqz v0, :cond_0

    const-string v0, "NormalFragment"

    const-string v1, "releaseGenderEffectControl"

    .line 734
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->T()Lcn/nubia/camera/facedetection/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/c;->s:Lcn/nubia/camera/s/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/facedetection/a;->b(Lcn/nubia/camera/k/k;)V

    .line 736
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->s:Lcn/nubia/camera/s/a;

    invoke-virtual {v0}, Lcn/nubia/camera/s/a;->a()V

    .line 737
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->s:Lcn/nubia/camera/s/a;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/c;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 738
    iput-object v0, p0, Lcn/nubia/camera/aj/c;->s:Lcn/nubia/camera/s/a;

    :cond_0
    return-void
.end method

.method private N()V
    .locals 3

    .line 991
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aJ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 994
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_third_arith_hdr_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    .line 995
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 996
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->p:Lcn/nubia/camera/aj/h;

    iget-object v1, p0, Lcn/nubia/camera/aj/c;->H:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/h;->a(Lcn/nubia/camera/k/ab$a;)V

    goto :goto_0

    .line 998
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->p:Lcn/nubia/camera/aj/h;

    iget-object v1, p0, Lcn/nubia/camera/aj/c;->H:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/h;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 999
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->o:Lcn/nubia/camera/aj/c$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/c$a;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private O()V
    .locals 4

    .line 1010
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->p:Lcn/nubia/camera/aj/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1011
    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/aj/c;->p:Lcn/nubia/camera/aj/h;

    .line 1012
    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/aj/c;->K:Lcn/nubia/camera/extendedUI/c;

    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/c;->c(I)V

    .line 1015
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->K:Lcn/nubia/camera/extendedUI/c;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/c;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/aj/c;->p:Lcn/nubia/camera/aj/h;

    invoke-virtual {v3}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/camera/ba/a;->a(Landroid/content/Context;Landroid/util/Size;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1017
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->K:Lcn/nubia/camera/extendedUI/c;

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    .line 1018
    invoke-virtual {v0, v2}, Lcn/nubia/camera/extendedUI/c;->c(I)V

    .line 1021
    :cond_1
    :goto_0
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/aj/c;->K:Lcn/nubia/camera/extendedUI/c;

    invoke-virtual {v2}, Lcn/nubia/camera/extendedUI/c;->a()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    sget-object v2, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ba/f;->d(ZLcn/nubia/camera/af/a;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aj/c;F)F
    .locals 0

    .line 69
    iput p1, p0, Lcn/nubia/camera/aj/c;->u:F

    return p1
.end method

.method public static a(Lcn/nubia/camera/aj/a/a;Lcn/nubia/camera/aj/f;Lcn/nubia/camera/aj/h;Lcom/android/common/ui/RotateImageView;)Lcn/nubia/camera/aj/c;
    .locals 7

    .line 124
    new-instance v6, Lcn/nubia/camera/aj/c;

    const/4 v1, 0x1

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/aj/c;-><init>(ILcn/nubia/camera/aj/a/a;Lcn/nubia/camera/aj/f;Lcn/nubia/camera/aj/h;Lcom/android/common/ui/RotateImageView;)V

    return-object v6
.end method

.method static synthetic a(Lcn/nubia/camera/aj/c;Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b;
    .locals 0

    .line 69
    iput-object p1, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/aj/c;Lcn/nubia/camera/s/a$b;)Lcn/nubia/camera/s/a$b;
    .locals 0

    .line 69
    iput-object p1, p0, Lcn/nubia/camera/aj/c;->t:Lcn/nubia/camera/s/a$b;

    return-object p1
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 743
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aj/c;->t:Lcn/nubia/camera/s/a$b;

    .line 744
    invoke-virtual {v0}, Lcn/nubia/camera/s/a$b;->a()I

    move-result v0

    const-string v1, "pref_gender_key"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 745
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aj/c;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->L()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aj/c;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/c;->c(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aj/c;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/c;->a(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aj/c;Landroid/view/View;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/c;->f(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aj/c;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcn/nubia/camera/aj/c;->i:Z

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/aj/c;[I[I)Z
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/aj/c;->a([I[I)Z

    move-result p0

    return p0
.end method

.method private a([I[I)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 953
    :cond_1
    aget p1, p1, v1

    aget p2, p2, v1

    if-eq p1, p2, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method static synthetic b(Lcn/nubia/camera/aj/c;F)F
    .locals 0

    .line 69
    iput p1, p0, Lcn/nubia/camera/aj/c;->F:F

    return p1
.end method

.method private b(J)V
    .locals 2

    .line 512
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->k:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    const-string v0, "ui_change_proshutter"

    .line 515
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/c;->d(Ljava/lang/String;)V

    .line 516
    new-instance v0, Lcn/nubia/camera/aj/c$b;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/camera/aj/c$b;-><init>(Lcn/nubia/camera/aj/c;J)V

    iput-object v0, p0, Lcn/nubia/camera/aj/c;->n:Lcn/nubia/camera/aj/c$b;

    .line 517
    invoke-virtual {v0}, Lcn/nubia/camera/aj/c$b;->start()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/aj/c;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->O()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/aj/c;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcn/nubia/camera/aj/c;->A:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private c(I)V
    .locals 1

    .line 968
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->w:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 969
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/aj/c;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcn/nubia/camera/aj/c;->z:Z

    return p1
.end method

.method static synthetic d(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/h;
    .locals 0

    .line 69
    iget-object p0, p0, Lcn/nubia/camera/aj/c;->p:Lcn/nubia/camera/aj/h;

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 4

    .line 180
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->O()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->L()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 187
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->au()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->u()Lcom/android/preference/c;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/aj/c;->t:Lcn/nubia/camera/s/a$b;

    invoke-virtual {v2}, Lcn/nubia/camera/s/a$b;->a()I

    move-result v2

    const-string v3, "pref_gender_key"

    invoke-virtual {v0, v3, v2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/nubia/camera/s/a$b;->a(I)Lcn/nubia/camera/s/a$b;

    move-result-object v0

    .line 190
    sget-object v2, Lcn/nubia/camera/s/a$b;->b:Lcn/nubia/camera/s/a$b;

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 197
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->u()Lcom/android/preference/c;

    move-result-object v0

    const-string v2, "pref_camera_pretty_slimming"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 198
    new-instance v1, Lcn/nubia/camera/pretty/c;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->u()Lcom/android/preference/c;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcn/nubia/camera/pretty/c;-><init>(Lcn/nubia/camera/ad/a;Lcom/android/preference/c;I)V

    iput-object v1, p0, Lcn/nubia/camera/aj/c;->r:Lcn/nubia/camera/pretty/a;

    .line 199
    new-instance v0, Lcn/nubia/camera/aj/c$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aj/c$2;-><init>(Lcn/nubia/camera/aj/c;)V

    invoke-interface {v1, v0}, Lcn/nubia/camera/pretty/a;->a(Lcn/nubia/camera/pretty/a$b;)V

    .line 218
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->r:Lcn/nubia/camera/pretty/a;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-interface {v0, p1}, Lcn/nubia/camera/pretty/a;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private e(Landroid/view/View;)V
    .locals 3

    .line 222
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->N()Lcn/nubia/camera/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/a;->c()I

    move-result v0

    const-string v1, "pref_disable_auto_supernight_key"

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    .line 223
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    const v0, 0x7f090303

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/aj/c;->w:Landroid/widget/RelativeLayout;

    const v0, 0x7f090302

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/camera/aj/c;->x:Landroid/widget/ImageView;

    .line 229
    new-instance v0, Lcn/nubia/camera/aj/c$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aj/c$3;-><init>(Lcn/nubia/camera/aj/c;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/aj/c;)Lcom/android/preference/c;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method private f(Landroid/view/View;)V
    .locals 9

    .line 243
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/aj/c;->q:Lcom/android/common/ui/RotateImageView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->i()Lcom/android/preference/ListPreference;

    move-result-object v0

    .line 247
    invoke-static {v0}, Lcn/nubia/camera/ao/d;->a(Lcom/android/preference/ListPreference;)V

    .line 248
    new-instance v8, Lcn/nubia/camera/n/b;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    const v6, 0x7f090160

    iget-object v7, p0, Lcn/nubia/camera/aj/c;->q:Lcom/android/common/ui/RotateImageView;

    move-object v1, v8

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcn/nubia/camera/n/b;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcom/android/preference/ListPreference;Landroid/view/View;ILandroid/view/View;)V

    iput-object v8, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    .line 250
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    iget-object v1, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/n/b;)V

    .line 251
    iget-object p1, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b$e;)V

    .line 252
    iget-object p1, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    new-instance v1, Lcn/nubia/camera/aj/c$4;

    invoke-direct {v1, p0, v0}, Lcn/nubia/camera/aj/c$4;-><init>(Lcn/nubia/camera/aj/c;Lcom/android/preference/ListPreference;)V

    invoke-virtual {p1, v1}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b$a;)V

    .line 269
    iget-object p1, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    invoke-virtual {p1}, Lcn/nubia/camera/n/b;->b()V

    const/4 p1, 0x1

    .line 270
    iput-boolean p1, p0, Lcn/nubia/camera/aj/c;->i:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private g(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f09021b

    .line 420
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09021c

    .line 421
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 422
    iget-object v1, p0, Lcn/nubia/camera/aj/c;->j:Lcn/nubia/camera/aj/a/a;

    new-instance v2, Lcn/nubia/camera/aj/a/b;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1}, Lcn/nubia/camera/aj/a/b;-><init>(Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v2}, Lcn/nubia/camera/aj/a/a;->a(Lcn/nubia/camera/aj/a/b;)V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/aj/c;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->J()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcn/nubia/camera/aj/c;)Lcom/android/preference/c;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method private h(Landroid/view/View;)V
    .locals 2

    .line 426
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->a:Lcn/nubia/camera/aj/f;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/aj/f;->a(Lcn/nubia/camera/aj/i;)V

    const v0, 0x7f0902f7

    .line 427
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/aj/c;->k:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    .line 428
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f090079

    .line 429
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 430
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0902f8

    .line 431
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object p1, p0, Lcn/nubia/camera/aj/c;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 432
    iget-object p1, p0, Lcn/nubia/camera/aj/c;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/aj/c;->a(Landroid/view/View;)V

    return-void
.end method

.method private i()Lcom/android/preference/ListPreference;
    .locals 3

    .line 275
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_normal_effect_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    const-string v2, "pref_pretty_effect_key"

    if-ne v0, v1, :cond_1

    .line 279
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->au()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->u()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/c;->t:Lcn/nubia/camera/s/a$b;

    invoke-virtual {v1}, Lcn/nubia/camera/s/a$b;->a()I

    move-result v1

    const-string v2, "pref_gender_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/nubia/camera/s/a$b;->a(I)Lcn/nubia/camera/s/a$b;

    move-result-object v0

    .line 284
    sget-object v1, Lcn/nubia/camera/s/a$b;->b:Lcn/nubia/camera/s/a$b;

    if-ne v0, v1, :cond_2

    .line 285
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_female_effect_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_male_effect_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private i(Landroid/view/View;)V
    .locals 2

    .line 1005
    new-instance v0, Lcn/nubia/camera/extendedUI/c;

    const v1, 0x7f090261

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/nubia/camera/extendedUI/c;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/c;->K:Lcn/nubia/camera/extendedUI/c;

    .line 1006
    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/c;->b()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;ILandroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/aj/c;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->M()V

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private j()V
    .locals 4

    .line 386
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->d()I

    move-result v0

    const/16 v1, 0x5a0

    if-le v0, v1, :cond_1

    .line 387
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 388
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->c()Z

    move-result v1

    const v2, 0x7f0701d8

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 390
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07016e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 394
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/aj/c;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/c$a;
    .locals 0

    .line 69
    iget-object p0, p0, Lcn/nubia/camera/aj/c;->o:Lcn/nubia/camera/aj/c$a;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/camera/aj/c;)Lcom/android/preference/c;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method private m()V
    .locals 1

    const-string v0, "ui_change_effect"

    .line 466
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic n(Lcn/nubia/camera/aj/c;)Lcom/android/preference/c;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method private n()V
    .locals 2

    .line 521
    iget-boolean v0, p0, Lcn/nubia/camera/aj/c;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 522
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->o()V

    .line 523
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->k:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    const-string v0, "ui_change_proshutter"

    .line 526
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o(Lcn/nubia/camera/aj/c;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcn/nubia/camera/aj/c;->l:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    return-object p0
.end method

.method private o()V
    .locals 3

    .line 594
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->n:Lcn/nubia/camera/aj/c$b;

    if-nez v0, :cond_0

    return-void

    .line 595
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/camera/aj/c$b;->a()V

    .line 597
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->n:Lcn/nubia/camera/aj/c$b;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/c$b;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InterruptedException when mProgressThread.join() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NormalFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->o:Lcn/nubia/camera/aj/c$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/c$a;->removeMessages(I)V

    const/4 v0, 0x0

    .line 602
    iput-object v0, p0, Lcn/nubia/camera/aj/c;->n:Lcn/nubia/camera/aj/c$b;

    return-void
.end method

.method static synthetic p(Lcn/nubia/camera/aj/c;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->n()V

    return-void
.end method

.method static synthetic q(Lcn/nubia/camera/aj/c;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcn/nubia/camera/aj/c;->m:Z

    return p0
.end method

.method static synthetic r(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/s/a$b;
    .locals 0

    .line 69
    iget-object p0, p0, Lcn/nubia/camera/aj/c;->t:Lcn/nubia/camera/s/a$b;

    return-object p0
.end method

.method static synthetic t(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/n/b;
    .locals 0

    .line 69
    iget-object p0, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    return-object p0
.end method

.method static synthetic u(Lcn/nubia/camera/aj/c;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcn/nubia/camera/aj/c;->i:Z

    return p0
.end method

.method static synthetic v(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/pretty/a;
    .locals 0

    .line 69
    iget-object p0, p0, Lcn/nubia/camera/aj/c;->r:Lcn/nubia/camera/pretty/a;

    return-object p0
.end method

.method static synthetic w(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic x(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Lcn/nubia/camera/aj/c;)Ljava/lang/Object;
    .locals 0

    .line 69
    iget-object p0, p0, Lcn/nubia/camera/aj/c;->C:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic z(Lcn/nubia/camera/aj/c;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcn/nubia/camera/aj/c;->B:Z

    return p0
.end method


# virtual methods
.method public I()V
    .locals 5

    .line 436
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/aj/c;->p:Lcn/nubia/camera/aj/h;

    if-eqz v0, :cond_4

    .line 438
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->u()Lcom/android/preference/c;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/aj/c;->p:Lcn/nubia/camera/aj/h;

    .line 439
    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-wide/16 v0, -0x1

    .line 440
    iget-object v2, p0, Lcn/nubia/camera/aj/c;->p:Lcn/nubia/camera/aj/h;

    invoke-virtual {v2}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 441
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->a()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "off"

    .line 442
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->u()Lcom/android/preference/c;

    move-result-object v1

    const-string v2, "pref_third_arith_hdr_key"

    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/camera/ba/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/aj/c;->p:Lcn/nubia/camera/aj/h;

    .line 443
    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->C:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "auto"

    .line 450
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->u()Lcom/android/preference/c;

    move-result-object v2

    const-string v3, "pref_third_arith_hdr_key"

    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/camera/ba/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/camera/aj/c;->B:Z

    if-eqz v1, :cond_2

    .line 453
    iget-object v1, p0, Lcn/nubia/camera/aj/c;->v:Lcn/nubia/camera/aj/c$c;

    if-eqz v1, :cond_2

    .line 454
    iget-boolean v2, p0, Lcn/nubia/camera/aj/c;->A:Z

    invoke-interface {v1, v2}, Lcn/nubia/camera/aj/c$c;->a(Z)V

    .line 457
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 444
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->C:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 445
    :try_start_1
    iput-boolean v1, p0, Lcn/nubia/camera/aj/c;->B:Z

    .line 446
    iput-boolean v1, p0, Lcn/nubia/camera/aj/c;->A:Z

    .line 447
    monitor-exit v0

    :goto_1
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_4
    :goto_2
    return-void
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method protected a(IZ)V
    .locals 1

    .line 413
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(IZ)V

    .line 414
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/n/b;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 531
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 532
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->c(Z)V

    .line 534
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->o:Lcn/nubia/camera/aj/c$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/c$a;->removeMessages(I)V

    .line 535
    sget-wide v0, Lcn/nubia/camera/aq/f;->h:J

    div-long v0, p1, v0

    long-to-int v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 536
    sget-wide v0, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/aj/c;->b(J)V

    .line 538
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/aj/c;->o:Lcn/nubia/camera/aj/c$a;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Lcn/nubia/camera/aj/c$a;->removeMessages(I)V

    .line 539
    iget-object p1, p0, Lcn/nubia/camera/aj/c;->o:Lcn/nubia/camera/aj/c$a;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/aj/c$a;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 0

    .line 152
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/q/a;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V

    .line 153
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcn/nubia/camera/aj/c$1;

    invoke-direct {p2, p0}, Lcn/nubia/camera/aj/c$1;-><init>(Lcn/nubia/camera/aj/c;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/aj/c$c;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcn/nubia/camera/aj/c;->v:Lcn/nubia/camera/aj/c$c;

    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    const-string p2, "NormalFragment"

    const-string p3, "onPreviewAreaUpdate"

    .line 368
    invoke-static {p2, p3}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object p2, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    if-eqz p2, :cond_0

    .line 370
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->v()F

    move-result p3

    invoke-virtual {p2, p3}, Lcn/nubia/camera/n/b;->a(F)V

    .line 372
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/aj/c;->r:Lcn/nubia/camera/pretty/a;

    if-eqz p2, :cond_1

    .line 373
    invoke-interface {p2}, Lcn/nubia/camera/pretty/a;->c()V

    .line 375
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->d()I

    move-result p1

    const/16 p2, 0x5a0

    if-gt p1, p2, :cond_2

    .line 376
    iget-object p1, p0, Lcn/nubia/camera/aj/c;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 377
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result p2

    sub-int/2addr p2, p5

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 378
    iget-object p2, p0, Lcn/nubia/camera/aj/c;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    iget-object p1, p0, Lcn/nubia/camera/aj/c;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    goto :goto_0

    .line 381
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->j()V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a_(I)V
    .locals 1

    .line 1026
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->K:Lcn/nubia/camera/extendedUI/c;

    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {v0, p1}, Lcn/nubia/camera/extendedUI/c;->a(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 544
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 545
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->c(Z)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->o:Lcn/nubia/camera/aj/c$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/c$a;->removeMessages(I)V

    .line 548
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->o:Lcn/nubia/camera/aj/c$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/c$a;->sendEmptyMessage(I)Z

    .line 549
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->o:Lcn/nubia/camera/aj/c$a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/c$a;->removeMessages(I)V

    .line 550
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->o:Lcn/nubia/camera/aj/c$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/c$a;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1033
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->K:Lcn/nubia/camera/extendedUI/c;

    if-eqz v0, :cond_0

    .line 1034
    invoke-virtual {v0, p1}, Lcn/nubia/camera/extendedUI/c;->b(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 401
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 404
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->r:Lcn/nubia/camera/pretty/a;

    if-eqz v0, :cond_1

    .line 405
    invoke-interface {v0, p1}, Lcn/nubia/camera/pretty/a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 408
    :cond_1
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public c()Z
    .locals 1

    .line 671
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {v0}, Lcn/nubia/camera/n/b;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 0

    .line 987
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->N()V

    return-void
.end method

.method public e()Lcn/nubia/camera/zoom/arc/a;
    .locals 1

    .line 1039
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .locals 1

    .line 961
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->e(I)V

    .line 962
    iget-object p1, p0, Lcn/nubia/camera/aj/c;->r:Lcn/nubia/camera/pretty/a;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 963
    invoke-interface {p1, v0}, Lcn/nubia/camera/pretty/a;->a(I)V

    :cond_0
    return-void
.end method

.method public g_()V
    .locals 0

    return-void
.end method

.method protected i_()V
    .locals 2

    .line 358
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/aj/c;->f(Landroid/view/View;)V

    return-void

    .line 359
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsPaused "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->D()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NormalFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public l()V
    .locals 4

    .line 475
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_0

    .line 476
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->p:Lcn/nubia/camera/aj/h;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->p:Lcn/nubia/camera/aj/h;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->r()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 130
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 131
    iget-boolean p3, p0, Lcn/nubia/camera/aj/c;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c0079

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/c;->d(Landroid/view/View;)V

    .line 136
    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/c;->g(Landroid/view/View;)V

    .line 137
    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/c;->h(Landroid/view/View;)V

    .line 138
    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/c;->e(Landroid/view/View;)V

    .line 139
    invoke-virtual {p0, p1}, Lcn/nubia/camera/aj/c;->c(Landroid/view/View;)V

    .line 140
    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/c;->i(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->a:Lcn/nubia/camera/aj/f;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/aj/f;->b(Lcn/nubia/camera/aj/i;)V

    .line 147
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 333
    iget-boolean v0, p0, Lcn/nubia/camera/aj/c;->d:Z

    if-eqz v0, :cond_0

    .line 334
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    :cond_0
    const-string v0, "NormalFragment"

    const-string v1, "onPause"

    .line 337
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->n()V

    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Lcn/nubia/camera/aj/c;->m:Z

    .line 340
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->M()V

    .line 341
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->o:Lcn/nubia/camera/aj/c$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/c$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/camera/aj/c;->i:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 343
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->b(Z)V

    .line 344
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    invoke-virtual {v0}, Lcn/nubia/camera/n/b;->c()V

    .line 345
    iput-boolean v1, p0, Lcn/nubia/camera/aj/c;->i:Z

    .line 347
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->p:Lcn/nubia/camera/aj/h;

    iget-object v1, p0, Lcn/nubia/camera/aj/c;->G:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/h;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 348
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->p:Lcn/nubia/camera/aj/h;

    iget-object v1, p0, Lcn/nubia/camera/aj/c;->J:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/h;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 351
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_disable_auto_microspur_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 353
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 301
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 302
    iget-boolean v0, p0, Lcn/nubia/camera/aj/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "NormalFragment"

    const-string v1, "onResume"

    .line 305
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 306
    iput-boolean v0, p0, Lcn/nubia/camera/aj/c;->m:Z

    .line 308
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->n()V

    .line 309
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->I()V

    .line 310
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->L()V

    .line 311
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/camera/aj/c;->i:Z

    if-nez v1, :cond_1

    .line 312
    invoke-virtual {v0}, Lcn/nubia/camera/n/b;->b()V

    .line 313
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->m()V

    const/4 v0, 0x1

    .line 314
    iput-boolean v0, p0, Lcn/nubia/camera/aj/c;->i:Z

    .line 316
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->r:Lcn/nubia/camera/pretty/a;

    if-eqz v0, :cond_2

    .line 317
    invoke-interface {v0}, Lcn/nubia/camera/pretty/a;->a()V

    .line 320
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->p:Lcn/nubia/camera/aj/h;

    iget-object v1, p0, Lcn/nubia/camera/aj/c;->G:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/h;->a(Lcn/nubia/camera/k/ab$a;)V

    goto :goto_0

    .line 322
    :cond_3
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aw()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcn/nubia/camera/aj/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 323
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->N()V

    .line 325
    :cond_4
    :goto_0
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 326
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->p:Lcn/nubia/camera/aj/h;

    iget-object v1, p0, Lcn/nubia/camera/aj/c;->J:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/h;->a(Lcn/nubia/camera/k/ab$a;)V

    .line 328
    :cond_5
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->O()V

    return-void
.end method

.method public p()V
    .locals 2

    .line 487
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->a(Z)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->r:Lcn/nubia/camera/pretty/a;

    if-eqz v0, :cond_1

    .line 491
    invoke-interface {v0, v1}, Lcn/nubia/camera/pretty/a;->a(Z)V

    .line 493
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_2

    .line 494
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->c(Z)V

    :cond_2
    return-void
.end method

.method public q()V
    .locals 2

    .line 500
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->a(Z)V

    .line 503
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->r:Lcn/nubia/camera/pretty/a;

    if-eqz v0, :cond_1

    .line 504
    invoke-interface {v0, v1}, Lcn/nubia/camera/pretty/a;->a(Z)V

    .line 506
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->c:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_2

    .line 507
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->c(Z)V

    :cond_2
    return-void
.end method

.method public r()V
    .locals 2

    .line 679
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->j()V

    .line 680
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->r:Lcn/nubia/camera/pretty/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 681
    invoke-interface {v0, v1}, Lcn/nubia/camera/pretty/a;->a(I)V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    .line 687
    invoke-direct {p0}, Lcn/nubia/camera/aj/c;->j()V

    .line 688
    iget-object v0, p0, Lcn/nubia/camera/aj/c;->r:Lcn/nubia/camera/pretty/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 689
    invoke-interface {v0, v1}, Lcn/nubia/camera/pretty/a;->a(I)V

    :cond_0
    return-void
.end method
