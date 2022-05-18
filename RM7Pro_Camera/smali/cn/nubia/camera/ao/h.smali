.class public Lcn/nubia/camera/ao/h;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/aj/i;
.implements Lcn/nubia/camera/j/d;
.implements Lcn/nubia/camera/q/g;
.implements Lcn/nubia/camera/q/m$a;
.implements Lcn/nubia/camera/z/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ao/h$b;,
        Lcn/nubia/camera/ao/h$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Object;

.field private B:Lcn/nubia/camera/ao/f;

.field private C:Landroid/widget/LinearLayout;

.field private D:Lcn/nubia/camera/extendedUI/HistogramView;

.field private E:Lcn/nubia/camera/extendedUI/HistogramView;

.field private F:Lcn/nubia/camera/extendedUI/HistogramView;

.field private G:Lcn/nubia/camera/extendedUI/c;

.field private H:Lcn/nubia/camera/k/ab$a;

.field private I:Lcn/nubia/camera/n/d;

.field private J:Lcn/nubia/camera/k/ab$a;

.field protected a:Lcn/nubia/camera/ao/k;

.field b:Ljava/lang/String;

.field c:I

.field i:Lcn/nubia/camera/am/a;

.field j:Lcn/nubia/camera/ao/a$a;

.field private k:Lcom/android/preference/ListPreference;

.field private l:Lcn/nubia/camera/n/b;

.field private m:Z

.field private n:Lcn/nubia/camera/aj/a/a;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private q:Z

.field private r:Lcn/nubia/camera/ao/h$b;

.field private s:Lcn/nubia/camera/ao/h$a;

.field private t:Lcn/nubia/camera/ao/m;

.field private u:Lcom/android/common/ui/RotateImageView;

.field private v:Lcom/android/common/ui/RotateImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Lcn/nubia/camera/q/l;

.field private y:Lcn/nubia/camera/q/c;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 110
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    const/4 v1, 0x0

    .line 89
    iput-boolean v1, p0, Lcn/nubia/camera/ao/h;->m:Z

    .line 91
    iput-object v0, p0, Lcn/nubia/camera/ao/h;->a:Lcn/nubia/camera/ao/k;

    .line 92
    iput-object v0, p0, Lcn/nubia/camera/ao/h;->o:Landroid/widget/RelativeLayout;

    .line 93
    iput-object v0, p0, Lcn/nubia/camera/ao/h;->p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 94
    iput-boolean v1, p0, Lcn/nubia/camera/ao/h;->q:Z

    .line 95
    iput-object v0, p0, Lcn/nubia/camera/ao/h;->r:Lcn/nubia/camera/ao/h$b;

    .line 99
    new-instance v2, Lcn/nubia/camera/ao/h$a;

    invoke-direct {v2, p0}, Lcn/nubia/camera/ao/h$a;-><init>(Lcn/nubia/camera/ao/h;)V

    iput-object v2, p0, Lcn/nubia/camera/ao/h;->s:Lcn/nubia/camera/ao/h$a;

    .line 101
    iput-object v0, p0, Lcn/nubia/camera/ao/h;->u:Lcom/android/common/ui/RotateImageView;

    .line 102
    iput-object v0, p0, Lcn/nubia/camera/ao/h;->v:Lcom/android/common/ui/RotateImageView;

    .line 104
    iput-object v0, p0, Lcn/nubia/camera/ao/h;->x:Lcn/nubia/camera/q/l;

    .line 105
    iput-object v0, p0, Lcn/nubia/camera/ao/h;->y:Lcn/nubia/camera/q/c;

    .line 106
    iput-boolean v1, p0, Lcn/nubia/camera/ao/h;->z:Z

    .line 107
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/ao/h;->A:Ljava/lang/Object;

    .line 741
    iput-object v0, p0, Lcn/nubia/camera/ao/h;->G:Lcn/nubia/camera/extendedUI/c;

    .line 764
    iput-object v0, p0, Lcn/nubia/camera/ao/h;->I:Lcn/nubia/camera/n/d;

    .line 824
    new-instance v0, Lcn/nubia/camera/ao/h$8;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ao/h$8;-><init>(Lcn/nubia/camera/ao/h;)V

    iput-object v0, p0, Lcn/nubia/camera/ao/h;->J:Lcn/nubia/camera/k/ab$a;

    .line 861
    new-instance v0, Lcn/nubia/camera/ao/h$9;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ao/h$9;-><init>(Lcn/nubia/camera/ao/h;)V

    iput-object v0, p0, Lcn/nubia/camera/ao/h;->j:Lcn/nubia/camera/ao/a$a;

    return-void
.end method

