.class public Lcn/nubia/camera/lightpainting/b;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/lightpainting/LightStepSeekBar$a;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# instance fields
.field private A:Lcom/android/common/c/f$b;

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/Thread;

.field private E:Ljava/lang/Object;

.field private F:Ljava/lang/Runnable;

.field private G:Z

.field private H:Z

.field private I:Z

.field private a:I

.field private b:Lcn/nubia/camera/lightpainting/g;

.field private c:Lcn/nubia/camera/k;

.field private i:Lcn/nubia/camera/lightpainting/f;

.field private j:Lcn/nubia/camera/lightpainting/a;

.field private k:I

.field private l:Landroid/util/Size;

.field private m:Landroid/util/Size;

.field private n:Landroid/media/MediaRecorder;

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Landroid/net/Uri;

.field private s:Landroid/os/ParcelFileDescriptor;

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:Landroid/widget/RelativeLayout;

.field private y:Lcn/nubia/camera/q/c;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 126
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcn/nubia/camera/lightpainting/b;->a:I

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->b:Lcn/nubia/camera/lightpainting/g;

    .line 90
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->c:Lcn/nubia/camera/k;

    .line 91
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->i:Lcn/nubia/camera/lightpainting/f;

    .line 92
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->j:Lcn/nubia/camera/lightpainting/a;

    .line 93
    iput v0, p0, Lcn/nubia/camera/lightpainting/b;->k:I

    .line 94
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->l:Landroid/util/Size;

    .line 95
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->m:Landroid/util/Size;

    .line 96
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    const-wide/16 v2, 0x0

    .line 97
    iput-wide v2, p0, Lcn/nubia/camera/lightpainting/b;->o:J

    .line 98
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->p:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->q:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->r:Landroid/net/Uri;

    .line 102
    iput-wide v2, p0, Lcn/nubia/camera/lightpainting/b;->t:J

    .line 103
    iput-wide v2, p0, Lcn/nubia/camera/lightpainting/b;->u:J

    .line 106
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->x:Landroid/widget/RelativeLayout;

    .line 107
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->y:Lcn/nubia/camera/q/c;

    .line 108
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->z:Z

    .line 109
    new-instance v2, Lcn/nubia/camera/lightpainting/b$1;

    invoke-direct {v2, p0}, Lcn/nubia/camera/lightpainting/b$1;-><init>(Lcn/nubia/camera/lightpainting/b;)V

    iput-object v2, p0, Lcn/nubia/camera/lightpainting/b;->A:Lcom/android/common/c/f$b;

    .line 430
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->B:Z

    .line 431
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->C:Z

    .line 643
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->D:Ljava/lang/Thread;

    .line 644
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->E:Ljava/lang/Object;

    .line 811
    new-instance v1, Lcn/nubia/camera/lightpainting/b$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/lightpainting/b$4;-><init>(Lcn/nubia/camera/lightpainting/b;)V

    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->F:Ljava/lang/Runnable;

    .line 849
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->G:Z

    .line 850
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->H:Z

    .line 851
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->I:Z

    return-void
.end method

.method private constructor <init>(Lcn/nubia/camera/lightpainting/f;)V
    .locals 4

    const/4 v0, 0x1

    .line 131
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcn/nubia/camera/lightpainting/b;->a:I

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->b:Lcn/nubia/camera/lightpainting/g;

    .line 90
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->c:Lcn/nubia/camera/k;

    .line 91
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->i:Lcn/nubia/camera/lightpainting/f;

    .line 92
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->j:Lcn/nubia/camera/lightpainting/a;

    .line 93
    iput v0, p0, Lcn/nubia/camera/lightpainting/b;->k:I

    .line 94
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->l:Landroid/util/Size;

    .line 95
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->m:Landroid/util/Size;

    .line 96
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    const-wide/16 v2, 0x0

    .line 97
    iput-wide v2, p0, Lcn/nubia/camera/lightpainting/b;->o:J

    .line 98
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->p:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->q:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->r:Landroid/net/Uri;

    .line 102
    iput-wide v2, p0, Lcn/nubia/camera/lightpainting/b;->t:J

    .line 103
    iput-wide v2, p0, Lcn/nubia/camera/lightpainting/b;->u:J

    .line 106
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->x:Landroid/widget/RelativeLayout;

    .line 107
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->y:Lcn/nubia/camera/q/c;

    .line 108
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->z:Z

    .line 109
    new-instance v2, Lcn/nubia/camera/lightpainting/b$1;

    invoke-direct {v2, p0}, Lcn/nubia/camera/lightpainting/b$1;-><init>(Lcn/nubia/camera/lightpainting/b;)V

    iput-object v2, p0, Lcn/nubia/camera/lightpainting/b;->A:Lcom/android/common/c/f$b;

    .line 430
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->B:Z

    .line 431
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->C:Z

    .line 643
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->D:Ljava/lang/Thread;

    .line 644
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->E:Ljava/lang/Object;

    .line 811
    new-instance v1, Lcn/nubia/camera/lightpainting/b$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/lightpainting/b$4;-><init>(Lcn/nubia/camera/lightpainting/b;)V

    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->F:Ljava/lang/Runnable;

    .line 849
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->G:Z

    .line 850
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->H:Z

    .line 851
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->I:Z

    .line 132
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/b;->i:Lcn/nubia/camera/lightpainting/f;

    return-void
