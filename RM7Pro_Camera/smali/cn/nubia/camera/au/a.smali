.class public Lcn/nubia/camera/au/a;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/au/b$b;
.implements Lcn/nubia/camera/k/ab$a;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcn/nubia/camera/au/h;

.field private C:I

.field private D:I

.field private E:Landroid/widget/RelativeLayout;

.field private F:Lcn/nubia/camera/q/c;

.field private G:Lcn/nubia/camera/au/b/b;

.field private H:Lcn/nubia/camera/au/b/a;

.field private I:Lcn/nubia/camera/at/a;

.field private J:[I

.field private K:[F

.field private L:Lcn/nubia/camera/au/a/a;

.field private M:Ljava/lang/String;

.field private N:Lcn/nubia/camera/au/a/b;

.field private O:J

.field private P:Landroid/hardware/camera2/TotalCaptureResult;

.field private final Q:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

.field private R:Lcn/nubia/camera/k/z;

.field private S:Landroid/os/Handler;

.field private T:Lcom/android/common/c/f$b;

.field private U:Ljava/lang/Thread;

.field private V:Ljava/lang/Object;

.field private W:J

.field a:Lcn/nubia/camera/au/a/a$a;

.field b:Lcn/nubia/camera/au/a/b$a;

.field c:Landroid/view/View$OnClickListener;

.field private final i:I

.field private j:F

.field private k:Z

.field private l:Lcn/nubia/camera/au/g;

.field private m:Lcn/nubia/camera/au/b;

.field private n:Lcn/nubia/camera/au/j;

.field private o:Lcn/nubia/camera/k;

.field private p:J

.field private q:Lcn/nubia/camera/au/f;

.field private r:Landroid/media/MediaRecorder;

.field private s:Landroid/net/Uri;

.field private t:Landroid/os/ParcelFileDescriptor;

.field private u:Landroid/view/Surface;

.field private v:Lcn/nubia/k/a/a;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 225
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    .line 107
    sget-wide v0, Lcn/nubia/camera/au/e;->b:J

    sget-wide v2, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/au/a;->i:I

    int-to-float v0, v0

    .line 108
    iput v0, p0, Lcn/nubia/camera/au/a;->j:F

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcn/nubia/camera/au/a;->k:Z

    .line 111
    sget-object v0, Lcn/nubia/camera/au/g;->a:Lcn/nubia/camera/au/g;

    iput-object v0, p0, Lcn/nubia/camera/au/a;->l:Lcn/nubia/camera/au/g;

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcn/nubia/camera/au/a;->m:Lcn/nubia/camera/au/b;

    .line 113
    iput-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    .line 114
    iput-object v0, p0, Lcn/nubia/camera/au/a;->o:Lcn/nubia/camera/k;

    const-wide/16 v1, 0x0

    .line 115
    iput-wide v1, p0, Lcn/nubia/camera/au/a;->p:J

    .line 116
    iput-object v0, p0, Lcn/nubia/camera/au/a;->q:Lcn/nubia/camera/au/f;

    .line 117
    iput-object v0, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    .line 120
    iput-object v0, p0, Lcn/nubia/camera/au/a;->u:Landroid/view/Surface;

    .line 121
    iput-object v0, p0, Lcn/nubia/camera/au/a;->v:Lcn/nubia/k/a/a;

    .line 122
    iput-object v0, p0, Lcn/nubia/camera/au/a;->w:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcn/nubia/camera/au/a;->x:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcn/nubia/camera/au/a;->y:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcn/nubia/camera/au/a;->z:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcn/nubia/camera/au/a;->A:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcn/nubia/camera/au/a;->B:Lcn/nubia/camera/au/h;

    const/4 v1, 0x0

    .line 129
    iput v1, p0, Lcn/nubia/camera/au/a;->C:I

    const/4 v1, -0x1

    .line 130
    iput v1, p0, Lcn/nubia/camera/au/a;->D:I

    .line 131
    iput-object v0, p0, Lcn/nubia/camera/au/a;->E:Landroid/widget/RelativeLayout;

    .line 132
    iput-object v0, p0, Lcn/nubia/camera/au/a;->F:Lcn/nubia/camera/q/c;

    .line 134
    iput-object v0, p0, Lcn/nubia/camera/au/a;->G:Lcn/nubia/camera/au/b/b;

    .line 135
    iput-object v0, p0, Lcn/nubia/camera/au/a;->H:Lcn/nubia/camera/au/b/a;

    .line 136
    iput-object v0, p0, Lcn/nubia/camera/au/a;->I:Lcn/nubia/camera/at/a;

    .line 141
    iput-object v0, p0, Lcn/nubia/camera/au/a;->M:Ljava/lang/String;

    .line 146
    new-instance v1, Lcn/nubia/camera/au/a$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/au/a$1;-><init>(Lcn/nubia/camera/au/a;)V

    iput-object v1, p0, Lcn/nubia/camera/au/a;->Q:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 156
    new-instance v1, Lcn/nubia/camera/au/a$10;

    invoke-direct {v1, p0}, Lcn/nubia/camera/au/a$10;-><init>(Lcn/nubia/camera/au/a;)V

    iput-object v1, p0, Lcn/nubia/camera/au/a;->R:Lcn/nubia/camera/k/z;

    .line 198
    new-instance v1, Lcn/nubia/camera/au/a$11;

    invoke-direct {v1, p0}, Lcn/nubia/camera/au/a$11;-><init>(Lcn/nubia/camera/au/a;)V

    iput-object v1, p0, Lcn/nubia/camera/au/a;->S:Landroid/os/Handler;

    .line 216
    new-instance v1, Lcn/nubia/camera/au/a$12;

    invoke-direct {v1, p0}, Lcn/nubia/camera/au/a$12;-><init>(Lcn/nubia/camera/au/a;)V

    iput-object v1, p0, Lcn/nubia/camera/au/a;->T:Lcom/android/common/c/f$b;

    .line 701
    iput-object v0, p0, Lcn/nubia/camera/au/a;->U:Ljava/lang/Thread;

    .line 702
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/au/a;->V:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 766
    iput-wide v0, p0, Lcn/nubia/camera/au/a;->W:J

    .line 1227
    new-instance v0, Lcn/nubia/camera/au/a$6;

    invoke-direct {v0, p0}, Lcn/nubia/camera/au/a$6;-><init>(Lcn/nubia/camera/au/a;)V

    iput-object v0, p0, Lcn/nubia/camera/au/a;->a:Lcn/nubia/camera/au/a/a$a;

    .line 1281
    new-instance v0, Lcn/nubia/camera/au/a$7;

    invoke-direct {v0, p0}, Lcn/nubia/camera/au/a$7;-><init>(Lcn/nubia/camera/au/a;)V

    iput-object v0, p0, Lcn/nubia/camera/au/a;->b:Lcn/nubia/camera/au/a/b$a;

    .line 1356
    new-instance v0, Lcn/nubia/camera/au/a$8;

    invoke-direct {v0, p0}, Lcn/nubia/camera/au/a$8;-><init>(Lcn/nubia/camera/au/a;)V

    iput-object v0, p0, Lcn/nubia/camera/au/a;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 230
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    .line 107
    sget-wide v0, Lcn/nubia/camera/au/e;->b:J

    sget-wide v2, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcn/nubia/camera/au/a;->i:I

    int-to-float p1, p1

    .line 108
    iput p1, p0, Lcn/nubia/camera/au/a;->j:F

    const/4 p1, 0x1

    .line 109
    iput-boolean p1, p0, Lcn/nubia/camera/au/a;->k:Z

    .line 111
    sget-object p1, Lcn/nubia/camera/au/g;->a:Lcn/nubia/camera/au/g;

    iput-object p1, p0, Lcn/nubia/camera/au/a;->l:Lcn/nubia/camera/au/g;

    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcn/nubia/camera/au/a;->m:Lcn/nubia/camera/au/b;

    .line 113
    iput-object p1, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    .line 114
    iput-object p1, p0, Lcn/nubia/camera/au/a;->o:Lcn/nubia/camera/k;

    const-wide/16 v0, 0x0

    .line 115
    iput-wide v0, p0, Lcn/nubia/camera/au/a;->p:J

    .line 116
    iput-object p1, p0, Lcn/nubia/camera/au/a;->q:Lcn/nubia/camera/au/f;

    .line 117
    iput-object p1, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    .line 120
    iput-object p1, p0, Lcn/nubia/camera/au/a;->u:Landroid/view/Surface;

    .line 121
    iput-object p1, p0, Lcn/nubia/camera/au/a;->v:Lcn/nubia/k/a/a;

    .line 122
    iput-object p1, p0, Lcn/nubia/camera/au/a;->w:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcn/nubia/camera/au/a;->x:Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcn/nubia/camera/au/a;->y:Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcn/nubia/camera/au/a;->z:Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcn/nubia/camera/au/a;->A:Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lcn/nubia/camera/au/a;->B:Lcn/nubia/camera/au/h;

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcn/nubia/camera/au/a;->C:I

    const/4 v1, -0x1

    .line 130
    iput v1, p0, Lcn/nubia/camera/au/a;->D:I

    .line 131
    iput-object p1, p0, Lcn/nubia/camera/au/a;->E:Landroid/widget/RelativeLayout;

    .line 132
    iput-object p1, p0, Lcn/nubia/camera/au/a;->F:Lcn/nubia/camera/q/c;

    .line 134
    iput-object p1, p0, Lcn/nubia/camera/au/a;->G:Lcn/nubia/camera/au/b/b;

    .line 135
    iput-object p1, p0, Lcn/nubia/camera/au/a;->H:Lcn/nubia/camera/au/b/a;

    .line 136
    iput-object p1, p0, Lcn/nubia/camera/au/a;->I:Lcn/nubia/camera/at/a;

    .line 141
    iput-object p1, p0, Lcn/nubia/camera/au/a;->M:Ljava/lang/String;

    .line 146
    new-instance v1, Lcn/nubia/camera/au/a$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/au/a$1;-><init>(Lcn/nubia/camera/au/a;)V

    iput-object v1, p0, Lcn/nubia/camera/au/a;->Q:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 156
    new-instance v1, Lcn/nubia/camera/au/a$10;

    invoke-direct {v1, p0}, Lcn/nubia/camera/au/a$10;-><init>(Lcn/nubia/camera/au/a;)V

    iput-object v1, p0, Lcn/nubia/camera/au/a;->R:Lcn/nubia/camera/k/z;

    .line 198
    new-instance v1, Lcn/nubia/camera/au/a$11;

    invoke-direct {v1, p0}, Lcn/nubia/camera/au/a$11;-><init>(Lcn/nubia/camera/au/a;)V

    iput-object v1, p0, Lcn/nubia/camera/au/a;->S:Landroid/os/Handler;

    .line 216
    new-instance v1, Lcn/nubia/camera/au/a$12;

    invoke-direct {v1, p0}, Lcn/nubia/camera/au/a$12;-><init>(Lcn/nubia/camera/au/a;)V

    iput-object v1, p0, Lcn/nubia/camera/au/a;->T:Lcom/android/common/c/f$b;

    .line 701
    iput-object p1, p0, Lcn/nubia/camera/au/a;->U:Ljava/lang/Thread;

    .line 702
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/au/a;->V:Ljava/lang/Object;

    const-wide/16 v1, -0x1

    .line 766
    iput-wide v1, p0, Lcn/nubia/camera/au/a;->W:J

    .line 1227
    new-instance p1, Lcn/nubia/camera/au/a$6;

    invoke-direct {p1, p0}, Lcn/nubia/camera/au/a$6;-><init>(Lcn/nubia/camera/au/a;)V

    iput-object p1, p0, Lcn/nubia/camera/au/a;->a:Lcn/nubia/camera/au/a/a$a;

    .line 1281
    new-instance p1, Lcn/nubia/camera/au/a$7;

    invoke-direct {p1, p0}, Lcn/nubia/camera/au/a$7;-><init>(Lcn/nubia/camera/au/a;)V

    iput-object p1, p0, Lcn/nubia/camera/au/a;->b:Lcn/nubia/camera/au/a/b$a;

    .line 1356
    new-instance p1, Lcn/nubia/camera/au/a$8;

    invoke-direct {p1, p0}, Lcn/nubia/camera/au/a$8;-><init>(Lcn/nubia/camera/au/a;)V

    iput-object p1, p0, Lcn/nubia/camera/au/a;->c:Landroid/view/View$OnClickListener;

    .line 231
    iput v0, p0, Lcn/nubia/camera/au/a;->C:I

    return-void
.end method

.method static synthetic A(Lcn/nubia/camera/au/a;)Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic B(Lcn/nubia/camera/au/a;)Lcom/android/preference/PreferenceGroup;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic C(Lcn/nubia/camera/au/a;)[I
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->J:[I

    return-object p0
.end method

.method static synthetic D(Lcn/nubia/camera/au/a;)[F
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->K:[F

    return-object p0
.end method

.method static synthetic E(Lcn/nubia/camera/au/a;)Landroid/view/Surface;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->u:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic F(Lcn/nubia/camera/au/a;)Landroid/util/Size;
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->r()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method static synthetic G(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/a/b;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->N:Lcn/nubia/camera/au/a/b;

    return-object p0
.end method

.method static synthetic H(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic I(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic J(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private J()V
    .locals 4

    .line 589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/au/a;->O:J

    .line 590
    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/au/a;->w:Ljava/lang/String;

    .line 591
    iget-wide v0, p0, Lcn/nubia/camera/au/a;->O:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/au/a;->M:Ljava/lang/String;

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    invoke-virtual {v1}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    invoke-virtual {v2}, Lcn/nubia/camera/af/a;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/au/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/au/a;->x:Ljava/lang/String;

    .line 594
    iput-object v0, p0, Lcn/nubia/camera/au/a;->y:Ljava/lang/String;

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/au/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/au/a;->A:Ljava/lang/String;

    return-void
.end method

.method static synthetic K(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private K()Z
    .locals 2

    .line 599
    iget-object v0, p0, Lcn/nubia/camera/au/a;->l:Lcn/nubia/camera/au/g;

    sget-object v1, Lcn/nubia/camera/au/g;->b:Lcn/nubia/camera/au/g;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 602
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/a;->m:Lcn/nubia/camera/au/b;

    invoke-virtual {v0}, Lcn/nubia/camera/au/b;->b()V

    .line 603
    sget-object v0, Lcn/nubia/camera/au/g;->a:Lcn/nubia/camera/au/g;

    iput-object v0, p0, Lcn/nubia/camera/au/a;->l:Lcn/nubia/camera/au/g;

    .line 604
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {v0}, Lcn/nubia/camera/au/j;->d()V

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic L(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private L()V
    .locals 7

    .line 637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/au/a;->w:Ljava/lang/String;

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    invoke-virtual {v1}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    invoke-virtual {v2}, Lcn/nubia/camera/af/a;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/au/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/au/a;->x:Ljava/lang/String;

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/camera/au/a;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_StarTrackDIR"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/au/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/au/a;->y:Ljava/lang/String;

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/au/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/au/a;->A:Ljava/lang/String;

    .line 644
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/al/c;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/aq/f;->a(Landroid/hardware/camera2/CameraCharacteristics;I)I

    move-result v0

    .line 645
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/i;

    invoke-virtual {v1}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/zoom/c;->c()F

    move-result v1

    .line 646
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/au/i;->a(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2, v1}, Lcn/nubia/camera/au/i;->a(FF)F

    move-result v2

    .line 647
    iget-object v3, p0, Lcn/nubia/camera/au/a;->H:Lcn/nubia/camera/au/b/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/nubia/camera/au/a;->y:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/info.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\r\nangle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\r\nZoom: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nFov: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcn/nubia/camera/au/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic M(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private M()V
    .locals 1

    .line 704
    iget-object v0, p0, Lcn/nubia/camera/au/a;->U:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 706
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 708
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic N(Lcn/nubia/camera/au/a;)Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->M:Ljava/lang/String;

    return-object p0
.end method

.method private N()V
    .locals 1

    .line 714
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->M()V

    .line 715
    new-instance v0, Lcn/nubia/camera/au/a$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/au/a$3;-><init>(Lcn/nubia/camera/au/a;)V

    iput-object v0, p0, Lcn/nubia/camera/au/a;->U:Ljava/lang/Thread;

    .line 728
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic O(Lcn/nubia/camera/au/a;)Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->x:Ljava/lang/String;

    return-object p0
.end method

.method private O()V
    .locals 7

    const-string v0, "StarTrackFragment"

    .line 732
    iget-object v1, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 736
    :try_start_0
    iput-object v2, p0, Lcn/nubia/camera/au/a;->u:Landroid/view/Surface;

    .line 737
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 738
    iget-object v1, p0, Lcn/nubia/camera/au/a;->t:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 740
    iget-object v1, p0, Lcn/nubia/camera/au/a;->s:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 741
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 742
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/au/a;->s:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v3, 0x9

    .line 743
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 744
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 745
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    .line 748
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/au/a;->s:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/au/a;->s:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " because it is less then 1s."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 751
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->R()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 755
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop recorder fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v0, p0, Lcn/nubia/camera/au/a;->s:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 757
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/au/a;->s:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 760
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 761
    iput-object v2, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    .line 762
    iput-object v2, p0, Lcn/nubia/camera/au/a;->s:Landroid/net/Uri;

    .line 763
    iput-object v2, p0, Lcn/nubia/camera/au/a;->t:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method static synthetic P(Lcn/nubia/camera/au/a;)J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcn/nubia/camera/au/a;->O:J

    return-wide v0
.end method

.method private P()V
    .locals 6

    .line 768
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->D()Z

    move-result v0

    const-string v1, "StarTrackFragment"

    if-eqz v0, :cond_0

    const-string v0, "fragment is paused start caputre fail"

    .line 769
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "startCapture"

    .line 772
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 774
    iput-boolean v0, p0, Lcn/nubia/camera/au/a;->k:Z

    const/4 v0, 0x0

    .line 775
    iput v0, p0, Lcn/nubia/camera/au/a;->C:I

    const-wide/16 v2, -0x1

    .line 776
    iput-wide v2, p0, Lcn/nubia/camera/au/a;->W:J

    .line 777
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/w/d;->k(Lcn/nubia/camera/ad/a;)J

    move-result-wide v2

    sget-wide v4, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr v2, v4

    long-to-float v2, v2

    iput v2, p0, Lcn/nubia/camera/au/a;->j:F

    .line 778
    iget v3, p0, Lcn/nubia/camera/au/a;->i:I

    int-to-float v4, v3

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    int-to-float v2, v3

    .line 779
    iput v2, p0, Lcn/nubia/camera/au/a;->j:F

    .line 781
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSnapShotSpan = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/camera/au/a;->j:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v1, p0, Lcn/nubia/camera/au/a;->q:Lcn/nubia/camera/au/f;

    if-nez v1, :cond_2

    .line 783
    new-instance v1, Lcn/nubia/camera/au/f;

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcn/nubia/camera/au/a;->q()Landroid/util/Size;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/au/f;-><init>(Landroid/content/Context;Landroid/util/Size;)V

    iput-object v1, p0, Lcn/nubia/camera/au/a;->q:Lcn/nubia/camera/au/f;

    .line 785
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/au/a;->q:Lcn/nubia/camera/au/f;

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/ba/b;->a(Lcn/nubia/camera/ad/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/camera/au/f;->b(Z)V

    .line 786
    iget-object v1, p0, Lcn/nubia/camera/au/a;->q:Lcn/nubia/camera/au/f;

    iget-object v2, p0, Lcn/nubia/camera/au/a;->u:Landroid/view/Surface;

    invoke-direct {p0}, Lcn/nubia/camera/au/a;->r()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-direct {p0}, Lcn/nubia/camera/au/a;->r()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcn/nubia/camera/au/f;->a(Landroid/view/Surface;III)V

    .line 787
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    invoke-virtual {v1}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/au/a;->q:Lcn/nubia/camera/au/f;

    invoke-virtual {v1, v2}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 789
    iget-object v1, p0, Lcn/nubia/camera/au/a;->q:Lcn/nubia/camera/au/f;

    invoke-virtual {v1}, Lcn/nubia/camera/au/f;->d()V

    .line 790
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/i;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/q/i;->a_(Z)V

    return-void
.end method

.method static synthetic Q(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private Q()V
    .locals 4

    .line 796
    iget-object v0, p0, Lcn/nubia/camera/au/a;->q:Lcn/nubia/camera/au/f;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->D()Z

    move-result v0

    if-nez v0, :cond_1

    .line 797
    iget-boolean v0, p0, Lcn/nubia/camera/au/a;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 798
    iput-boolean v0, p0, Lcn/nubia/camera/au/a;->k:Z

    .line 799
    iget-object v0, p0, Lcn/nubia/camera/au/a;->q:Lcn/nubia/camera/au/f;

    iget-object v1, p0, Lcn/nubia/camera/au/a;->T:Lcom/android/common/c/f$b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/au/f;->a(Lcom/android/common/c/f$b;)V

    .line 801
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/a;->S:Landroid/os/Handler;

    const/4 v1, 0x3

    iget v2, p0, Lcn/nubia/camera/au/a;->j:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method static synthetic R(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private R()V
    .locals 5

    .line 956
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 957
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "is_pending"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 958
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/au/a;->s:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 960
    new-instance v0, Lcn/nubia/l/b/g;

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/au/a;->s:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcn/nubia/l/b/g;-><init>(Landroid/content/Context;Landroid/net/Uri;IZ)V

    .line 961
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    return-void
.end method

.method static synthetic S(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private S()V
    .locals 4

    .line 965
    iget-object v0, p0, Lcn/nubia/camera/au/a;->S:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 966
    iget-wide v0, p0, Lcn/nubia/camera/au/a;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 967
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/au/a;->p:J

    .line 969
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    iget-wide v1, p0, Lcn/nubia/camera/au/a;->p:J

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/au/j;->a(J)V

    return-void
.end method

.method static synthetic T(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private T()V
    .locals 2

    .line 973
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    return-void
.end method

.method static synthetic U(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private U()V
    .locals 2

    .line 977
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    return-void
.end method

.method static synthetic V(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private V()V
    .locals 3

    .line 982
    sget-object v0, Lcn/nubia/camera/au/g;->a:Lcn/nubia/camera/au/g;

    iput-object v0, p0, Lcn/nubia/camera/au/a;->l:Lcn/nubia/camera/au/g;

    .line 983
    iget-object v0, p0, Lcn/nubia/camera/au/a;->V:Ljava/lang/Object;

    monitor-enter v0

    .line 984
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/au/a;->l:Lcn/nubia/camera/au/g;

    sget-object v2, Lcn/nubia/camera/au/g;->a:Lcn/nubia/camera/au/g;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/au/a;->U:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 985
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 987
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/au/j;->a(Z)V

    const-string v0, "ui_change_startrack"

    .line 989
    invoke-virtual {p0, v0}, Lcn/nubia/camera/au/a;->e(Ljava/lang/String;)V

    .line 990
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->W()V

    return-void

    :catchall_0
    move-exception v1

    .line 987
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private W()V
    .locals 2

    .line 994
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/au/j;->d(Landroid/view/View;)V

    const-string v0, "ui_change_startrack"

    .line 995
    invoke-virtual {p0, v0}, Lcn/nubia/camera/au/a;->e(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p0, v0}, Lcn/nubia/camera/au/a;->c(Ljava/lang/String;)V

    .line 997
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->p()V

    return-void
.end method

.method private X()V
    .locals 2

    .line 1001
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    const-string v0, "ui_change_startrack"

    .line 1002
    invoke-virtual {p0, v0}, Lcn/nubia/camera/au/a;->c(Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {v0}, Lcn/nubia/camera/au/j;->p()V

    :cond_0
    return-void
.end method

.method private Y()V
    .locals 5

    .line 1407
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1408
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/g;->a(Landroid/os/Bundle;Lcn/nubia/camera/ad/a;)V

    .line 1410
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f029d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_silhouette_key"

    invoke-virtual {v1, v3, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "star_silhousette"

    .line 1409
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    const-string v2, "pref_star_track_camera_effect_type_key"

    const-string v3, "star_track_effect_0"

    invoke-virtual {v1, v2, v3}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "star_effect"

    .line 1411
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-static {}, Lcn/nubia/camera/w/d;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_star_track_duration_key"

    invoke-virtual {v1, v3, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "star_duration"

    .line 1413
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-static {}, Lcn/nubia/camera/w/d;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_star_number_key"

    invoke-virtual {v1, v3, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "star_count"

    .line 1415
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "star_mode"

    const-string v2, "quicksnap"

    .line 1417
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcn/nubia/camera/q/i;

    invoke-virtual {v4}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/zoom/c;Landroid/os/Bundle;)V

    return-void
.end method

.method private Z()V
    .locals 5

    .line 1422
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1423
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/g;->a(Landroid/os/Bundle;Lcn/nubia/camera/ad/a;)V

    const-string v1, "star_mode"

    const-string v2, "professional"

    .line 1424
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcn/nubia/camera/q/i;

    invoke-virtual {v4}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/zoom/c;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/au/a;I)I
    .locals 0

    .line 100
    iput p1, p0, Lcn/nubia/camera/au/a;->C:I

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/au/a;J)J
    .locals 0

    .line 100
    iput-wide p1, p0, Lcn/nubia/camera/au/a;->W:J

    return-wide p1
.end method

.method static synthetic a(Lcn/nubia/camera/au/a;Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;
    .locals 0

    .line 100
    invoke-direct/range {p0 .. p7}, Lcn/nubia/camera/au/a;->a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;
    .locals 2

    .line 921
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 922
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "datetaken"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 924
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ".jpg"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "_display_name"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-static {p2}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 927
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 928
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 929
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 931
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 932
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/au/a;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/nubia/camera/au/a;->P:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;
    .locals 3

    .line 938
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 939
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_pending"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "title"

    .line 940
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    .line 941
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-static {p1}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "datetaken"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "mime_type"

    const-string p2, "video/mp4"

    .line 944
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "resolution"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 948
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 949
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 951
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/au/a;ZJI)Landroid/util/SparseArray;
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/au/a;->a(ZJI)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method private a(ZJI)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJI)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 870
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 871
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 872
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 873
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 874
    iget-object v3, p0, Lcn/nubia/camera/au/a;->B:Lcn/nubia/camera/au/h;

    invoke-virtual {v3}, Lcn/nubia/camera/au/h;->i()J

    move-result-wide v3

    long-to-float v3, v3

    sget-wide v4, Lcn/nubia/camera/aq/f;->h:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    if-eqz p1, :cond_0

    .line 876
    iget p1, p0, Lcn/nubia/camera/au/a;->C:I

    int-to-float p1, p1

    mul-float/2addr v3, p1

    .line 878
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/au/a;->P:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz p1, :cond_1

    .line 879
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-float p1, v3

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float v3, p1, v3

    .line 881
    :cond_1
    sget p1, Lcn/nubia/d/a;->g:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 882
    sget p1, Lcn/nubia/d/a;->h:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 883
    sget p1, Lcn/nubia/d/a;->ac:I

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 884
    sget p1, Lcn/nubia/d/a;->ad:I

    new-instance v5, Lcn/nubia/d/l;

    aget v2, v2, v4

    const v6, 0x3c23d70a    # 0.01f

    invoke-direct {v5, v2, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 885
    sget p1, Lcn/nubia/d/a;->H:I

    new-instance v2, Lcn/nubia/d/l;

    aget v1, v1, v4

    invoke-direct {v2, v1, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 886
    iget-object p1, p0, Lcn/nubia/camera/au/a;->B:Lcn/nubia/camera/au/h;

    invoke-virtual {p1}, Lcn/nubia/camera/au/h;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/x;->n()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    .line 888
    sget v1, Lcn/nubia/d/a;->K:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 889
    :cond_2
    iget p1, p0, Lcn/nubia/camera/au/a;->D:I

    if-eq p1, v1, :cond_3

    .line 890
    sget p1, Lcn/nubia/d/a;->K:I

    iget v1, p0, Lcn/nubia/camera/au/a;->D:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 892
    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/au/a;->P:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz p1, :cond_4

    .line 893
    sget p1, Lcn/nubia/d/a;->K:I

    iget-object v1, p0, Lcn/nubia/camera/au/a;->P:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    .line 894
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/au/a;->P:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 893
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 896
    :cond_4
    sget p1, Lcn/nubia/d/a;->G:I

    new-instance v1, Lcn/nubia/d/l;

    invoke-direct {v1, v3, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 897
    invoke-static {v0, p2, p3}, Lcn/nubia/camera/ba/a;->a(Landroid/util/SparseArray;J)V

    .line 898
    sget p1, Lcn/nubia/d/a;->j:I

    invoke-static {p4}, Lcn/nubia/d/a;->d(I)S

    move-result p2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 899
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 901
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {p2, p3, v1, v2, v0}, Lcn/nubia/camera/ba/a;->a(DDLandroid/util/SparseArray;)V

    .line 903
    :cond_5
    invoke-direct {p0, v0}, Lcn/nubia/camera/au/a;->a(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/au/a;Lcn/nubia/camera/au/a/b;)Lcn/nubia/camera/au/a/b;
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/nubia/camera/au/a;->N:Lcn/nubia/camera/au/a/b;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/g;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->l:Lcn/nubia/camera/au/g;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/au/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcn/nubia/camera/au/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/au/a;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/nubia/camera/au/a;->U:Ljava/lang/Thread;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;III)V
    .locals 0

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

    .line 908
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 909
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_picture_artist_info"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 910
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 912
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 914
    :cond_0
    sget v1, Lcn/nubia/d/a;->u:I

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/au/a;Landroid/graphics/Bitmap;III)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/au/a;->a(Landroid/graphics/Bitmap;III)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/au/a;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/au/a;->a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/au/a;[BII)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/au/a;->a([BII)V

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 28

    move-object/from16 v8, p0

    .line 806
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 807
    iget-object v11, v8, Lcn/nubia/camera/au/a;->y:Ljava/lang/String;

    .line 808
    invoke-static {v9, v10}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v12

    .line 809
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v0

    int-to-float v1, v0

    move-object/from16 v15, p4

    .line 810
    invoke-virtual {v15, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 812
    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    move/from16 v5, p2

    move/from16 v6, p3

    goto :goto_0

    :cond_0
    move/from16 v6, p2

    move/from16 v5, p3

    :goto_0
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    move-wide v3, v9

    .line 819
    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/au/a;->a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;

    move-result-object v25

    .line 826
    new-instance v0, Lcn/nubia/k/b/c;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/au/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 827
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v1

    iget-object v2, v8, Lcn/nubia/camera/au/a;->v:Lcn/nubia/k/a/a;

    const/16 v21, 0x5f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 828
    invoke-direct {v8, v3, v9, v10, v4}, Lcn/nubia/camera/au/a;->a(ZJI)Landroid/util/SparseArray;

    move-result-object v24

    new-instance v5, Lcn/nubia/camera/au/a$4;

    invoke-direct {v5, v8}, Lcn/nubia/camera/au/a$4;-><init>(Lcn/nubia/camera/au/a;)V

    new-instance v6, Lcn/nubia/m/b;

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v9

    invoke-virtual {v9}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v7, v9}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v7

    invoke-direct {v6, v4, v7}, Lcn/nubia/m/b;-><init>(II)V

    move-object v13, v0

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, p1

    move/from16 v18, p2

    move/from16 v19, p3

    move-object/from16 v20, p4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    invoke-direct/range {v13 .. v27}, Lcn/nubia/k/b/c;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;ILjava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/content/ContentValues;Lcn/nubia/k/b/d;Lcn/nubia/m/b;)V

    .line 835
    iget-object v1, v8, Lcn/nubia/camera/au/a;->v:Lcn/nubia/k/a/a;

    if-eqz v1, :cond_1

    .line 836
    invoke-virtual {v1, v0, v3}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    move-result-object v0

    .line 837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRequest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StarTrackFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private a([BII)V
    .locals 27

    move-object/from16 v8, p0

    .line 842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 843
    iget-object v11, v8, Lcn/nubia/camera/au/a;->x:Ljava/lang/String;

    .line 844
    invoke-static {v9, v10}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v12

    .line 845
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/al/c;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/aq/f;->a(Landroid/hardware/camera2/CameraCharacteristics;I)I

    move-result v15

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    move-wide v3, v9

    move/from16 v5, p2

    move/from16 v6, p3

    move v7, v15

    .line 846
    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/au/a;->a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;

    move-result-object v24

    .line 847
    new-instance v0, Lcn/nubia/k/b/h;

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/au/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 849
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v1

    iget-object v2, v8, Lcn/nubia/camera/au/a;->v:Lcn/nubia/k/a/a;

    const/4 v3, 0x0

    .line 854
    invoke-direct {v8, v3, v9, v10, v15}, Lcn/nubia/camera/au/a;->a(ZJI)Landroid/util/SparseArray;

    move-result-object v20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v3, Lcn/nubia/camera/au/a$5;

    invoke-direct {v3, v8}, Lcn/nubia/camera/au/a$5;-><init>(Lcn/nubia/camera/au/a;)V

    const/16 v26, 0x0

    move-object v13, v0

    move v4, v15

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, p1

    move/from16 v18, p2

    move/from16 v19, p3

    move/from16 v23, v4

    move-object/from16 v25, v3

    invoke-direct/range {v13 .. v26}, Lcn/nubia/k/b/h;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;[BIILandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;Lcn/nubia/k/b/d;Lcn/nubia/m/b;)V

    .line 866
    iget-object v1, v8, Lcn/nubia/camera/au/a;->v:Lcn/nubia/k/a/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/au/a;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcn/nubia/camera/au/a;->k:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/f;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->q:Lcn/nubia/camera/au/f;

    return-object p0
.end method

.method private b(I)V
    .locals 5

    .line 659
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->M()V

    .line 661
    iget-object v0, p0, Lcn/nubia/camera/au/a;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/camera/au/a;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcn/nubia/camera/au/a;->r()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-direct {p0}, Lcn/nubia/camera/au/a;->r()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/nubia/camera/au/a;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/au/a;->s:Landroid/net/Uri;

    .line 662
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/au/a;->s:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->c(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/au/a;->t:Landroid/os/ParcelFileDescriptor;

    .line 664
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    .line 665
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v1, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 669
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 670
    iget-object v0, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 671
    iget-object v0, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 672
    iget-object v0, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcn/nubia/camera/au/a;->t:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 673
    iget-object v0, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Lcn/nubia/camera/au/a;->r()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcn/nubia/camera/au/a;->r()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 674
    iget-object v0, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    .line 675
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->r()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcn/nubia/camera/au/a;->r()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/2addr v1, p1

    .line 674
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 677
    iget-object p1, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 678
    iget-object p1, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 679
    iget-object p1, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 680
    iget-object p1, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    new-instance v0, Lcn/nubia/camera/au/a$17;

    invoke-direct {v0, p0}, Lcn/nubia/camera/au/a$17;-><init>(Lcn/nubia/camera/au/a;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 686
    iget-object p1, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    new-instance v0, Lcn/nubia/camera/au/a$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/au/a$2;-><init>(Lcn/nubia/camera/au/a;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 693
    :try_start_0
    iget-object p1, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 695
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 697
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/au/a;->u:Landroid/view/Surface;

    .line 698
    iget-object p1, p0, Lcn/nubia/camera/au/a;->r:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/au/a;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcn/nubia/camera/au/a;->b(I)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/au/a;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcn/nubia/camera/au/a;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .line 383
    sget-object v0, Lcn/nubia/camera/au/g;->d:Lcn/nubia/camera/au/g;

    iput-object v0, p0, Lcn/nubia/camera/au/a;->l:Lcn/nubia/camera/au/g;

    .line 384
    iget-object v0, p0, Lcn/nubia/camera/au/a;->S:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcn/nubia/camera/au/a;->S:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/au/j;->a(Z)V

    .line 388
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/camera/a/a;->a(Z)V

    const-string v0, "ui_change_startrack"

    .line 389
    invoke-virtual {p0, v0}, Lcn/nubia/camera/au/a;->f(Ljava/lang/String;)V

    .line 390
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->p()V

    .line 391
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->U()V

    .line 392
    iget-object v0, p0, Lcn/nubia/camera/au/a;->B:Lcn/nubia/camera/au/h;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 394
    invoke-virtual {v0, p1}, Lcn/nubia/camera/au/h;->a(Lcn/nubia/camera/k/af$a;)V

    .line 395
    iget-object p1, p0, Lcn/nubia/camera/au/a;->q:Lcn/nubia/camera/au/f;

    invoke-virtual {p1}, Lcn/nubia/camera/au/f;->e()V

    .line 396
    iput v2, p0, Lcn/nubia/camera/au/a;->C:I

    .line 397
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->V()V

    goto :goto_0

    .line 399
    :cond_1
    new-instance p1, Lcn/nubia/camera/au/a$14;

    invoke-direct {p1, p0}, Lcn/nubia/camera/au/a$14;-><init>(Lcn/nubia/camera/au/a;)V

    invoke-virtual {v0, p1}, Lcn/nubia/camera/au/h;->a(Lcn/nubia/camera/k/af$a;)V

    .line 412
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/q/i;->a_(Z)V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/au/a;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcn/nubia/camera/au/a;->k:Z

    return p0
.end method

.method static synthetic d(Lcn/nubia/camera/au/a;)J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcn/nubia/camera/au/a;->W:J

    return-wide v0
.end method

.method public static d()Lcn/nubia/camera/au/a;
    .locals 2

    .line 235
    new-instance v0, Lcn/nubia/camera/au/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/au/a;-><init>(I)V

    return-object v0
.end method

.method private d(Landroid/view/View;)V
    .locals 3

    .line 355
    new-instance v0, Lcn/nubia/camera/au/j;

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/au/a;->S:Landroid/os/Handler;

    invoke-direct {v0, v1, p0, v2}, Lcn/nubia/camera/au/j;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/au/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    .line 356
    invoke-virtual {v0, p1}, Lcn/nubia/camera/au/j;->a(Landroid/view/View;)V

    .line 357
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/au/j;->b(Landroid/view/View;)V

    .line 358
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/au/j;->c(Landroid/view/View;)V

    .line 359
    iget-object p1, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {p1, p0}, Lcn/nubia/camera/au/j;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    .line 360
    iget-object p1, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    new-instance v0, Lcn/nubia/camera/au/a$13;

    invoke-direct {v0, p0}, Lcn/nubia/camera/au/a$13;-><init>(Lcn/nubia/camera/au/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/au/j;->a(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object p1, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {p1}, Lcn/nubia/camera/au/j;->f()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/camera/au/a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/au/a;)I
    .locals 0

    .line 100
    iget p0, p0, Lcn/nubia/camera/au/a;->i:I

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/au/a;)Lcom/android/common/c/f$b;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->T:Lcom/android/common/c/f$b;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/au/a;)I
    .locals 2

    .line 100
    iget v0, p0, Lcn/nubia/camera/au/a;->C:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/camera/au/a;->C:I

    return v0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 651
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 653
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object p1
.end method

.method static synthetic h(Lcn/nubia/camera/au/a;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->S()V

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/au/a;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->V()V

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/b/b;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->G:Lcn/nubia/camera/au/b/b;

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/camera/au/a;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->Q()V

    return-void
.end method

.method static synthetic l(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/k;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->o:Lcn/nubia/camera/k;

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/camera/au/a;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->N()V

    return-void
.end method

.method static synthetic n(Lcn/nubia/camera/au/a;)Landroid/os/Handler;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->S:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic o(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/j;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private p()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcn/nubia/camera/au/a;->S:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x0

    .line 418
    iput-wide v0, p0, Lcn/nubia/camera/au/a;->p:J

    .line 419
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {v0}, Lcn/nubia/camera/au/j;->e()V

    return-void
.end method

.method private q()Landroid/util/Size;
    .locals 1

    .line 423
    iget-object v0, p0, Lcn/nubia/camera/au/a;->B:Lcn/nubia/camera/au/h;

    invoke-virtual {v0}, Lcn/nubia/camera/au/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/a/a;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->L:Lcn/nubia/camera/au/a/a;

    return-object p0
.end method

.method private r()Landroid/util/Size;
    .locals 4

    .line 427
    iget-object v0, p0, Lcn/nubia/camera/au/a;->B:Lcn/nubia/camera/au/h;

    invoke-virtual {v0}, Lcn/nubia/camera/au/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v0

    .line 428
    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 429
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method static synthetic r(Lcn/nubia/camera/au/a;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->O()V

    return-void
.end method

.method static synthetic s(Lcn/nubia/camera/au/a;)Ljava/lang/Object;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->V:Ljava/lang/Object;

    return-object p0
.end method

.method private s()V
    .locals 12

    .line 497
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 501
    iget-object v0, p0, Lcn/nubia/camera/au/a;->G:Lcn/nubia/camera/au/b/b;

    invoke-virtual {v0}, Lcn/nubia/camera/au/b/b;->e()V

    .line 502
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/i;->a_(Z)V

    .line 503
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    const-string v0, "ui_change_startrack"

    .line 504
    invoke-virtual {p0, v0}, Lcn/nubia/camera/au/a;->d(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    iget-object v1, p0, Lcn/nubia/camera/au/a;->B:Lcn/nubia/camera/au/h;

    invoke-virtual {v1}, Lcn/nubia/camera/au/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v1

    sget-wide v3, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/au/j;->b(J)V

    .line 506
    iget-object v0, p0, Lcn/nubia/camera/au/a;->L:Lcn/nubia/camera/au/a/a;

    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {v0}, Lcn/nubia/camera/au/a/a;->a()V

    .line 509
    :cond_1
    new-instance v0, Lcn/nubia/camera/au/a/a;

    iget-object v1, p0, Lcn/nubia/camera/au/a;->a:Lcn/nubia/camera/au/a/a$a;

    invoke-direct {v0, v1}, Lcn/nubia/camera/au/a/a;-><init>(Lcn/nubia/camera/au/a/a$a;)V

    iput-object v0, p0, Lcn/nubia/camera/au/a;->L:Lcn/nubia/camera/au/a/a;

    .line 510
    invoke-virtual {v0}, Lcn/nubia/camera/au/a/a;->start()V

    .line 511
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->J()V

    .line 512
    iget-object v0, p0, Lcn/nubia/camera/au/a;->B:Lcn/nubia/camera/au/h;

    new-instance v1, Lcn/nubia/camera/g/h;

    .line 513
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/g/h;-><init>(Landroid/content/Context;Lcn/nubia/j/a;)V

    new-instance v2, Lcn/nubia/camera/au/a$15;

    invoke-direct {v2, p0}, Lcn/nubia/camera/au/a$15;-><init>(Lcn/nubia/camera/au/a;)V

    new-instance v3, Lcn/nubia/camera/au/a$16;

    invoke-direct {v3, p0}, Lcn/nubia/camera/au/a$16;-><init>(Lcn/nubia/camera/au/a;)V

    .line 512
    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/au/h;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 552
    iput-object v0, p0, Lcn/nubia/camera/au/a;->J:[I

    const/16 v0, 0xa

    new-array v0, v0, [F

    .line 553
    iput-object v0, p0, Lcn/nubia/camera/au/a;->K:[F

    .line 554
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/au/i;->a(Ljava/lang/String;)F

    move-result v0

    .line 555
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/i;

    invoke-virtual {v1}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/zoom/c;->c()F

    move-result v1

    .line 554
    invoke-static {v0, v1}, Lcn/nubia/camera/au/i;->a(FF)F

    move-result v10

    const-string v0, "pref_star_track_camera_effect_type_key"

    .line 556
    invoke-virtual {p0, v0}, Lcn/nubia/camera/au/a;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->n()I

    move-result v6

    .line 557
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-static {}, Lcn/nubia/camera/w/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_star_number_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 558
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-static {}, Lcn/nubia/camera/w/d;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_star_track_duration_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 559
    iget-object v1, p0, Lcn/nubia/camera/au/a;->B:Lcn/nubia/camera/au/h;

    invoke-virtual {v1}, Lcn/nubia/camera/au/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v1

    .line 560
    iget-object v2, p0, Lcn/nubia/camera/au/a;->J:[I

    iget-object v3, p0, Lcn/nubia/camera/au/a;->K:[F

    .line 561
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v9, v0, 0x3c

    iget-object v11, p0, Lcn/nubia/camera/au/a;->H:Lcn/nubia/camera/au/b/a;

    .line 560
    invoke-static/range {v2 .. v11}, Lcn/nubia/camera/au/i;->a([I[FIIIIIIFLcn/nubia/camera/au/b/a;)V

    .line 564
    iget-object v0, p0, Lcn/nubia/camera/au/a;->J:[I

    iget-object v1, p0, Lcn/nubia/camera/au/a;->K:[F

    iget-object v2, p0, Lcn/nubia/camera/au/a;->A:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/camera/au/a;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/au/i;->a([I[FLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic t(Lcn/nubia/camera/au/a;)Ljava/lang/Thread;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->U:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic u(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic v(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/h;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->B:Lcn/nubia/camera/au/h;

    return-object p0
.end method

.method static synthetic w(Lcn/nubia/camera/au/a;)Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/camera/au/a;->A:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Lcn/nubia/camera/au/a;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->X()V

    return-void
.end method

.method static synthetic z(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public F()V
    .locals 2

    .line 1113
    invoke-super {p0}, Lcn/nubia/camera/q/a;->F()V

    .line 1114
    iget-object v0, p0, Lcn/nubia/camera/au/a;->l:Lcn/nubia/camera/au/g;

    sget-object v1, Lcn/nubia/camera/au/g;->c:Lcn/nubia/camera/au/g;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1115
    invoke-direct {p0, v0}, Lcn/nubia/camera/au/a;->b(Z)V

    :cond_0
    const-string v0, "StarTrackFragment"

    const-string v1, "surfaceDestroyed X"

    .line 1118
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v0, p0, Lcn/nubia/camera/au/a;->q:Lcn/nubia/camera/au/f;

    if-eqz v0, :cond_1

    .line 1121
    invoke-virtual {v0}, Lcn/nubia/camera/au/f;->a()V

    .line 1122
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->h()V

    const/4 v0, 0x0

    .line 1123
    iput-object v0, p0, Lcn/nubia/camera/au/a;->q:Lcn/nubia/camera/au/f;

    :cond_1
    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4

    const-string v0, "StarTrackFragment"

    if-eqz p1, :cond_1

    .line 1079
    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/au/a;->D:I

    .line 1080
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1082
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/b;->c()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz p1, :cond_0

    .line 1083
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 1084
    iget v1, p0, Lcn/nubia/camera/au/a;->D:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, p0, Lcn/nubia/camera/au/a;->D:I

    goto :goto_0

    .line 1086
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sensitivity boost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "; boostMax: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    .line 1089
    iput p1, p0, Lcn/nubia/camera/au/a;->D:I

    .line 1091
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onCaptureResultReceived] iso = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcn/nubia/camera/au/a;->D:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/camera/ab/a$a;)V
    .locals 1

    .line 1040
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/ab/a$a;)V

    .line 1042
    sget-object v0, Lcn/nubia/camera/ab/a$a;->b:Lcn/nubia/camera/ab/a$a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcn/nubia/camera/ab/a$a;->a:Lcn/nubia/camera/ab/a$a;

    if-ne p1, v0, :cond_2

    .line 1043
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/au/a;->l:Lcn/nubia/camera/au/g;

    sget-object v0, Lcn/nubia/camera/au/g;->b:Lcn/nubia/camera/au/g;

    if-ne p1, v0, :cond_1

    .line 1044
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->K()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ui_change_startrack"

    .line 1045
    invoke-virtual {p0, p1}, Lcn/nubia/camera/au/a;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1047
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/au/a;->l:Lcn/nubia/camera/au/g;

    sget-object v0, Lcn/nubia/camera/au/g;->c:Lcn/nubia/camera/au/g;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 1048
    invoke-direct {p0, p1}, Lcn/nubia/camera/au/a;->b(Z)V

    .line 1049
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->N()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    const-string p1, "StarTrackFragment"

    const-string p2, "onPreviewAreaUpdate"

    .line 1098
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object p1, p0, Lcn/nubia/camera/au/a;->E:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    .line 1101
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    .line 1103
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f0701e5

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    if-le p3, p2, :cond_0

    .line 1104
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1105
    iget-object p1, p0, Lcn/nubia/camera/au/a;->E:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/au/h;Lcn/nubia/k/a/a;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcn/nubia/camera/au/a;->B:Lcn/nubia/camera/au/h;

    .line 375
    iput-object p2, p0, Lcn/nubia/camera/au/a;->v:Lcn/nubia/k/a/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 615
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/au/j;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 345
    iget-object p1, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {p1}, Lcn/nubia/camera/au/j;->q()Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 3

    .line 444
    iget-object v0, p0, Lcn/nubia/camera/au/a;->m:Lcn/nubia/camera/au/b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    if-eqz v0, :cond_b

    .line 445
    invoke-virtual {v0}, Lcn/nubia/camera/au/j;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 449
    iget-object v0, p0, Lcn/nubia/camera/au/a;->I:Lcn/nubia/camera/at/a;

    invoke-virtual {v0}, Lcn/nubia/camera/at/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/au/a;->H:Lcn/nubia/camera/au/b/a;

    invoke-virtual {v0}, Lcn/nubia/camera/au/b/a;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 453
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    const v1, 0x7f0f03c3

    invoke-virtual {p0, v1}, Lcn/nubia/camera/au/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    return-void

    .line 456
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->Y()V

    .line 457
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    .line 458
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->s()V

    return-void

    .line 461
    :cond_3
    sget-object v0, Lcn/nubia/camera/au/a$9;->a:[I

    iget-object v1, p0, Lcn/nubia/camera/au/a;->l:Lcn/nubia/camera/au/g;

    invoke-virtual {v1}, Lcn/nubia/camera/au/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "ui_change_startrack"

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 482
    invoke-direct {p0, v0}, Lcn/nubia/camera/au/a;->b(Z)V

    .line 483
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->N()V

    goto :goto_0

    .line 477
    :cond_5
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->K()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 478
    invoke-virtual {p0, v1}, Lcn/nubia/camera/au/a;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->D()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 466
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 469
    :cond_8
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->Z()V

    .line 471
    iget-object v0, p0, Lcn/nubia/camera/au/a;->m:Lcn/nubia/camera/au/b;

    invoke-virtual {v0}, Lcn/nubia/camera/au/b;->a()V

    .line 472
    sget-object v0, Lcn/nubia/camera/au/g;->b:Lcn/nubia/camera/au/g;

    iput-object v0, p0, Lcn/nubia/camera/au/a;->l:Lcn/nubia/camera/au/g;

    .line 473
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {v0}, Lcn/nubia/camera/au/j;->c()V

    .line 474
    invoke-virtual {p0, v1}, Lcn/nubia/camera/au/a;->f(Ljava/lang/String;)V

    .line 488
    :cond_9
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/au/a;->l:Lcn/nubia/camera/au/g;

    sget-object v1, Lcn/nubia/camera/au/g;->a:Lcn/nubia/camera/au/g;

    if-ne v0, v1, :cond_a

    .line 489
    iget-object v0, p0, Lcn/nubia/camera/au/a;->G:Lcn/nubia/camera/au/b/b;

    invoke-virtual {v0}, Lcn/nubia/camera/au/b/b;->d()V

    goto :goto_1

    .line 491
    :cond_a
    iget-object v0, p0, Lcn/nubia/camera/au/a;->G:Lcn/nubia/camera/au/b/b;

    invoke-virtual {v0}, Lcn/nubia/camera/au/b/b;->e()V

    :cond_b
    :goto_1
    return-void
.end method

.method public b_(I)V
    .locals 1

    .line 350
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b_(I)V

    .line 351
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/au/j;->b(I)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 610
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->b()V

    return-void
.end method

.method public d_()Z
    .locals 1

    .line 1008
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/au/j;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected e(Ljava/lang/String;)V
    .locals 1

    .line 1016
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->e(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->a()V

    .line 1018
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1019
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/zoom/c;->a(Z)V

    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 4

    .line 1025
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->f(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/nubia/camera/d/d;

    sget-object v1, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/camera/d/b;->b:Lcn/nubia/camera/d/b;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a([Lcn/nubia/camera/d/d;)V

    .line 1033
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1034
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/camera/zoom/c;->a(Z)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 379
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {v0}, Lcn/nubia/camera/au/j;->h()V

    return-void
.end method

.method protected i_()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/au/j;->a(Lcom/android/preference/PreferenceGroup;)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 620
    sget-object v0, Lcn/nubia/camera/au/g;->c:Lcn/nubia/camera/au/g;

    iput-object v0, p0, Lcn/nubia/camera/au/a;->l:Lcn/nubia/camera/au/g;

    .line 621
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {v0}, Lcn/nubia/camera/au/j;->d()V

    .line 622
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    const-string v0, "ui_change_startrack"

    .line 623
    invoke-virtual {p0, v0}, Lcn/nubia/camera/au/a;->d(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {v0}, Lcn/nubia/camera/au/j;->k()V

    .line 625
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->T()V

    .line 626
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->S()V

    .line 627
    iget-object v0, p0, Lcn/nubia/camera/au/a;->B:Lcn/nubia/camera/au/h;

    if-eqz v0, :cond_0

    .line 628
    iget-object v1, p0, Lcn/nubia/camera/au/a;->R:Lcn/nubia/camera/k/z;

    invoke-virtual {v0, v1, p0}, Lcn/nubia/camera/au/h;->a(Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/ab$a;)V

    .line 629
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 631
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->L()V

    const/4 v0, 0x4

    .line 632
    invoke-direct {p0, v0}, Lcn/nubia/camera/au/a;->b(I)V

    .line 633
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->P()V

    return-void
.end method

.method public k()Z
    .locals 3

    .line 1056
    sget-object v0, Lcn/nubia/camera/au/a$9;->a:[I

    iget-object v1, p0, Lcn/nubia/camera/au/a;->l:Lcn/nubia/camera/au/g;

    invoke-virtual {v1}, Lcn/nubia/camera/au/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1072
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0

    .line 1064
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/a;->o:Lcn/nubia/camera/k;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1065
    invoke-direct {p0, v0}, Lcn/nubia/camera/au/a;->b(Z)V

    .line 1066
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->N()V

    :cond_1
    return v2

    .line 1058
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->K()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ui_change_startrack"

    .line 1059
    invoke-virtual {p0, v0}, Lcn/nubia/camera/au/a;->e(Ljava/lang/String;)V

    .line 1061
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/au/a;->G:Lcn/nubia/camera/au/b/b;

    invoke-virtual {v0}, Lcn/nubia/camera/au/b/b;->d()V

    return v2
.end method

.method l()V
    .locals 4

    .line 1364
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1365
    new-instance v0, Lcn/nubia/camera/au/b/b;

    iget-object v1, p0, Lcn/nubia/camera/au/a;->H:Lcn/nubia/camera/au/b/a;

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/q/i;

    invoke-virtual {v2}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/au/b/b;-><init>(Lcn/nubia/camera/au/b/a;Lcn/nubia/camera/zoom/c;Lcn/nubia/camera/ad/a;)V

    iput-object v0, p0, Lcn/nubia/camera/au/a;->G:Lcn/nubia/camera/au/b/b;

    .line 1366
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->m()V

    .line 1367
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/au/a;->G:Lcn/nubia/camera/au/b/b;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    goto :goto_0

    .line 1370
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/a;->G:Lcn/nubia/camera/au/b/b;

    invoke-virtual {v0}, Lcn/nubia/camera/au/b/b;->a()V

    :goto_0
    return-void
.end method

.method m()V
    .locals 2

    .line 1375
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {v0}, Lcn/nubia/camera/au/j;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcn/nubia/camera/au/a;->G:Lcn/nubia/camera/au/b/b;

    invoke-virtual {v0}, Lcn/nubia/camera/au/b/b;->e()V

    .line 1377
    iget-object v0, p0, Lcn/nubia/camera/au/a;->F:Lcn/nubia/camera/q/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/c;->a(I)V

    goto :goto_0

    .line 1379
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/a;->G:Lcn/nubia/camera/au/b/b;

    invoke-virtual {v0}, Lcn/nubia/camera/au/b/b;->d()V

    .line 1380
    iget-object v0, p0, Lcn/nubia/camera/au/a;->F:Lcn/nubia/camera/q/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/c;->a(I)V

    :goto_0
    return-void
.end method

.method n()Z
    .locals 2

    const v0, 0x7f0f030b

    .line 1385
    invoke-virtual {p0, v0}, Lcn/nubia/camera/au/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_star_track_estimation_key"

    invoke-virtual {p0, v1}, Lcn/nubia/camera/au/a;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method o()V
    .locals 2

    .line 1389
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/CameraActivity;

    invoke-virtual {v0}, Lcn/nubia/camera/CameraActivity;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/au/a;->Q:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void

    .line 1394
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1395
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_4

    .line 1396
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/au/a;->I:Lcn/nubia/camera/at/a;

    if-nez v0, :cond_3

    .line 1397
    new-instance v0, Lcn/nubia/camera/at/a;

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/at/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/camera/au/a;->I:Lcn/nubia/camera/at/a;

    .line 1399
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/au/a;->I:Lcn/nubia/camera/at/a;

    invoke-virtual {v0}, Lcn/nubia/camera/at/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1401
    iget-object v0, p0, Lcn/nubia/camera/au/a;->H:Lcn/nubia/camera/au/b/a;

    invoke-virtual {v0}, Lcn/nubia/camera/au/b/a;->a()V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 241
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onCreate(Landroid/os/Bundle;)V

    .line 242
    new-instance p1, Lcn/nubia/camera/au/b;

    invoke-direct {p1, p0}, Lcn/nubia/camera/au/b;-><init>(Lcn/nubia/camera/au/b$b;)V

    iput-object p1, p0, Lcn/nubia/camera/au/a;->m:Lcn/nubia/camera/au/b;

    .line 243
    new-instance p1, Lcn/nubia/camera/k;

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/nubia/camera/k;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/camera/au/a;->o:Lcn/nubia/camera/k;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 248
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 249
    iget-boolean p3, p0, Lcn/nubia/camera/au/a;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p3, "StarTrackFragment"

    const-string v0, "onCreateView"

    .line 252
    invoke-static {p3, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x7f0c0026

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 254
    invoke-direct {p0, p1}, Lcn/nubia/camera/au/a;->d(Landroid/view/View;)V

    .line 255
    iget-object p2, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {p2}, Lcn/nubia/camera/au/j;->i()V

    const p2, 0x7f0900ac

    .line 256
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcn/nubia/camera/au/a;->E:Landroid/widget/RelativeLayout;

    .line 257
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p0, p3, v0, p3, p2}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/au/a;->F:Lcn/nubia/camera/q/c;

    .line 258
    new-instance p2, Lcn/nubia/camera/au/b/a;

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcn/nubia/camera/au/b/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/camera/au/a;->H:Lcn/nubia/camera/au/b/a;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 335
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroy()V

    .line 336
    iget-boolean v0, p0, Lcn/nubia/camera/au/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 340
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->M()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 264
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 265
    iget-boolean v0, p0, Lcn/nubia/camera/au/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {v0}, Lcn/nubia/camera/au/j;->j()V

    .line 269
    iget-object v0, p0, Lcn/nubia/camera/au/a;->F:Lcn/nubia/camera/q/c;

    invoke-static {p0, v0}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 289
    iget-boolean v0, p0, Lcn/nubia/camera/au/a;->d:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    .line 293
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ui_change_startrack"

    .line 294
    invoke-virtual {p0, v0}, Lcn/nubia/camera/au/a;->e(Ljava/lang/String;)V

    .line 296
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/au/a;->l:Lcn/nubia/camera/au/g;

    sget-object v1, Lcn/nubia/camera/au/g;->c:Lcn/nubia/camera/au/g;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 297
    invoke-direct {p0, v0}, Lcn/nubia/camera/au/a;->b(Z)V

    goto :goto_0

    .line 298
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/au/a;->l:Lcn/nubia/camera/au/g;

    sget-object v1, Lcn/nubia/camera/au/g;->d:Lcn/nubia/camera/au/g;

    if-ne v0, v1, :cond_3

    .line 299
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->V()V

    .line 301
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/au/a;->L:Lcn/nubia/camera/au/a/a;

    if-eqz v0, :cond_4

    .line 302
    invoke-virtual {v0}, Lcn/nubia/camera/au/a/a;->a()V

    .line 304
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/au/a;->N:Lcn/nubia/camera/au/a/b;

    if-eqz v0, :cond_5

    .line 305
    invoke-virtual {v0}, Lcn/nubia/camera/au/a/b;->d()V

    .line 306
    iget-object v0, p0, Lcn/nubia/camera/au/a;->N:Lcn/nubia/camera/au/a/b;

    invoke-virtual {v0}, Lcn/nubia/camera/au/a/b;->a()V

    .line 309
    :cond_5
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->N()V

    .line 310
    iget-object v0, p0, Lcn/nubia/camera/au/a;->q:Lcn/nubia/camera/au/f;

    if-eqz v0, :cond_6

    .line 311
    invoke-virtual {v0}, Lcn/nubia/camera/au/f;->a()V

    .line 312
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->h()V

    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lcn/nubia/camera/au/a;->q:Lcn/nubia/camera/au/f;

    .line 316
    :cond_6
    iget-object v0, p0, Lcn/nubia/camera/au/a;->B:Lcn/nubia/camera/au/h;

    invoke-virtual {v0}, Lcn/nubia/camera/au/h;->e()V

    .line 317
    iget-object v0, p0, Lcn/nubia/camera/au/a;->G:Lcn/nubia/camera/au/b/b;

    invoke-virtual {v0}, Lcn/nubia/camera/au/b/b;->a()V

    .line 318
    iget-object v0, p0, Lcn/nubia/camera/au/a;->H:Lcn/nubia/camera/au/b/a;

    invoke-virtual {v0}, Lcn/nubia/camera/au/b/a;->b()V

    .line 320
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {v0}, Lcn/nubia/camera/au/j;->b()V

    .line 321
    invoke-direct {p0}, Lcn/nubia/camera/au/a;->X()V

    .line 323
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/au/a;->Q:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 330
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 274
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 275
    iget-boolean v0, p0, Lcn/nubia/camera/au/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->o()V

    .line 279
    new-instance v0, Lcn/nubia/camera/au/b/b;

    iget-object v1, p0, Lcn/nubia/camera/au/a;->H:Lcn/nubia/camera/au/b/a;

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/q/i;

    invoke-virtual {v2}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/au/b/b;-><init>(Lcn/nubia/camera/au/b/a;Lcn/nubia/camera/zoom/c;Lcn/nubia/camera/ad/a;)V

    iput-object v0, p0, Lcn/nubia/camera/au/a;->G:Lcn/nubia/camera/au/b/b;

    .line 280
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->m()V

    .line 281
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {p0}, Lcn/nubia/camera/au/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/au/a;->G:Lcn/nubia/camera/au/b/b;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 284
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/au/a;->n:Lcn/nubia/camera/au/j;

    invoke-virtual {v0}, Lcn/nubia/camera/au/j;->a()V

    return-void
.end method