.method public constructor <init>(ILcn/nubia/camera/aj/a/a;Lcn/nubia/camera/ao/k;Lcn/nubia/camera/ao/m;Lcom/android/common/ui/RotateImageView;)V
    .locals 2

    .line 116
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcn/nubia/camera/ao/h;->m:Z

    .line 91
    iput-object p1, p0, Lcn/nubia/camera/ao/h;->a:Lcn/nubia/camera/ao/k;

    .line 92
    iput-object p1, p0, Lcn/nubia/camera/ao/h;->o:Landroid/widget/RelativeLayout;

    .line 93
    iput-object p1, p0, Lcn/nubia/camera/ao/h;->p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 94
    iput-boolean v0, p0, Lcn/nubia/camera/ao/h;->q:Z

    .line 95
    iput-object p1, p0, Lcn/nubia/camera/ao/h;->r:Lcn/nubia/camera/ao/h$b;

    .line 99
    new-instance v1, Lcn/nubia/camera/ao/h$a;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ao/h$a;-><init>(Lcn/nubia/camera/ao/h;)V

    iput-object v1, p0, Lcn/nubia/camera/ao/h;->s:Lcn/nubia/camera/ao/h$a;

    .line 101
    iput-object p1, p0, Lcn/nubia/camera/ao/h;->u:Lcom/android/common/ui/RotateImageView;

    .line 102
    iput-object p1, p0, Lcn/nubia/camera/ao/h;->v:Lcom/android/common/ui/RotateImageView;

    .line 104
    iput-object p1, p0, Lcn/nubia/camera/ao/h;->x:Lcn/nubia/camera/q/l;

    .line 105
    iput-object p1, p0, Lcn/nubia/camera/ao/h;->y:Lcn/nubia/camera/q/c;

    .line 106
    iput-boolean v0, p0, Lcn/nubia/camera/ao/h;->z:Z

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ao/h;->A:Ljava/lang/Object;

    .line 741
    iput-object p1, p0, Lcn/nubia/camera/ao/h;->G:Lcn/nubia/camera/extendedUI/c;

    .line 764
    iput-object p1, p0, Lcn/nubia/camera/ao/h;->I:Lcn/nubia/camera/n/d;

    .line 824
    new-instance p1, Lcn/nubia/camera/ao/h$8;

    invoke-direct {p1, p0}, Lcn/nubia/camera/ao/h$8;-><init>(Lcn/nubia/camera/ao/h;)V

    iput-object p1, p0, Lcn/nubia/camera/ao/h;->J:Lcn/nubia/camera/k/ab$a;

    .line 861
    new-instance p1, Lcn/nubia/camera/ao/h$9;

    invoke-direct {p1, p0}, Lcn/nubia/camera/ao/h$9;-><init>(Lcn/nubia/camera/ao/h;)V

    iput-object p1, p0, Lcn/nubia/camera/ao/h;->j:Lcn/nubia/camera/ao/a$a;

    .line 117
    iput-object p2, p0, Lcn/nubia/camera/ao/h;->n:Lcn/nubia/camera/aj/a/a;

    .line 118
    iput-object p3, p0, Lcn/nubia/camera/ao/h;->a:Lcn/nubia/camera/ao/k;

    .line 119
    iput-object p4, p0, Lcn/nubia/camera/ao/h;->t:Lcn/nubia/camera/ao/m;

    .line 120
    iput-object p5, p0, Lcn/nubia/camera/ao/h;->v:Lcom/android/common/ui/RotateImageView;

    return-void
.end method

.method private J()V
    .locals 2

    .line 631
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->t:Lcn/nubia/camera/ao/m;

    new-instance v1, Lcn/nubia/camera/ao/-$$Lambda$h$nlVliWux1PMAyL2XKBBzqqChjnw;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ao/-$$Lambda$h$nlVliWux1PMAyL2XKBBzqqChjnw;-><init>(Lcn/nubia/camera/ao/h;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ao/m;->a(Lcn/nubia/camera/k/af$a;)V

    const-string v0, "ui_change_proshutter"

    .line 633
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ao/h;->d(Ljava/lang/String;)V

    .line 635
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->c()V

    return-void
.end method

.method private K()Ljava/lang/String;
    .locals 3

    .line 711
    invoke-static {}, Lcn/nubia/camera/ba/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f023a

    .line 712
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ao/h;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 714
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->u()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0236

    invoke-virtual {p0, v1}, Lcn/nubia/camera/ao/h;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_histogram_bars_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private L()V
    .locals 2

    .line 723
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 724
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->B:Lcn/nubia/camera/ao/f;

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0}, Lcn/nubia/camera/ao/f;->b()V

    :cond_0
    return-void