.end method

.method private J()V
    .locals 2

    .line 766
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    return-void
.end method

.method private K()V
    .locals 2

    .line 770
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    return-void
.end method

.method private L()V
    .locals 1

    const/4 v0, 0x0

    .line 853
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->G:Z

    .line 854
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->H:Z

    .line 855
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->I:Z

    return-void
.end method

.method private M()V
    .locals 4

    .line 859
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 860
    iget-boolean v1, p0, Lcn/nubia/camera/lightpainting/b;->H:Z

    const-string v2, "lp_capturebg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 861
    iget-boolean v1, p0, Lcn/nubia/camera/lightpainting/b;->G:Z

    const-string v2, "lp_pause"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 862
    iget-boolean v1, p0, Lcn/nubia/camera/lightpainting/b;->I:Z

    const-string v2, "lp_fireflash"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 863
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->u()Lcom/android/preference/c;

    move-result-object v1

    const v2, 0x7f0f01f1

    .line 864
    invoke-virtual {p0, v2}, Lcn/nubia/camera/lightpainting/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_light_draw_step"

    .line 863
    invoke-virtual {v1, v3, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lp_backlight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-static {v0}, Lcn/nubia/camera/ba/g;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/lightpainting/b;J)J
    .locals 0

    .line 77
    iput-wide p1, p0, Lcn/nubia/camera/lightpainting/b;->v:J

    return-wide p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;
    .locals 2

    .line 570
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 571
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "datetaken"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 573
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

    .line 574
    invoke-static {p2}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 578
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 580
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 581
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

    .line 537
    iget-wide v0, p0, Lcn/nubia/camera/lightpainting/b;->u:J

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 538
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 539
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 540
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 541
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 542
    sget v4, Lcn/nubia/d/a;->g:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 543
    sget v4, Lcn/nubia/d/a;->h:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 544
    sget v4, Lcn/nubia/d/a;->G:I

    new-instance v5, Lcn/nubia/d/l;

    const v6, 0x3c23d70a    # 0.01f

    invoke-direct {v5, v0, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 545
    sget v0, Lcn/nubia/d/a;->ad:I

    new-instance v4, Lcn/nubia/d/l;

    const/4 v5, 0x0

    aget v3, v3, v5

    invoke-direct {v4, v3, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 546
    sget v0, Lcn/nubia/d/a;->H:I

    new-instance v3, Lcn/nubia/d/l;

    aget v2, v2, v5

    invoke-direct {v3, v2, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 547
    invoke-static {v1, p1, p2}, Lcn/nubia/camera/ba/a;->a(Landroid/util/SparseArray;J)V

    .line 548
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 550
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2, v1}, Lcn/nubia/camera/ba/a;->a(DDLandroid/util/SparseArray;)V

    .line 552
    :cond_0
    invoke-direct {p0, v1}, Lcn/nubia/camera/lightpainting/b;->a(Landroid/util/SparseArray;)V

    return-object v1
.end method

.method public static a(Lcn/nubia/camera/lightpainting/f;)Lcn/nubia/camera/lightpainting/b;
    .locals 1

    .line 121
    new-instance v0, Lcn/nubia/camera/lightpainting/b;

    invoke-direct {v0, p0}, Lcn/nubia/camera/lightpainting/b;-><init>(Lcn/nubia/camera/lightpainting/f;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/lightpainting/g;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/camera/lightpainting/b;->b:Lcn/nubia/camera/lightpainting/g;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/lightpainting/b;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 77
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/b;->D:Ljava/lang/Thread;

    return-object p1
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

    .line 557
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 558
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_picture_artist_info"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 559
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 561
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 563
    :cond_0
    sget v1, Lcn/nubia/d/a;->u:I

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/lightpainting/b;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/lightpainting/b;->a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 24

    move-object/from16 v8, p0

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v15

    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 501
    sget-object v0, Lcn/nubia/camera/af/a;->i:Lcn/nubia/camera/af/a;

    invoke-virtual {v0}, Lcn/nubia/camera/af/a;->a()I

    move-result v0

    invoke-static {v15, v0}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v11

    .line 502
    invoke-static {v9, v10}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v12

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v0

    int-to-float v1, v0

    move-object/from16 v14, p4

    .line 504
    invoke-virtual {v14, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 506
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

    .line 513
    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/lightpainting/b;->a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;

    move-result-object v21

    .line 520
    new-instance v0, Lcn/nubia/k/b/c;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v2

    const/16 v17, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 522
    invoke-direct {v8, v9, v10}, Lcn/nubia/camera/lightpainting/b;->a(J)Landroid/util/SparseArray;

    move-result-object v20

    new-instance v3, Lcn/nubia/camera/lightpainting/b$11;

    invoke-direct {v3, v8}, Lcn/nubia/camera/lightpainting/b$11;-><init>(Lcn/nubia/camera/lightpainting/b;)V

    new-instance v4, Lcn/nubia/m/b;

    const/4 v5, 0x0

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v6

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v7

    .line 530
    invoke-static {v6, v7}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcn/nubia/m/b;-><init>(II)V

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v15

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object v1, v15

    move/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-direct/range {v9 .. v23}, Lcn/nubia/k/b/c;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;ILjava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/content/ContentValues;Lcn/nubia/k/b/d;Lcn/nubia/m/b;)V

    const/4 v2, 0x1

    .line 532
    invoke-virtual {v1, v0, v2}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    move-result-object v0

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRequest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightPaitingFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/lightpainting/b;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcn/nubia/camera/lightpainting/b;->z:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/lightpainting/b;J)J
    .locals 0

    .line 77
    iput-wide p1, p0, Lcn/nubia/camera/lightpainting/b;->w:J

    return-wide p1
.end method

.method static synthetic b(Lcn/nubia/camera/lightpainting/b;)Ljava/lang/Runnable;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/camera/lightpainting/b;->F:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/lightpainting/b;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcn/nubia/camera/lightpainting/b;->f(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopCapture saveData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReceiveFrameNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/lightpainting/b;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightPaitingFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 441
    iput p1, p0, Lcn/nubia/camera/lightpainting/b;->a:I

    const/4 p1, 0x0

    .line 442
    iput-boolean p1, p0, Lcn/nubia/camera/lightpainting/b;->C:Z

    .line 443
    iput-boolean p1, p0, Lcn/nubia/camera/lightpainting/b;->B:Z

    .line 444
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b;->j:Lcn/nubia/camera/lightpainting/a;

    new-instance v1, Lcn/nubia/camera/lightpainting/b$8;

    invoke-direct {v1, p0}, Lcn/nubia/camera/lightpainting/b$8;-><init>(Lcn/nubia/camera/lightpainting/b;)V

    invoke-virtual {p1, v1}, Lcn/nubia/camera/lightpainting/a;->b(Lcom/android/common/c/f$b;)V

    .line 454
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 455
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/c/e;->h()V

    .line 457
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->K()V

    .line 458
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b;->i:Lcn/nubia/camera/lightpainting/f;

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->D()Z

    move-result v1

    xor-int/2addr v1, v0

    new-instance v2, Lcn/nubia/camera/lightpainting/b$9;

    invoke-direct {v2, p0}, Lcn/nubia/camera/lightpainting/b$9;-><init>(Lcn/nubia/camera/lightpainting/b;)V

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/lightpainting/f;->a(ZLcn/nubia/camera/lightpainting/f$a;)Z

    .line 465
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b;->b:Lcn/nubia/camera/lightpainting/g;

    invoke-virtual {p1}, Lcn/nubia/camera/lightpainting/g;->c()V

    goto :goto_0

    .line 467
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b;->i:Lcn/nubia/camera/lightpainting/f;

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->D()Z

    move-result v1

    xor-int/2addr v1, v0

    new-instance v2, Lcn/nubia/camera/lightpainting/b$10;

    invoke-direct {v2, p0}, Lcn/nubia/camera/lightpainting/b$10;-><init>(Lcn/nubia/camera/lightpainting/b;)V

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/lightpainting/f;->a(ZLcn/nubia/camera/lightpainting/f$a;)Z

    .line 473
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b;->j:Lcn/nubia/camera/lightpainting/a;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcn/nubia/camera/lightpainting/a;->b(Lcom/android/common/c/f$b;)V

    .line 474
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 475
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/c/e;->h()V

    .line 479
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/q/i;->a_(Z)V

    .line 480
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->M()V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/lightpainting/b;)J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcn/nubia/camera/lightpainting/b;->v:J

    return-wide v0
.end method

.method private c(Z)V
    .locals 1

    .line 658
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->q()V

    .line 659
    new-instance v0, Lcn/nubia/camera/lightpainting/b$3;

    invoke-direct {v0, p0, p1}, Lcn/nubia/camera/lightpainting/b$3;-><init>(Lcn/nubia/camera/lightpainting/b;Z)V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/b;->D:Ljava/lang/Thread;

    .line 673
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/lightpainting/b;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcn/nubia/camera/lightpainting/b;->I:Z

    return p1
.end method

.method private d()V
    .locals 4

    .line 276
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->j:Lcn/nubia/camera/lightpainting/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 277
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->z:Z

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/camera/lightpainting/b;->t:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcn/nubia/camera/lightpainting/b;->u:J

    .line 279
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->j:Lcn/nubia/camera/lightpainting/a;

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/b;->A:Lcom/android/common/c/f$b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/lightpainting/a;->a(Lcom/android/common/c/f$b;)V

    .line 280
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/c/e;->h()V

    .line 283
    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->G()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 9

    .line 223
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->b:Lcn/nubia/camera/lightpainting/g;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcn/nubia/camera/lightpainting/g;

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v5

    new-instance v6, Lcn/nubia/camera/lightpainting/b$5;

    invoke-direct {v6, p0}, Lcn/nubia/camera/lightpainting/b$5;-><init>(Lcn/nubia/camera/lightpainting/b;)V

    move-object v1, v0

    move-object v3, p1

    move-object v7, p0

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/lightpainting/g;-><init>(Lcn/nubia/camera/ad/a;Landroid/view/View;Landroid/content/Context;Lcom/android/preference/PreferenceGroup;Landroid/view/View$OnClickListener;Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/lightpainting/LightStepSeekBar$a;)V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/b;->b:Lcn/nubia/camera/lightpainting/g;

    .line 267
    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/g;->a()[Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 268
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->b:Lcn/nubia/camera/lightpainting/g;

    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/g;->a()[Landroid/view/View;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 269
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->b:Lcn/nubia/camera/lightpainting/g;

    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/g;->a()[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcn/nubia/camera/lightpainting/b;->a(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/lightpainting/b;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcn/nubia/camera/lightpainting/b;->z:Z

    return p0
.end method

.method static synthetic d(Lcn/nubia/camera/lightpainting/b;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcn/nubia/camera/lightpainting/b;->G:Z

    return p1
.end method

.method private e()V
    .locals 4

    .line 351
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->i:Lcn/nubia/camera/lightpainting/f;

    const-string v1, "LightPaitingFragment"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/f;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->i:Lcn/nubia/camera/lightpainting/f;

    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/f;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/b;->l:Landroid/util/Size;

    .line 353
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->i:Lcn/nubia/camera/lightpainting/f;

    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/f;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/b;->m:Landroid/util/Size;

    .line 354
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 355
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 356
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_0

    .line 357
    new-instance v0, Landroid/util/Size;

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/b;->m:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/lightpainting/b;->m:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/b;->m:Landroid/util/Size;

    .line 358
    new-instance v0, Landroid/util/Size;

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/b;->l:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/lightpainting/b;->l:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/b;->l:Landroid/util/Size;

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPictureSize "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/b;->l:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/camera/lightpainting/b;->l:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mPreviewSize "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/camera/lightpainting/b;->m:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/b;->m:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 362
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPreviewAndPictureSize failed. mStreamController is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/b;->i:Lcn/nubia/camera/lightpainting/f;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; ParametersSetter is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/b;->i:Lcn/nubia/camera/lightpainting/f;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->i:Lcn/nubia/camera/lightpainting/f;

    .line 363
    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/f;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 362
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/lightpainting/b;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->d()V

    return-void
.end method

.method private e(Z)V
    .locals 4

    .line 677
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 681
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 682
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 683
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 684
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->s:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    if-eqz p1, :cond_1

    .line 687
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->r()V

    goto :goto_1

    .line 689
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b;->r:Landroid/net/Uri;

    if-eqz p1, :cond_2

    .line 690
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->r:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    .line 691
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->r:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 695
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop recorder fail "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LightPaitingFragment"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b;->r:Landroid/net/Uri;

    if-eqz p1, :cond_2

    .line 697
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->r:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    .line 698
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->r:Landroid/net/Uri;

    .line 701
    :cond_2
    :goto_1
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 702
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    .line 703
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->p:Ljava/lang/String;

    .line 704
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->q:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 705
    iput-wide v2, p0, Lcn/nubia/camera/lightpainting/b;->o:J

    .line 706
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->r:Landroid/net/Uri;

    .line 707
    iput-object v1, p0, Lcn/nubia/camera/lightpainting/b;->s:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/lightpainting/b;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcn/nubia/camera/lightpainting/b;->H:Z

    return p1
.end method

.method static synthetic f(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/lightpainting/a;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/camera/lightpainting/b;->j:Lcn/nubia/camera/lightpainting/a;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/lightpainting/b;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcn/nubia/camera/lightpainting/b;->b(Z)V

    return-void
.end method

.method private f(Z)V
    .locals 2

    .line 805
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->i:Lcn/nubia/camera/lightpainting/f;

    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/f;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    .line 806
    new-instance v1, Lcn/nubia/camera/k/ad;

    invoke-direct {v1, v0}, Lcn/nubia/camera/k/ad;-><init>(Lcn/nubia/camera/k/ad;)V

    .line 807
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 808
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b;->i:Lcn/nubia/camera/lightpainting/f;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/lightpainting/f;->a(Lcn/nubia/camera/k/ad;)V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/k;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/camera/lightpainting/b;->c:Lcn/nubia/camera/k;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/lightpainting/b;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcn/nubia/camera/lightpainting/b;->c(Z)V

    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/lightpainting/b;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->p()V

    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/lightpainting/b;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcn/nubia/camera/lightpainting/b;->B:Z

    return p1
.end method

.method private i()Landroid/util/Size;
    .locals 1

    .line 368
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->m:Landroid/util/Size;

    if-nez v0, :cond_0

    .line 369
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->e()V

    .line 371
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->m:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic i(Lcn/nubia/camera/lightpainting/b;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->j()V

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/lightpainting/b;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcn/nubia/camera/lightpainting/b;->C:Z

    return p1
.end method

.method static synthetic j(Lcn/nubia/camera/lightpainting/b;)I
    .locals 0

    .line 77
    iget p0, p0, Lcn/nubia/camera/lightpainting/b;->a:I

    return p0
.end method

.method private j()V
    .locals 6

    const-string v0, "LightPaitingFragment"

    const-string v1, "startCaputre"

    .line 375
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcn/nubia/camera/lightpainting/b;->t:J

    .line 377
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 378
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->m()V

    .line 379
    iput v2, p0, Lcn/nubia/camera/lightpainting/b;->a:I

    .line 380
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 381
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->J()V

    .line 382
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/b;->i:Lcn/nubia/camera/lightpainting/f;

    invoke-virtual {v1}, Lcn/nubia/camera/lightpainting/f;->e()V

    .line 383
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/b;->i:Lcn/nubia/camera/lightpainting/f;

    invoke-virtual {v1}, Lcn/nubia/camera/lightpainting/f;->H()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "startCapture Error, surfaceTexture is null"

    .line 385
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->j:Lcn/nubia/camera/lightpainting/a;

    if-nez v0, :cond_1

    .line 388
    new-instance v0, Lcn/nubia/camera/lightpainting/a;

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/lightpainting/b;->l:Landroid/util/Size;

    .line 389
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/lightpainting/b;->l:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Lcn/nubia/camera/lightpainting/a;-><init>(Landroid/content/Context;Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/b;->j:Lcn/nubia/camera/lightpainting/a;

    .line 391
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->j:Lcn/nubia/camera/lightpainting/a;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v2}, Lcn/nubia/camera/lightpainting/a;->a(F)V

    .line 392
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/b;->j:Lcn/nubia/camera/lightpainting/a;

    invoke-virtual {v0, v2}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 393
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->j:Lcn/nubia/camera/lightpainting/a;

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->i()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->i()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/16 v5, 0xa

    invoke-virtual {v0, v2, v3, v4, v5}, Lcn/nubia/camera/lightpainting/a;->a(Landroid/view/Surface;III)V

    .line 394
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->j:Lcn/nubia/camera/lightpainting/a;

    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/a;->d()V

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/camera/lightpainting/b;->w:J

    const/4 v0, 0x0

    .line 396
    iput v0, p0, Lcn/nubia/camera/lightpainting/b;->k:I

    .line 397
    new-instance v2, Lcn/nubia/camera/lightpainting/b$7;

    invoke-direct {v2, p0}, Lcn/nubia/camera/lightpainting/b$7;-><init>(Lcn/nubia/camera/lightpainting/b;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 414
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->l()V

    .line 415
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/i;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/q/i;->a_(Z)V

    .line 416
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->L()V

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/lightpainting/b;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcn/nubia/camera/lightpainting/b;->e(Z)V

    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/lightpainting/b;)J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcn/nubia/camera/lightpainting/b;->w:J

    return-wide v0
.end method

.method static synthetic l(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private l()V
    .locals 2

    const-string v0, "LightPaitingFragment"

    const-string v1, "showTorchLayout"

    .line 420
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->b:Lcn/nubia/camera/lightpainting/g;

    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/g;->e()V

    return-void
.end method

.method static synthetic m(Lcn/nubia/camera/lightpainting/b;)I
    .locals 2

    .line 77
    iget v0, p0, Lcn/nubia/camera/lightpainting/b;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/camera/lightpainting/b;->k:I

    return v0
.end method

.method private m()V
    .locals 1

    const-string v0, "ui_change_lightpainting"

    .line 425
    invoke-virtual {p0, v0}, Lcn/nubia/camera/lightpainting/b;->d(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0, v0}, Lcn/nubia/camera/lightpainting/b;->f(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->b:Lcn/nubia/camera/lightpainting/g;

    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/g;->b()V

    return-void
.end method

.method private n()V
    .locals 1

    .line 433
    iget-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->B:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->C:Z

    if-eqz v0, :cond_0

    .line 434
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->o()V

    :cond_0
    return-void
.end method

.method static synthetic n(Lcn/nubia/camera/lightpainting/b;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->n()V

    return-void
.end method

.method private o()V
    .locals 4

    .line 484
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 485
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->s()V

    .line 486
    iput v1, p0, Lcn/nubia/camera/lightpainting/b;->a:I

    .line 487
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->E:Ljava/lang/Object;

    monitor-enter v0

    .line 488
    :try_start_0
    iget v1, p0, Lcn/nubia/camera/lightpainting/b;->a:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/b;->D:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 490
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/d/b;->a()I

    move-result v1

    sget-object v2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v2}, Lcn/nubia/camera/d/b;->a()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 491
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->D()Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 494
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/camera/lightpainting/b;->t:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcn/nubia/camera/lightpainting/b;->u:J

    return-void

    :catchall_0
    move-exception v1

    .line 494
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic o(Lcn/nubia/camera/lightpainting/b;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->o()V

    return-void
.end method

.method static synthetic p(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private p()V
    .locals 5

    .line 587
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->q()V

    .line 588
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    .line 589
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 593
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 594
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 595
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 596
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/lightpainting/b;->o:J

    .line 597
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->i:Lcn/nubia/camera/af/a;

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/b;->p:Ljava/lang/String;

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcn/nubia/camera/lightpainting/b;->o:J

    invoke-static {v1, v2}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/b;->q:Ljava/lang/String;

    .line 599
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->i()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->i()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/lightpainting/b;->a(II)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/b;->r:Landroid/net/Uri;

    .line 600
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/b;->r:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->c(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/b;->s:Landroid/os/ParcelFileDescriptor;

    .line 601
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 602
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->i()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->i()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 603
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->i()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->i()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 605
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 607
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/k/a/a;->e()J

    move-result-wide v1

    const-wide/32 v3, 0x3200000

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x100000

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 608
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/al/c;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 609
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    new-instance v1, Lcn/nubia/camera/lightpainting/b$12;

    invoke-direct {v1, p0}, Lcn/nubia/camera/lightpainting/b$12;-><init>(Lcn/nubia/camera/lightpainting/b;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 625
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    new-instance v1, Lcn/nubia/camera/lightpainting/b$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/lightpainting/b$2;-><init>(Lcn/nubia/camera/lightpainting/b;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 636
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 638
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 640
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->n:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    return-void
.end method

.method static synthetic q(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private q()V
    .locals 2

    .line 646
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->D:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const-string v0, "LightPaitingFragment"

    const-string v1, "MediaRecorder is busy, waiting..."

    .line 647
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/b;->D:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 651
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string v1, "MediaRecorder is idle,"

    .line 653
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic r(Lcn/nubia/camera/lightpainting/b;)Ljava/lang/Object;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/camera/lightpainting/b;->E:Ljava/lang/Object;

    return-object p0
.end method

.method private r()V
    .locals 6

    .line 711
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->r:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string v0, "LightPaitingFragment"

    const-string v1, "updateThumbnail, but uri is null"

    .line 712
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 715
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 716
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "is_pending"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 717
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1d

    if-gt v2, v3, :cond_2

    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/camera/lightpainting/b;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/lightpainting/b;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/ba/a;->b(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 720
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 722
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/lightpainting/b;->r:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcn/nubia/camera/ba/a;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 724
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "_size"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 728
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/lightpainting/b;->r:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    .line 729
    new-instance v0, Lcn/nubia/l/b/g;

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/lightpainting/b;->r:Landroid/net/Uri;

    invoke-direct {v0, v2, v3, v1, v1}, Lcn/nubia/l/b/g;-><init>(Landroid/content/Context;Landroid/net/Uri;IZ)V

    .line 730
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    return-void
.end method

.method static synthetic s(Lcn/nubia/camera/lightpainting/b;)Ljava/lang/Thread;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/camera/lightpainting/b;->D:Ljava/lang/Thread;

    return-object p0
.end method

.method private s()V
    .locals 1

    .line 755
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->b:Lcn/nubia/camera/lightpainting/g;

    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/g;->f()V

    const-string v0, "ui_change_lightpainting"

    .line 756
    invoke-virtual {p0, v0}, Lcn/nubia/camera/lightpainting/b;->c(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0, v0}, Lcn/nubia/camera/lightpainting/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic t(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic u(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public F()V
    .locals 2

    .line 835
    invoke-super {p0}, Lcn/nubia/camera/q/a;->F()V

    .line 836
    iget v0, p0, Lcn/nubia/camera/lightpainting/b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 839
    invoke-direct {p0, v1}, Lcn/nubia/camera/lightpainting/b;->c(Z)V

    .line 840
    invoke-direct {p0, v1}, Lcn/nubia/camera/lightpainting/b;->b(Z)V

    .line 842
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->j:Lcn/nubia/camera/lightpainting/a;

    if-eqz v0, :cond_1

    .line 843
    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/a;->a()V

    .line 844
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->t()V

    const/4 v0, 0x0

    .line 845
    iput-object v0, p0, Lcn/nubia/camera/lightpainting/b;->j:Lcn/nubia/camera/lightpainting/a;

    :cond_1
    return-void
.end method

.method protected a(II)Landroid/net/Uri;
    .locals 3

    .line 734
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 735
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_pending"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 736
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/b;->q:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/b;->q:Ljava/lang/String;

    const-string v2, "_display_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-wide v1, p0, Lcn/nubia/camera/lightpainting/b;->o:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "datetaken"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "mime_type"

    const-string v2, "video/mp4"

    .line 739
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/b;->p:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "relative_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "resolution"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 745
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v1, "latitude"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 746
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 750
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "creatVideoUri mCurrentVideoUri="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LightPaitingFragment"

    invoke-static {v0, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    const-string p1, "LightPaitingFragment"

    const-string p2, "onPreviewAreaUpdate"

    .line 820
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b;->x:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    .line 823
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    .line 825
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f0701e5

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    if-le p3, p2, :cond_0

    .line 826
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 827
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 3

    .line 303
    iget v0, p0, Lcn/nubia/camera/lightpainting/b;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/f/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->c:Lcn/nubia/camera/k;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 341
    invoke-direct {p0, v2}, Lcn/nubia/camera/lightpainting/b;->b(Z)V

    .line 342
    invoke-direct {p0, v2}, Lcn/nubia/camera/lightpainting/b;->c(Z)V

    goto :goto_0

    .line 305
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->D()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 309
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/k/a/a;->f()J

    .line 310
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/k/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "LightPaitingFragment"

    const-string v1, "Storage is low"

    .line 311
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 314
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 317
    :cond_5
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/b;->z:Z

    .line 319
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/f/b;->d()V

    .line 320
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/lightpainting/b$6;

    invoke-direct {v1, p0}, Lcn/nubia/camera/lightpainting/b$6;-><init>(Lcn/nubia/camera/lightpainting/b;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/f/b;->a(Lcn/nubia/camera/f/c;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 800
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/aw/a;->l()V

    .line 801
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b;->i:Lcn/nubia/camera/lightpainting/f;

    invoke-virtual {p1}, Lcn/nubia/camera/lightpainting/f;->k()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d_()Z
    .locals 1

    .line 774
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->b:Lcn/nubia/camera/lightpainting/g;

    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/g;->g()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected e(Ljava/lang/String;)V
    .locals 0

    .line 782
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->e(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->a()V

    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 3

    .line 788
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->f(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/nubia/camera/d/d;

    sget-object v1, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/d/b;->b:Lcn/nubia/camera/d/b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a([Lcn/nubia/camera/d/d;)V

    return-void
.end method

.method protected i_()V
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/lightpainting/b;->d(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 4

    .line 213
    iget v0, p0, Lcn/nubia/camera/lightpainting/b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, v0}, Lcn/nubia/camera/lightpainting/b;->b(Z)V

    .line 215
    invoke-direct {p0, v0}, Lcn/nubia/camera/lightpainting/b;->c(Z)V

    const-wide/16 v2, 0x0

    .line 216
    iput-wide v2, p0, Lcn/nubia/camera/lightpainting/b;->u:J

    return v1

    .line 219
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 138
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 139
    iget-boolean p3, p0, Lcn/nubia/camera/lightpainting/b;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p3, "LightPaitingFragment"

    const-string v0, "onCreateView"

    .line 141
    invoke-static {p3, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0c001e

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p2, "view == null"

    .line 144
    invoke-static {p3, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    new-instance p2, Lcn/nubia/camera/k;

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcn/nubia/camera/k;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/camera/lightpainting/b;->c:Lcn/nubia/camera/k;

    .line 147
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->e()V

    const p2, 0x7f0901dc

    .line 148
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    const p3, 0x7f0902f7

    .line 149
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 150
    invoke-virtual {p0, p2}, Lcn/nubia/camera/lightpainting/b;->a(Landroid/view/View;)V

    .line 151
    invoke-virtual {p0, p3}, Lcn/nubia/camera/lightpainting/b;->a(Landroid/view/View;)V

    .line 152
    invoke-direct {p0, p1}, Lcn/nubia/camera/lightpainting/b;->d(Landroid/view/View;)V

    const p2, 0x7f0900ac

    .line 153
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcn/nubia/camera/lightpainting/b;->x:Landroid/widget/RelativeLayout;

    .line 154
    invoke-virtual {p0, p2}, Lcn/nubia/camera/lightpainting/b;->b(Landroid/view/View;)V

    .line 155
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p0, p3, v1, p3, p2}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/lightpainting/b;->y:Lcn/nubia/camera/q/c;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 204
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroy()V

    .line 205
    iget-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->q()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 161
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 162
    iget-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->y:Lcn/nubia/camera/q/c;

    invoke-static {p0, v0}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 184
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 185
    iget-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 188
    iput-wide v0, p0, Lcn/nubia/camera/lightpainting/b;->u:J

    .line 189
    iget v0, p0, Lcn/nubia/camera/lightpainting/b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 191
    invoke-direct {p0, v1}, Lcn/nubia/camera/lightpainting/b;->c(Z)V

    .line 192
    invoke-direct {p0, v1}, Lcn/nubia/camera/lightpainting/b;->b(Z)V

    .line 194
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->j:Lcn/nubia/camera/lightpainting/a;

    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/a;->a()V

    .line 196
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->t()V

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcn/nubia/camera/lightpainting/b;->j:Lcn/nubia/camera/lightpainting/a;

    .line 199
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b;->i:Lcn/nubia/camera/lightpainting/f;

    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/f;->I()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 170
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 171
    iget-boolean v0, p0, Lcn/nubia/camera/lightpainting/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 174
    :cond_0
    iget v0, p0, Lcn/nubia/camera/lightpainting/b;->a:I

    if-eqz v0, :cond_1

    const-string v0, "LightPaitingFragment"

    const-string v1, "[onResume] mState is not STATE_VIEWFINDER.."

    .line 175
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 177
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/b;->s()V

    .line 178
    iput v1, p0, Lcn/nubia/camera/lightpainting/b;->a:I

    :cond_1
    return-void
.end method