.end method

.method private M()V
    .locals 2

    .line 732
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->K()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f023a

    .line 733
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ao/h;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->C:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->B:Lcn/nubia/camera/ao/f;

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {v0}, Lcn/nubia/camera/ao/f;->c()V

    :cond_0
    return-void
.end method

.method private N()V
    .locals 4

    .line 748
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->t:Lcn/nubia/camera/ao/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/ao/h;->t:Lcn/nubia/camera/ao/m;

    .line 749
    invoke-virtual {v0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/ao/h;->G:Lcn/nubia/camera/extendedUI/c;

    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/c;->c(I)V

    .line 752
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->G:Lcn/nubia/camera/extendedUI/c;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/c;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/ao/h;->t:Lcn/nubia/camera/ao/m;

    invoke-virtual {v3}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/camera/ba/a;->a(Landroid/content/Context;Landroid/util/Size;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 754
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->G:Lcn/nubia/camera/extendedUI/c;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcn/nubia/camera/extendedUI/c;->c(I)V

    .line 756
    :goto_0
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/ao/h;->G:Lcn/nubia/camera/extendedUI/c;

    invoke-virtual {v2}, Lcn/nubia/camera/extendedUI/c;->a()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    sget-object v2, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ba/f;->d(ZLcn/nubia/camera/af/a;)V

    return-void
.end method

.method private O()V
    .locals 3

    .line 766
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 767
    :try_start_0
    new-instance v1, Lcn/nubia/camera/n/d;

    invoke-direct {v1}, Lcn/nubia/camera/n/d;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/ao/h;->I:Lcn/nubia/camera/n/d;

    .line 768
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/ao/h;->I:Lcn/nubia/camera/n/d;

    invoke-virtual {v1, v2}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 769
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    new-instance v0, Lcn/nubia/camera/ao/h$7;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ao/h$7;-><init>(Lcn/nubia/camera/ao/h;)V

    iput-object v0, p0, Lcn/nubia/camera/ao/h;->H:Lcn/nubia/camera/k/ab$a;

    .line 808
    iget-object v1, p0, Lcn/nubia/camera/ao/h;->t:Lcn/nubia/camera/ao/m;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/ao/m;->a(Lcn/nubia/camera/k/ab$a;)V

    return-void

    :catchall_0
    move-exception v1

    .line 769
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private P()V
    .locals 2

    .line 812
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 813
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/ao/h;->I:Lcn/nubia/camera/n/d;

    invoke-virtual {v1}, Lcn/nubia/camera/n/d;->a()V

    .line 814
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/c/e;->h()V

    const/4 v1, 0x0

    .line 815
    iput-object v1, p0, Lcn/nubia/camera/ao/h;->I:Lcn/nubia/camera/n/d;

    .line 816
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->t:Lcn/nubia/camera/ao/m;

    iget-object v1, p0, Lcn/nubia/camera/ao/h;->H:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ao/m;->b(Lcn/nubia/camera/k/ab$a;)V

    return-void

    :catchall_0
    move-exception v1

    .line 816
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private Q()V
    .locals 4

    .line 885
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    if-nez v0, :cond_0

    return-void

    .line 890
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/camera/ao/h;->m:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 891
    invoke-virtual {v0}, Lcn/nubia/camera/n/b;->a()Z

    move-result v0

    .line 892
    iget-object v1, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    invoke-virtual {v1}, Lcn/nubia/camera/n/b;->e()I

    move-result v1

    .line 893
    iget-object v3, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    invoke-virtual {v3}, Lcn/nubia/camera/n/b;->c()V

    .line 894
    iput-boolean v2, p0, Lcn/nubia/camera/ao/h;->m:Z

    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/4 v1, 0x0

    .line 896
    iput-object v1, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    .line 897
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/ao/h;->h(Landroid/view/View;)V

    if-eqz v2, :cond_2

    .line 899
    iget-object v1, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/n/b;->a(I)V

    .line 901
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/n/b;->b(Z)V

    return-void
.end method

.method private synthetic R()V
    .locals 2

    .line 632
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->s:Lcn/nubia/camera/ao/h$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ao/h$a;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static a(Lcn/nubia/camera/aj/a/a;Lcn/nubia/camera/ao/k;Lcn/nubia/camera/ao/m;Lcom/android/common/ui/RotateImageView;)Lcn/nubia/camera/ao/h;
    .locals 7

    .line 125
    new-instance v6, Lcn/nubia/camera/ao/h;

    const/4 v1, 0x1

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/ao/h;-><init>(ILcn/nubia/camera/aj/a/a;Lcn/nubia/camera/ao/k;Lcn/nubia/camera/ao/m;Lcom/android/common/ui/RotateImageView;)V

    return-object v6
.end method

.method static synthetic a(Lcn/nubia/camera/ao/h;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->N()V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->u:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 195
    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 197
    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private b(J)V
    .locals 3

    .line 452
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->w:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v2, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    const-string v0, "ui_change_proshutter"

    .line 456
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ao/h;->d(Ljava/lang/String;)V

    .line 457
    invoke-direct {p0, v1}, Lcn/nubia/camera/ao/h;->a(Z)V

    .line 458
    new-instance v0, Lcn/nubia/camera/ao/h$b;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/camera/ao/h$b;-><init>(Lcn/nubia/camera/ao/h;J)V

    iput-object v0, p0, Lcn/nubia/camera/ao/h;->r:Lcn/nubia/camera/ao/h$b;

    .line 459
    invoke-virtual {v0}, Lcn/nubia/camera/ao/h$b;->start()V

    .line 460
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/nubia/camera/m/a;->b(Z)V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/ao/m;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/ao/h;->t:Lcn/nubia/camera/ao/m;

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090203

    .line 168
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateImageView;

    iput-object p1, p0, Lcn/nubia/camera/ao/h;->u:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f08014a

    .line 169
    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 170
    iget-object p1, p0, Lcn/nubia/camera/ao/h;->u:Lcom/android/common/ui/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lcn/nubia/camera/ao/h;->u:Lcom/android/common/ui/RotateImageView;

    new-instance v0, Lcn/nubia/camera/ao/h$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ao/h$2;-><init>(Lcn/nubia/camera/ao/h;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object p1, p0, Lcn/nubia/camera/ao/h;->u:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/ao/h;->a(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->g()Lcn/nubia/camera/ac/b;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/nubia/camera/ac/b;->a(Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 184
    iget-object p1, p0, Lcn/nubia/camera/ao/h;->u:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/android/common/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 185
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 186
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 187
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 188
    iget-object p1, p0, Lcn/nubia/camera/ao/h;->u:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/android/common/ui/RotateImageView;->requestLayout()V

    :cond_0
    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 3

    .line 203
    new-instance v0, Lcn/nubia/camera/q/l;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getParentFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/q/i;

    invoke-virtual {v2}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/q/l;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/three_a/ui/h;)V

    iput-object v0, p0, Lcn/nubia/camera/ao/h;->x:Lcn/nubia/camera/q/l;

    .line 204
    invoke-virtual {v0, p1, p0}, Lcn/nubia/camera/q/l;->a(Landroid/view/View;Lcn/nubia/camera/q/a;)V

    .line 205
    iget-object p1, p0, Lcn/nubia/camera/ao/h;->x:Lcn/nubia/camera/q/l;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/q/l;->a(I)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/ao/h;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->m()V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/n/b;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    return-object p0
.end method

.method private f(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f09021b

    .line 286
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09021c

    .line 287
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 288
    iget-object v1, p0, Lcn/nubia/camera/ao/h;->n:Lcn/nubia/camera/aj/a/a;

    new-instance v2, Lcn/nubia/camera/aj/a/b;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1}, Lcn/nubia/camera/aj/a/b;-><init>(Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v2}, Lcn/nubia/camera/aj/a/a;->a(Lcn/nubia/camera/aj/a/b;)V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/ao/h;)Lcom/android/preference/ListPreference;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/ao/h;->k:Lcom/android/preference/ListPreference;

    return-object p0
.end method

.method private g(Landroid/view/View;)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->a:Lcn/nubia/camera/ao/k;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/ao/k;->a(Lcn/nubia/camera/aj/i;)V

    const v0, 0x7f0902f7

    .line 293
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/ao/h;->o:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    .line 294
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0901b8

    .line 295
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/ao/h;->w:Landroid/widget/ImageView;

    const v0, 0x7f090079

    .line 296
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 297
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0902f8

    .line 298
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object p1, p0, Lcn/nubia/camera/ao/h;->p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 299
    iget-object p1, p0, Lcn/nubia/camera/ao/h;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/ao/h;->a(Landroid/view/View;)V

    return-void
.end method

.method private h(Landroid/view/View;)V
    .locals 9

    .line 303
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/ao/h;->v:Lcom/android/common/ui/RotateImageView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_normal_effect_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ao/h;->k:Lcom/android/preference/ListPreference;

    .line 307
    invoke-static {v0}, Lcn/nubia/camera/ao/d;->b(Lcom/android/preference/ListPreference;)V

    .line 309
    new-instance v0, Lcn/nubia/camera/n/b;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/ao/h;->k:Lcom/android/preference/ListPreference;

    const v6, 0x7f090160

    iget-object v7, p0, Lcn/nubia/camera/ao/h;->v:Lcom/android/common/ui/RotateImageView;

    const/4 v8, 0x1

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/n/b;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcom/android/preference/ListPreference;Landroid/view/View;ILandroid/view/View;Z)V

    iput-object v0, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    .line 311
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    iget-object v0, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/n/b;)V

    .line 312
    iget-object p1, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b$e;)V

    .line 313
    iget-object p1, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    new-instance v0, Lcn/nubia/camera/ao/h$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ao/h$3;-><init>(Lcn/nubia/camera/ao/h;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b$a;)V

    .line 331
    iget-object p1, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    invoke-virtual {p1}, Lcn/nubia/camera/n/b;->b()V

    const/4 p1, 0x1

    .line 332
    iput-boolean p1, p0, Lcn/nubia/camera/ao/h;->m:Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/ao/h;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->Q()V

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/ao/h;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/ao/h;->p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    return-object p0
.end method

.method private i(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090199

    .line 652
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/camera/ao/h;->C:Landroid/widget/LinearLayout;

    const v0, 0x7f090152

    .line 653
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/extendedUI/HistogramView;

    iput-object v0, p0, Lcn/nubia/camera/ao/h;->D:Lcn/nubia/camera/extendedUI/HistogramView;

    const v0, 0x7f0902a9

    .line 654
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/extendedUI/HistogramView;

    iput-object v0, p0, Lcn/nubia/camera/ao/h;->E:Lcn/nubia/camera/extendedUI/HistogramView;

    const v0, 0x7f09031b

    .line 655
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/extendedUI/HistogramView;

    iput-object p1, p0, Lcn/nubia/camera/ao/h;->F:Lcn/nubia/camera/extendedUI/HistogramView;

    return-void
.end method

.method private j(Landroid/view/View;)V
    .locals 2

    .line 743
    new-instance v0, Lcn/nubia/camera/extendedUI/c;

    const v1, 0x7f090261

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/nubia/camera/extendedUI/c;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/camera/ao/h;->G:Lcn/nubia/camera/extendedUI/c;

    .line 744
    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/c;->b()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;ILandroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/ao/h;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->o()V

    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/ao/h;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcn/nubia/camera/ao/h;->q:Z

    return p0
.end method

.method static synthetic l(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/ao/h$a;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/ao/h;->s:Lcn/nubia/camera/ao/h$a;

    return-object p0
.end method

.method public static synthetic lambda$nlVliWux1PMAyL2XKBBzqqChjnw(Lcn/nubia/camera/ao/h;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->R()V

    return-void
.end method

.method static synthetic m(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/extendedUI/HistogramView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/ao/h;->D:Lcn/nubia/camera/extendedUI/HistogramView;

    return-object p0
.end method

.method private m()V
    .locals 5

    .line 339
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->i:Lcn/nubia/camera/am/a;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Lcn/nubia/camera/am/a$a;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/nubia/camera/am/a$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f008a

    .line 341
    invoke-virtual {p0, v2}, Lcn/nubia/camera/ao/h;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->b(Ljava/lang/String;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/ao/h;->b:Ljava/lang/String;

    const-string v3, ".*/"

    const-string v4, ""

    .line 342
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->a(Ljava/lang/String;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v2, 0x7f0f005d

    new-instance v3, Lcn/nubia/camera/ao/h$5;

    invoke-direct {v3, p0}, Lcn/nubia/camera/ao/h$5;-><init>(Lcn/nubia/camera/ao/h;)V

    .line 343
    invoke-virtual {v0, v2, v3}, Lcn/nubia/camera/am/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v2, 0x7f0f0036

    new-instance v3, Lcn/nubia/camera/ao/h$4;

    invoke-direct {v3, p0}, Lcn/nubia/camera/ao/h$4;-><init>(Lcn/nubia/camera/ao/h;)V

    .line 359
    invoke-virtual {v0, v2, v3}, Lcn/nubia/camera/am/a$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const/4 v2, 0x0

    .line 366
    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->b(Z)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 367
    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a$a;->a(Z)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v2, 0x800013

    .line 368
    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->b(I)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Lcn/nubia/camera/am/a$a;->a()Lcn/nubia/camera/am/a;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ao/h;->i:Lcn/nubia/camera/am/a;

    .line 371
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->i:Lcn/nubia/camera/am/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a;->setCancelable(Z)V

    .line 372
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->i:Lcn/nubia/camera/am/a;

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->show()V

    return-void
.end method

.method static synthetic n(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/extendedUI/HistogramView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/ao/h;->E:Lcn/nubia/camera/extendedUI/HistogramView;

    return-object p0
.end method

.method private n()V
    .locals 1

    const-string v0, "ui_change_effect"

    .line 380
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ao/h;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/extendedUI/HistogramView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/ao/h;->F:Lcn/nubia/camera/extendedUI/HistogramView;

    return-object p0
.end method

.method private o()V
    .locals 3

    .line 464
    iget-boolean v0, p0, Lcn/nubia/camera/ao/h;->q:Z

    if-eqz v0, :cond_0

    return-void

    .line 465
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->r()V

    .line 466
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->o:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    .line 470
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v2, :cond_1

    .line 471
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/camera/n/b;->c(Z)V

    .line 472
    invoke-direct {p0, v2}, Lcn/nubia/camera/ao/h;->a(Z)V

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/m/a;->b(Z)V

    const-string v0, "ui_change_proshutter"

    .line 475
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ao/h;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic p(Lcn/nubia/camera/ao/h;)Ljava/lang/Object;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/ao/h;->A:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic q(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/n/d;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/ao/h;->I:Lcn/nubia/camera/n/d;

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private r()V
    .locals 3

    .line 524
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->r:Lcn/nubia/camera/ao/h$b;

    if-nez v0, :cond_0

    return-void

    .line 525
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/camera/ao/h$b;->a()V

    .line 527
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->r:Lcn/nubia/camera/ao/h$b;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/h$b;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 529
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

    const-string v1, "ProFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->s:Lcn/nubia/camera/ao/h$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ao/h$a;->removeMessages(I)V

    const/4 v0, 0x0

    .line 532
    iput-object v0, p0, Lcn/nubia/camera/ao/h;->r:Lcn/nubia/camera/ao/h$b;

    return-void
.end method

.method static synthetic s(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private s()V
    .locals 2

    .line 619
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->r()V

    .line 620
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->J()V

    .line 623
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 626
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 493
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->c()V

    return-void
.end method

.method protected a(IZ)V
    .locals 1

    .line 279
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(IZ)V

    .line 280
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/n/b;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 4

    .line 480
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->c(Z)V

    .line 483
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->s:Lcn/nubia/camera/ao/h$a;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/ao/h$a;->removeMessages(I)V

    .line 484
    sget-wide v2, Lcn/nubia/camera/aq/f;->h:J

    div-long v2, p1, v2

    long-to-int v0, v2

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    .line 485
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v2, :cond_1

    .line 486
    sget-wide v2, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr p1, v2

    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/ao/h;->b(J)V

    .line 488
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/ao/h;->x:Lcn/nubia/camera/q/l;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/q/l;->a(Z)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 0

    .line 157
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/q/a;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V

    .line 158
    iget-object p1, p0, Lcn/nubia/camera/ao/h;->s:Lcn/nubia/camera/ao/h$a;

    new-instance p2, Lcn/nubia/camera/ao/h$1;

    invoke-direct {p2, p0}, Lcn/nubia/camera/ao/h$1;-><init>(Lcn/nubia/camera/ao/h;)V

    invoke-virtual {p1, p2}, Lcn/nubia/camera/ao/h$a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    .line 264
    iget-object p1, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->v()F

    move-result p2

    invoke-virtual {p1, p2}, Lcn/nubia/camera/n/b;->a(F)V

    :cond_0
    return-void
.end method

.method public a(ZJJ)V
    .locals 0

    .line 431
    iget-object p1, p0, Lcn/nubia/camera/ao/h;->x:Lcn/nubia/camera/q/l;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcn/nubia/camera/q/l;->a(I)V

    .line 432
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->L()V

    return-void
.end method

.method public a_(I)V
    .locals 1

    .line 841
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->G:Lcn/nubia/camera/extendedUI/c;

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {v0, p1}, Lcn/nubia/camera/extendedUI/c;->a(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 498
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->c(Z)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->x:Lcn/nubia/camera/q/l;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/l;->a(Z)V

    .line 502
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_1

    .line 503
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->o()V

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 848
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->G:Lcn/nubia/camera/extendedUI/c;

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {v0, p1}, Lcn/nubia/camera/extendedUI/c;->b(I)V

    :cond_0
    return-void
.end method

.method public b(ZJJ)V
    .locals 0

    .line 447
    iget-object p1, p0, Lcn/nubia/camera/ao/h;->x:Lcn/nubia/camera/q/l;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/camera/q/l;->a(I)V

    .line 448
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->M()V

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 271
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 274
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 2

    .line 639
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    if-nez v0, :cond_0

    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->s:Lcn/nubia/camera/ao/h$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ao/h$a;->removeMessages(I)V

    .line 641
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 659
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->K()Ljava/lang/String;

    move-result-object v0

    .line 660
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    invoke-virtual {v1}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    const v1, 0x7f0f023a

    .line 661
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ao/h;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_4

    .line 662
    iget-object v1, p0, Lcn/nubia/camera/ao/h;->C:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 663
    iget-object v1, p0, Lcn/nubia/camera/ao/h;->B:Lcn/nubia/camera/ao/f;

    if-nez v1, :cond_0

    .line 664
    new-instance v1, Lcn/nubia/camera/ao/f;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcn/nubia/camera/a/a;

    invoke-virtual {v4}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v4

    invoke-direct {v1, v4}, Lcn/nubia/camera/ao/f;-><init>(Lcom/android/common/c/e;)V

    iput-object v1, p0, Lcn/nubia/camera/ao/h;->B:Lcn/nubia/camera/ao/f;

    .line 665
    new-instance v4, Lcn/nubia/camera/ao/h$6;

    invoke-direct {v4, p0}, Lcn/nubia/camera/ao/h$6;-><init>(Lcn/nubia/camera/ao/h;)V

    invoke-virtual {v1, v4}, Lcn/nubia/camera/ao/f;->a(Lcn/nubia/camera/ao/f$b;)V

    :cond_0
    const v1, 0x7f0f0239

    .line 681
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ao/h;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 682
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->D:Lcn/nubia/camera/extendedUI/HistogramView;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/extendedUI/HistogramView;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->E:Lcn/nubia/camera/extendedUI/HistogramView;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/extendedUI/HistogramView;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->F:Lcn/nubia/camera/extendedUI/HistogramView;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/extendedUI/HistogramView;->setVisibility(I)V

    const/4 v3, 0x3

    goto :goto_0

    :cond_1
    const v1, 0x7f0f023d

    .line 686
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ao/h;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 687
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->D:Lcn/nubia/camera/extendedUI/HistogramView;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/extendedUI/HistogramView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->E:Lcn/nubia/camera/extendedUI/HistogramView;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/extendedUI/HistogramView;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->F:Lcn/nubia/camera/extendedUI/HistogramView;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/extendedUI/HistogramView;->setVisibility(I)V

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    const v1, 0x7f0f023e

    .line 691
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ao/h;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 692
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->D:Lcn/nubia/camera/extendedUI/HistogramView;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/extendedUI/HistogramView;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->E:Lcn/nubia/camera/extendedUI/HistogramView;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/extendedUI/HistogramView;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->F:Lcn/nubia/camera/extendedUI/HistogramView;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/extendedUI/HistogramView;->setVisibility(I)V

    const/4 v3, 0x1

    .line 697
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->B:Lcn/nubia/camera/ao/f;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/ao/f;->a(I)V

    goto :goto_1

    .line 699
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->F:Lcn/nubia/camera/extendedUI/HistogramView;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/extendedUI/HistogramView;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->E:Lcn/nubia/camera/extendedUI/HistogramView;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/extendedUI/HistogramView;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->F:Lcn/nubia/camera/extendedUI/HistogramView;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/extendedUI/HistogramView;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->B:Lcn/nubia/camera/ao/f;

    if-eqz v0, :cond_5

    .line 704
    invoke-virtual {v0}, Lcn/nubia/camera/ao/f;->a()V

    const/4 v0, 0x0

    .line 705
    iput-object v0, p0, Lcn/nubia/camera/ao/h;->B:Lcn/nubia/camera/ao/f;

    :cond_5
    :goto_1
    return-void
.end method

.method public e()V
    .locals 0

    .line 821
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->N()V

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 719
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->e(I)V

    return-void
.end method

.method public g_()V
    .locals 2

    const/4 v0, 0x0

    .line 385
    invoke-direct {p0, v0}, Lcn/nubia/camera/ao/h;->a(Z)V

    .line 386
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->x:Lcn/nubia/camera/q/l;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/l;->a(I)V

    .line 387
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->L()V

    const/4 v0, 0x1

    .line 388
    iput-boolean v0, p0, Lcn/nubia/camera/ao/h;->z:Z

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method protected i_()V
    .locals 2

    .line 254
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/ao/h;->h(Landroid/view/View;)V

    return-void

    .line 255
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsPaused "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->D()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 2

    .line 609
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->r:Lcn/nubia/camera/ao/h$b;

    if-eqz v0, :cond_1

    .line 610
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_1

    .line 611
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ai()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_1

    .line 612
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->s()V

    const/4 v0, 0x1

    return v0

    .line 615
    :cond_1
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 4

    const/4 v0, 0x1

    .line 393
    invoke-direct {p0, v0}, Lcn/nubia/camera/ao/h;->a(Z)V

    .line 394
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->x:Lcn/nubia/camera/q/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/l;->a(I)V

    .line 395
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->M()V

    .line 396
    iput-boolean v1, p0, Lcn/nubia/camera/ao/h;->z:Z

    .line 397
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->t:Lcn/nubia/camera/ao/m;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v0

    .line 401
    sget-wide v2, Lcn/nubia/camera/aq/f;->h:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 402
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->J()V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x2713

    if-ne p1, p2, :cond_0

    .line 856
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parse cube uri "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ProFragment"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    new-instance p1, Lcn/nubia/camera/ao/a;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/camera/ao/h;->j:Lcn/nubia/camera/ao/a$a;

    invoke-direct {p1, p2, p3, v0}, Lcn/nubia/camera/ao/a;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcn/nubia/camera/ao/a$a;)V

    invoke-virtual {p1}, Lcn/nubia/camera/ao/a;->start()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 131
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 132
    iget-boolean p3, p0, Lcn/nubia/camera/ao/h;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c0093

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 136
    invoke-direct {p0, p1}, Lcn/nubia/camera/ao/h;->f(Landroid/view/View;)V

    .line 137
    invoke-direct {p0, p1}, Lcn/nubia/camera/ao/h;->g(Landroid/view/View;)V

    .line 138
    invoke-direct {p0, p1}, Lcn/nubia/camera/ao/h;->d(Landroid/view/View;)V

    .line 139
    invoke-direct {p0, p1}, Lcn/nubia/camera/ao/h;->e(Landroid/view/View;)V

    .line 140
    invoke-direct {p0, p1}, Lcn/nubia/camera/ao/h;->i(Landroid/view/View;)V

    .line 141
    invoke-direct {p0, p1}, Lcn/nubia/camera/ao/h;->j(Landroid/view/View;)V

    .line 142
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p0, p3, p3, p3, p2}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/ao/h;->y:Lcn/nubia/camera/q/c;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 149
    iget-boolean v0, p0, Lcn/nubia/camera/ao/h;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->y:Lcn/nubia/camera/q/c;

    invoke-static {p0, v0}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 231
    iget-boolean v0, p0, Lcn/nubia/camera/ao/h;->d:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    .line 235
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->o()V

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcn/nubia/camera/ao/h;->q:Z

    .line 237
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->s:Lcn/nubia/camera/ao/h$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ao/h$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/camera/ao/h;->m:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 239
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->b(Z)V

    .line 240
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    invoke-virtual {v0}, Lcn/nubia/camera/n/b;->c()V

    .line 241
    iput-boolean v1, p0, Lcn/nubia/camera/ao/h;->m:Z

    .line 243
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->B:Lcn/nubia/camera/ao/f;

    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {v0}, Lcn/nubia/camera/ao/f;->a()V

    .line 246
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->t:Lcn/nubia/camera/ao/m;

    iget-object v1, p0, Lcn/nubia/camera/ao/h;->J:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ao/m;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 247
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->P()V

    .line 248
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->t:Lcn/nubia/camera/ao/m;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/m;->H()V

    .line 249
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 210
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 211
    iget-boolean v0, p0, Lcn/nubia/camera/ao/h;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcn/nubia/camera/ao/h;->q:Z

    .line 215
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->o()V

    .line 216
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcn/nubia/camera/ao/h;->m:Z

    if-nez v2, :cond_1

    .line 217
    invoke-virtual {v0}, Lcn/nubia/camera/n/b;->b()V

    .line 218
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->n()V

    .line 219
    iput-boolean v1, p0, Lcn/nubia/camera/ao/h;->m:Z

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/ao/h;->d()V

    .line 223
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->t:Lcn/nubia/camera/ao/m;

    iget-object v2, p0, Lcn/nubia/camera/ao/h;->J:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/ao/m;->a(Lcn/nubia/camera/k/ab$a;)V

    .line 224
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->x:Lcn/nubia/camera/q/l;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/l;->a(Z)V

    .line 225
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->N()V

    .line 226
    invoke-direct {p0}, Lcn/nubia/camera/ao/h;->O()V

    return-void
.end method

.method public p()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->a(Z)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_1

    .line 413
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->c(Z)V

    .line 415
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->x:Lcn/nubia/camera/q/l;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/l;->a(Z)V

    return-void
.end method

.method public q()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->a(Z)V

    .line 423
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->l:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->c(Z)V

    .line 426
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ao/h;->x:Lcn/nubia/camera/q/l;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/l;->a(Z)V

    return-void
.end method
