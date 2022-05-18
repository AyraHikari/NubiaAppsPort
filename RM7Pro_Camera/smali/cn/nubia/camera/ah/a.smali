.class public Lcn/nubia/camera/ah/a;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ah/a$b;,
        Lcn/nubia/camera/ah/a$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Landroid/widget/RelativeLayout;

.field private D:Lcn/nubia/camera/q/c;

.field private E:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

.field private F:Lcom/android/preference/IconListPreference;

.field private G:Ljava/lang/Integer;

.field private H:Lcn/nubia/camera/zoom/arc/a$a;

.field private a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

.field private q:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private r:Lcom/android/common/ui/RotateImageView;

.field private s:Lcom/android/common/ui/RotateImageView;

.field private t:Landroid/view/View;

.field private u:I

.field private v:Lcn/nubia/camera/ah/g;

.field private w:Lcn/nubia/k/a/a;

.field private x:Ljava/lang/String;

.field private y:Lcn/nubia/camera/ah/e;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 131
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->b:Landroid/widget/TextView;

    .line 92
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->c:Landroid/widget/LinearLayout;

    .line 93
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->i:Landroid/widget/ImageView;

    .line 94
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->j:Landroid/widget/ImageView;

    .line 95
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->k:Landroid/widget/ImageView;

    .line 96
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->l:Landroid/widget/ImageView;

    .line 98
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->m:Landroid/widget/LinearLayout;

    .line 99
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->n:Landroid/widget/ImageView;

    .line 102
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->o:Landroid/widget/RelativeLayout;

    .line 103
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->p:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 104
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->q:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 106
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->r:Lcom/android/common/ui/RotateImageView;

    .line 107
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->s:Lcom/android/common/ui/RotateImageView;

    .line 108
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->t:Landroid/view/View;

    const/4 v1, 0x1

    .line 110
    iput v1, p0, Lcn/nubia/camera/ah/a;->u:I

    .line 113
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->w:Lcn/nubia/k/a/a;

    .line 114
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->x:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->y:Lcn/nubia/camera/ah/e;

    const/4 v1, 0x0

    .line 116
    iput v1, p0, Lcn/nubia/camera/ah/a;->z:I

    .line 117
    iput-boolean v1, p0, Lcn/nubia/camera/ah/a;->A:Z

    .line 120
    iput-boolean v1, p0, Lcn/nubia/camera/ah/a;->B:Z

    .line 121
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->C:Landroid/widget/RelativeLayout;

    .line 123
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->D:Lcn/nubia/camera/q/c;

    .line 233
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->F:Lcom/android/preference/IconListPreference;

    .line 983
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ah/a;->G:Ljava/lang/Integer;

    .line 1048
    iput-object v0, p0, Lcn/nubia/camera/ah/a;->H:Lcn/nubia/camera/zoom/arc/a$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 127
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->b:Landroid/widget/TextView;

    .line 92
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->c:Landroid/widget/LinearLayout;

    .line 93
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->i:Landroid/widget/ImageView;

    .line 94
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->j:Landroid/widget/ImageView;

    .line 95
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->k:Landroid/widget/ImageView;

    .line 96
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->l:Landroid/widget/ImageView;

    .line 98
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->m:Landroid/widget/LinearLayout;

    .line 99
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->n:Landroid/widget/ImageView;

    .line 102
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->o:Landroid/widget/RelativeLayout;

    .line 103
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->p:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 104
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->q:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 106
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->r:Lcom/android/common/ui/RotateImageView;

    .line 107
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->s:Lcom/android/common/ui/RotateImageView;

    .line 108
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->t:Landroid/view/View;

    const/4 v0, 0x1

    .line 110
    iput v0, p0, Lcn/nubia/camera/ah/a;->u:I

    .line 113
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->w:Lcn/nubia/k/a/a;

    .line 114
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->x:Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->y:Lcn/nubia/camera/ah/e;

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcn/nubia/camera/ah/a;->z:I

    .line 117
    iput-boolean v0, p0, Lcn/nubia/camera/ah/a;->A:Z

    .line 120
    iput-boolean v0, p0, Lcn/nubia/camera/ah/a;->B:Z

    .line 121
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->C:Landroid/widget/RelativeLayout;

    .line 123
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->D:Lcn/nubia/camera/q/c;

    .line 233
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->F:Lcom/android/preference/IconListPreference;

    .line 983
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ah/a;->G:Ljava/lang/Integer;

    .line 1048
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->H:Lcn/nubia/camera/zoom/arc/a$a;

    return-void
.end method

.method private J()V
    .locals 4

    const/4 v0, 0x0

    .line 602
    invoke-direct {p0, v0}, Lcn/nubia/camera/ah/a;->c(Z)V

    const-string v1, "ui_change_multiexposure"

    .line 604
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ah/a;->c(Ljava/lang/String;)V

    .line 606
    :try_start_0
    iput v0, p0, Lcn/nubia/camera/ah/a;->z:I

    .line 607
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ah/a;->b(Z)V

    .line 608
    iget v1, p0, Lcn/nubia/camera/ah/a;->u:I

    invoke-direct {p0, v1}, Lcn/nubia/camera/ah/a;->c(I)V

    .line 609
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->p()V

    .line 610
    iget-object v1, p0, Lcn/nubia/camera/ah/a;->E:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->setVisibility(I)V

    .line 611
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->i()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 612
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->i()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v1

    const-string v3, "alphaSeekbar"

    invoke-virtual {v1, v0, v3}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    .line 614
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    if-eqz v1, :cond_1

    .line 615
    invoke-virtual {v1, v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setVisibility(I)V

    .line 616
    iget-object v1, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setListFocusable(Z)V

    .line 618
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->l()V

    .line 619
    iget v1, p0, Lcn/nubia/camera/ah/a;->u:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_3

    const/4 v3, 0x7

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_3

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 627
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 624
    :cond_3
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/ah/a;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 625
    iget-object v1, p0, Lcn/nubia/camera/ah/a;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 631
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 633
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    if-eqz v0, :cond_4

    .line 634
    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/ah/a;->e(Z)V

    :cond_4
    return-void
.end method

.method private K()V
    .locals 2

    .line 759
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->g:Lcn/nubia/camera/af/a;

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ah/a;->x:Ljava/lang/String;

    .line 760
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/camera/ah/a;->x:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 762
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-void
.end method

.method private L()V
    .locals 3

    .line 1013
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0209

    .line 1014
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ah/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_shutter_sound_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 1015
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1016
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    :cond_0
    return-void
.end method

.method private M()V
    .locals 2

    .line 1050
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->i()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1051
    new-instance v0, Lcn/nubia/camera/ah/a$6;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ah/a$6;-><init>(Lcn/nubia/camera/ah/a;)V

    iput-object v0, p0, Lcn/nubia/camera/ah/a;->H:Lcn/nubia/camera/zoom/arc/a$a;

    .line 1072
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->i()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ah/a;->H:Lcn/nubia/camera/zoom/arc/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a$a;)V

    :cond_0
    return-void
.end method

.method private N()V
    .locals 2

    .line 1077
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->i()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->i()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ah/a;->H:Lcn/nubia/camera/zoom/arc/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->b(Lcn/nubia/camera/zoom/arc/a$a;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;
    .locals 2

    .line 870
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 871
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
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

    .line 873
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p3, "datetaken"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 874
    invoke-static {p2}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 876
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 877
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 880
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 881
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
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 819
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 820
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 821
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 822
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 823
    iget-object v3, p0, Lcn/nubia/camera/ah/a;->v:Lcn/nubia/camera/ah/g;

    invoke-virtual {v3}, Lcn/nubia/camera/ah/g;->m()Lcn/nubia/camera/k/y;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v3

    sget-wide v5, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr v3, v5

    long-to-int v3, v3

    .line 824
    sget v4, Lcn/nubia/d/a;->g:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 825
    sget v4, Lcn/nubia/d/a;->h:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 826
    sget v4, Lcn/nubia/d/a;->ad:I

    new-instance v5, Lcn/nubia/d/l;

    const/4 v6, 0x0

    .line 842
    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    .line 826
    aget v2, v2, v6

    const v8, 0x3c23d70a    # 0.01f

    invoke-direct {v5, v2, v8}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 827
    sget v2, Lcn/nubia/d/a;->H:I

    new-instance v4, Lcn/nubia/d/l;

    aget v1, v1, v6

    invoke-direct {v4, v1, v8}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 828
    sget v1, Lcn/nubia/d/a;->G:I

    new-instance v2, Lcn/nubia/d/l;

    int-to-float v3, v3

    invoke-direct {v2, v3, v8}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 829
    invoke-static {v0, p1, p2}, Lcn/nubia/camera/ba/a;->a(Landroid/util/SparseArray;J)V

    .line 830
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    .line 844
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 831
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->G:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 832
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 833
    sget p1, Lcn/nubia/d/a;->ac:I

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 835
    :cond_0
    sget p1, Lcn/nubia/d/a;->ac:I

    invoke-virtual {v0, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 838
    :cond_1
    sget p1, Lcn/nubia/d/a;->ac:I

    invoke-virtual {v0, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 841
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    const-string v1, "pref_selfie_flashmode_key"

    const-string v2, "off"

    invoke-virtual {p1, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 842
    sget p1, Lcn/nubia/d/a;->ac:I

    invoke-virtual {v0, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 844
    :cond_3
    sget p1, Lcn/nubia/d/a;->ac:I

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 848
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 850
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {v1, v2, p1, p2, v0}, Lcn/nubia/camera/ba/a;->a(DDLandroid/util/SparseArray;)V

    .line 852
    :cond_4
    invoke-direct {p0, v0}, Lcn/nubia/camera/ah/a;->a(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/ah/a;)Lcom/android/preference/c;
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/ah/a;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 85
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->G:Ljava/lang/Integer;

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

    .line 857
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 858
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_picture_artist_info"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 859
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 861
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 863
    :cond_0
    sget v1, Lcn/nubia/d/a;->u:I

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ah/a;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/camera/ah/a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ah/a;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/ah/a;->a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ah/a;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/camera/ah/a;->e(Z)V

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 25

    move-object/from16 v8, p0

    move-object/from16 v15, p4

    .line 767
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 768
    invoke-static {v9, v10}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v11

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v0

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v14, "MultiExposureFragment"

    invoke-static {v14, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v0, 0x5a

    int-to-float v1, v1

    .line 771
    invoke-virtual {v15, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v1, :cond_1

    .line 775
    rem-int/lit16 v1, v0, 0xb4

    const/16 v4, 0x5a

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v24, v3

    move v3, v2

    move/from16 v2, v24

    goto :goto_0

    :cond_1
    move v2, v3

    .line 786
    :goto_0
    invoke-virtual {v15, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 788
    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_2

    move/from16 v6, p2

    move/from16 v5, p3

    goto :goto_1

    :cond_2
    move/from16 v5, p2

    move/from16 v6, p3

    .line 795
    :goto_1
    iget-object v2, v8, Lcn/nubia/camera/ah/a;->x:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v3, v9

    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/ah/a;->a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;

    move-result-object v21

    .line 802
    new-instance v0, Lcn/nubia/k/b/c;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ah/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 803
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v2

    iget-object v12, v8, Lcn/nubia/camera/ah/a;->w:Lcn/nubia/k/a/a;

    const/16 v17, 0x5a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v8, Lcn/nubia/camera/ah/a;->x:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 804
    invoke-direct {v8, v9, v10}, Lcn/nubia/camera/ah/a;->a(J)Landroid/util/SparseArray;

    move-result-object v20

    new-instance v3, Lcn/nubia/camera/ah/a$2;

    invoke-direct {v3, v8}, Lcn/nubia/camera/ah/a$2;-><init>(Lcn/nubia/camera/ah/a;)V

    new-instance v4, Lcn/nubia/m/b;

    .line 809
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Lcn/nubia/m/b;-><init>(II)V

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object/from16 v13, p1

    move-object v1, v14

    move/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-direct/range {v9 .. v23}, Lcn/nubia/k/b/c;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;ILjava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/content/ContentValues;Lcn/nubia/k/b/d;Lcn/nubia/m/b;)V

    .line 810
    iget-object v2, v8, Lcn/nubia/camera/ah/a;->w:Lcn/nubia/k/a/a;

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    .line 811
    invoke-virtual {v2, v0, v3}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    move-result-object v0

    .line 812
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

    .line 814
    :cond_3
    iput-boolean v6, v8, Lcn/nubia/camera/ah/a;->A:Z

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/camera/ah/a;->E:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    return-object p0
.end method

.method private b(I)V
    .locals 1

    .line 375
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->F:Lcom/android/preference/IconListPreference;

    invoke-virtual {p1}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 377
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->F:Lcom/android/preference/IconListPreference;

    invoke-virtual {p1}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 378
    iget v0, p0, Lcn/nubia/camera/ah/a;->u:I

    if-ne v0, p1, :cond_0

    return-void

    .line 381
    :cond_0
    iput p1, p0, Lcn/nubia/camera/ah/a;->u:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 384
    iput p1, p0, Lcn/nubia/camera/ah/a;->u:I

    .line 387
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wq changeTypeByGridView : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/ah/a;->u:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiExposureFragment"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget p1, p0, Lcn/nubia/camera/ah/a;->u:I

    invoke-direct {p0, p1}, Lcn/nubia/camera/ah/a;->c(I)V

    .line 389
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->J()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/ah/a;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/camera/ah/a;->c(I)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/ah/a;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcn/nubia/camera/ah/a;->B:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/ah/a;)I
    .locals 0

    .line 85
    iget p0, p0, Lcn/nubia/camera/ah/a;->u:I

    return p0
.end method

.method private c(I)V
    .locals 2

    .line 494
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/ah/a$11;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/ah/a$11;-><init>(Lcn/nubia/camera/ah/a;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/ah/a;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/camera/ah/a;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 654
    iput-boolean p1, p0, Lcn/nubia/camera/ah/a;->B:Z

    const-string v0, "ui_change_multiexposure"

    if-eqz p1, :cond_0

    .line 656
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ah/a;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 658
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ah/a;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/ah/a;)Landroid/widget/LinearLayout;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/camera/ah/a;->c:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static d()Lcn/nubia/camera/ah/a;
    .locals 2

    .line 134
    new-instance v0, Lcn/nubia/camera/ah/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/ah/a;-><init>(I)V

    return-object v0
.end method

.method private d(Landroid/view/View;)V
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==wq== initViews: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiExposureFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0, p1}, Lcn/nubia/camera/ah/a;->h(Landroid/view/View;)V

    .line 168
    invoke-direct {p0, p1}, Lcn/nubia/camera/ah/a;->i(Landroid/view/View;)V

    .line 169
    invoke-direct {p0, p1}, Lcn/nubia/camera/ah/a;->f(Landroid/view/View;)V

    .line 170
    invoke-direct {p0, p1}, Lcn/nubia/camera/ah/a;->g(Landroid/view/View;)V

    .line 171
    invoke-direct {p0, p1}, Lcn/nubia/camera/ah/a;->e(Landroid/view/View;)V

    const v0, 0x7f090219

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/ah/a;->t:Landroid/view/View;

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/ah/a;)I
    .locals 0

    .line 85
    iget p0, p0, Lcn/nubia/camera/ah/a;->z:I

    return p0
.end method

.method private e(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f0902ac

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    iput-object v0, p0, Lcn/nubia/camera/ah/a;->E:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    .line 196
    new-instance v6, Lcn/nubia/camera/ah/a$1;

    invoke-direct {v6, p0}, Lcn/nubia/camera/ah/a$1;-><init>(Lcn/nubia/camera/ah/a;)V

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/16 v3, 0x32

    const v4, 0x7f0f0156

    const v5, 0x7f0f0155

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->a(IIIIILandroid/widget/SeekBar$OnSeekBarChangeListener;Z)V

    .line 216
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->E:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    new-instance v0, Lcn/nubia/camera/ah/a$7;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ah/a$7;-><init>(Lcn/nubia/camera/ah/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->setDrawerListener(Lcom/android/common/ui/f$a;)V

    return-void
.end method

.method private e(Z)V
    .locals 2

    .line 1030
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1031
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :cond_0
    sget-object p1, Lcn/nubia/camera/af/a;->g:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/camera/ba/f;->a(ILcn/nubia/camera/af/a;)V

    goto :goto_0

    .line 1033
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/af/a;->g:Lcn/nubia/camera/af/a;

    invoke-virtual {p1, v1, v0}, Lcn/nubia/camera/ba/f;->a(ILcn/nubia/camera/af/a;)V

    :goto_0
    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/ah/a;)Landroid/widget/ImageView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/camera/ah/a;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method private f(Landroid/view/View;)V
    .locals 3

    .line 236
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_camera_multi_exposure"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    iput-object v0, p0, Lcn/nubia/camera/ah/a;->F:Lcom/android/preference/IconListPreference;

    const v0, 0x7f0901b6

    .line 241
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    iput-object p1, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    .line 243
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setHandleImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    iget-object v0, p0, Lcn/nubia/camera/ah/a;->F:Lcom/android/preference/IconListPreference;

    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->a(Lcom/android/preference/IconListPreference;Landroid/content/Context;)V

    .line 245
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    new-instance v0, Lcn/nubia/camera/ah/a$8;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ah/a$8;-><init>(Lcn/nubia/camera/ah/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setItemClickListener(Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$a;)V

    .line 252
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-static {p1, v0}, Lcn/nubia/camera/ba/a;->a(Landroid/widget/RelativeLayout;Lcn/nubia/camera/a/a;)V

    .line 254
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    new-instance v0, Lcn/nubia/camera/ah/a$9;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ah/a$9;-><init>(Lcn/nubia/camera/ah/a;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setDrawerListener(Lcom/android/common/ui/f$a;)V

    .line 272
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->d()Z

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/ah/a;->e(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/ah/a;)Landroid/widget/ImageView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/camera/ah/a;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method private g(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090060

    .line 278
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/camera/ah/a;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f09005c

    .line 280
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/ah/a;->i:Landroid/widget/ImageView;

    const v0, 0x7f09005d

    .line 282
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/ah/a;->j:Landroid/widget/ImageView;

    const v0, 0x7f09005e

    .line 284
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/ah/a;->k:Landroid/widget/ImageView;

    const v0, 0x7f09005f

    .line 286
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/ah/a;->l:Landroid/widget/ImageView;

    const v0, 0x7f090063

    .line 288
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/ah/a;->b:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/ah/a;)Landroid/widget/ImageView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/camera/ah/a;->k:Landroid/widget/ImageView;

    return-object p0
.end method

.method private h(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090064

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/camera/ah/a;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f09005b

    .line 296
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/camera/ah/a;->n:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/ah/a;)Landroid/widget/ImageView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/camera/ah/a;->l:Landroid/widget/ImageView;

    return-object p0
.end method

.method private i(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090211

    .line 301
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/ah/a;->o:Landroid/widget/RelativeLayout;

    const v0, 0x7f090215

    .line 303
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iput-object v0, p0, Lcn/nubia/camera/ah/a;->p:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const v0, 0x7f090216

    .line 306
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object v0, p0, Lcn/nubia/camera/ah/a;->q:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const v0, 0x7f090212

    .line 309
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/ah/a;->r:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f090213

    .line 311
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateImageView;

    iput-object p1, p0, Lcn/nubia/camera/ah/a;->s:Lcom/android/common/ui/RotateImageView;

    .line 312
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/ah/a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/ah/a;)Landroid/widget/TextView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/camera/ah/a;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method private j()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->E:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->E:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->u()Lcom/android/preference/c;

    move-result-object v2

    const-string v3, "multi_exposure_parameter"

    const/16 v4, 0x32

    invoke-virtual {v2, v3, v4}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->setProgress(I)V

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->E:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->a(ZZ)V

    .line 182
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->i()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->i()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "alphaSeekbar"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/ah/a;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcn/nubia/camera/ah/a;->B:Z

    return p0
.end method

.method static synthetic l(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/ah/e;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/camera/ah/a;->y:Lcn/nubia/camera/ah/e;

    return-object p0
.end method

.method private l()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->o:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 317
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic m(Lcn/nubia/camera/ah/a;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->J()V

    return-void
.end method

.method private m()Z
    .locals 2

    .line 322
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private n()V
    .locals 5

    const-string v0, "MultiExposureFragment"

    const-string v1, "showMultiExposureBottomBar"

    .line 327
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->o:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 334
    :cond_0
    iget v0, p0, Lcn/nubia/camera/ah/a;->u:I

    const/4 v2, 0x2

    const/16 v3, 0xd

    const/4 v4, -0x2

    if-eq v0, v2, :cond_1

    .line 335
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->r:Lcom/android/common/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->s:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 337
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 340
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 341
    iget-object v1, p0, Lcn/nubia/camera/ah/a;->p:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 343
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->m()Z

    move-result v0

    const v2, 0x7f070152

    if-nez v0, :cond_2

    .line 344
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 346
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 347
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 349
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 351
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 352
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 354
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/ah/a;->r:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v2, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 355
    iget-object v2, p0, Lcn/nubia/camera/ah/a;->r:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v2, v1}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    .line 356
    iget-object v2, p0, Lcn/nubia/camera/ah/a;->s:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v2, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 357
    iget-object v2, p0, Lcn/nubia/camera/ah/a;->s:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v2, v1}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    .line 358
    iget-object v1, p0, Lcn/nubia/camera/ah/a;->p:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method static synthetic n(Lcn/nubia/camera/ah/a;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->L()V

    return-void
.end method

.method private o()V
    .locals 2

    .line 439
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->q()V

    .line 440
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->s()V

    .line 441
    iget v0, p0, Lcn/nubia/camera/ah/a;->u:I

    invoke-direct {p0, v0}, Lcn/nubia/camera/ah/a;->c(I)V

    .line 442
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->p()V

    .line 444
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->r()V

    .line 445
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->l()V

    .line 446
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->a(I)V

    return-void
.end method

.method static synthetic o(Lcn/nubia/camera/ah/a;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcn/nubia/camera/ah/a;->A:Z

    return p0
.end method

.method static synthetic p(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private p()V
    .locals 2

    .line 450
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/ah/a$10;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ah/a$10;-><init>(Lcn/nubia/camera/ah/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private q()V
    .locals 3

    .line 488
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->u()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f01f9

    invoke-virtual {p0, v1}, Lcn/nubia/camera/ah/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_multi_exposure"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ah/a;->u:I

    .line 490
    invoke-direct {p0, v0}, Lcn/nubia/camera/ah/a;->c(I)V

    return-void
.end method

.method static synthetic q(Lcn/nubia/camera/ah/a;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->p()V

    return-void
.end method

.method static synthetic r(Lcn/nubia/camera/ah/a;)Landroid/widget/LinearLayout;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/camera/ah/a;->m:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private r()V
    .locals 1

    .line 551
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->p:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setOnShutterButtonListener(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    return-void
.end method

.method static synthetic s(Lcn/nubia/camera/ah/a;)Lcom/android/common/ui/RotateImageView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/camera/ah/a;->r:Lcom/android/common/ui/RotateImageView;

    return-object p0
.end method

.method private s()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->r:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcn/nubia/camera/ah/a$12;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ah/a$12;-><init>(Lcn/nubia/camera/ah/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->s:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcn/nubia/camera/ah/a$13;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ah/a$13;-><init>(Lcn/nubia/camera/ah/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic t(Lcn/nubia/camera/ah/a;)Lcom/android/common/ui/RotateImageView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/camera/ah/a;->s:Lcom/android/common/ui/RotateImageView;

    return-object p0
.end method

.method static synthetic u(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    return-object p0
.end method


# virtual methods
.method public a(FZ)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->y:Lcn/nubia/camera/ah/e;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/ah/e;->a(FZ)V

    :cond_0
    return-void
.end method

.method protected a(IZ)V
    .locals 1

    .line 363
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(IZ)V

    .line 364
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/ah/g;Lcn/nubia/k/a/a;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcn/nubia/camera/ah/a;->v:Lcn/nubia/camera/ah/g;

    .line 547
    iput-object p2, p0, Lcn/nubia/camera/ah/a;->w:Lcn/nubia/k/a/a;

    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    .line 992
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->t:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int/2addr p4, p2

    .line 993
    iput p4, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr p5, p3

    .line 994
    iput p5, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 995
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 996
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 997
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->t:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1000
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->C:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    .line 1001
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    .line 1003
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f0701e5

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    if-le p3, p2, :cond_0

    .line 1004
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1005
    iput p5, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1006
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1039
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->f()Z

    move-result p1

    return p1

    .line 1042
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->E:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1043
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->E:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->f()Z

    move-result p1

    return p1

    .line 1045
    :cond_1
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 4

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterButtonClick+mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/ah/a;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTouchScreenDisabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/ah/a;->B:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mTakePictureNum ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/ah/a;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiExposureFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/camera/ah/a;->B:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 898
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->v:Lcn/nubia/camera/ah/g;

    invoke-virtual {v0}, Lcn/nubia/camera/ah/g;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 899
    iget v2, p0, Lcn/nubia/camera/ah/a;->z:I

    if-nez v2, :cond_2

    const-string v2, "new render"

    .line 900
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v2, p0, Lcn/nubia/camera/ah/a;->y:Lcn/nubia/camera/ah/e;

    if-nez v2, :cond_1

    .line 902
    new-instance v2, Lcn/nubia/camera/ah/e;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 903
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcn/nubia/camera/ah/e;-><init>(II)V

    iput-object v2, p0, Lcn/nubia/camera/ah/a;->y:Lcn/nubia/camera/ah/e;

    const-string v0, "addRenderer"

    .line 904
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ah/a;->y:Lcn/nubia/camera/ah/e;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 909
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->y:Lcn/nubia/camera/ah/e;

    new-instance v1, Lcn/nubia/camera/ah/a$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ah/a$3;-><init>(Lcn/nubia/camera/ah/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ah/e;->a(Lcn/nubia/camera/ah/a$b;)V

    .line 940
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->y:Lcn/nubia/camera/ah/e;

    new-instance v1, Lcn/nubia/camera/ah/a$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ah/a$4;-><init>(Lcn/nubia/camera/ah/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ah/e;->a(Lcom/android/common/c/f$b;)V

    .line 956
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->y:Lcn/nubia/camera/ah/e;

    iget v1, p0, Lcn/nubia/camera/ah/a;->u:I

    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/ah/a;->v:Lcn/nubia/camera/ah/g;

    invoke-virtual {v3}, Lcn/nubia/camera/ah/g;->e()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/ah/e;->a(ILjava/lang/String;Landroid/graphics/SurfaceTexture;)V

    .line 959
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->e()V

    .line 960
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->v:Lcn/nubia/camera/ah/g;

    new-instance v1, Lcn/nubia/camera/ah/h;

    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/ah/h;-><init>(Landroid/content/Context;Lcn/nubia/j/a;)V

    new-instance v2, Lcn/nubia/camera/ah/a$a;

    invoke-direct {v2, p0}, Lcn/nubia/camera/ah/a$a;-><init>(Lcn/nubia/camera/ah/a;)V

    new-instance v3, Lcn/nubia/camera/ah/a$5;

    invoke-direct {v3, p0}, Lcn/nubia/camera/ah/a$5;-><init>(Lcn/nubia/camera/ah/a;)V

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/ah/g;->a(Lcn/nubia/camera/k/q;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Lcn/nubia/camera/k/u;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 977
    iget v0, p0, Lcn/nubia/camera/ah/a;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/camera/ah/a;->z:I

    .line 978
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    :cond_3
    return-void

    .line 895
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 684
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->q:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 685
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->n:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 687
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ah/a;->q:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    :goto_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1022
    iget-boolean v0, p0, Lcn/nubia/camera/ah/a;->B:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1026
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d_()Z
    .locals 3

    .line 725
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "MultiExposureFragment"

    const-string v2, "ignore performShutterButtonClick because fragment is pause"

    .line 726
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 729
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->p:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 730
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->p:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->performClick()Z

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public e()V
    .locals 2

    .line 589
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->n()V

    const/4 v0, 0x1

    .line 590
    invoke-direct {p0, v0}, Lcn/nubia/camera/ah/a;->c(Z)V

    .line 591
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->f()Z

    .line 592
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setVisibility(I)V

    .line 593
    iget v0, p0, Lcn/nubia/camera/ah/a;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 594
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->j()V

    :cond_0
    const-string v0, "ui_change_multiexposure"

    .line 596
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ah/a;->d(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/ah/a;->e(Z)V

    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 0

    .line 677
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->e(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->a()V

    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 3

    .line 664
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->f(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

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

.method public i()Lcn/nubia/camera/zoom/arc/a;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    return-object v0
.end method

.method protected i_()V
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/ah/a;->f(Landroid/view/View;)V

    return-void
.end method

.method public k()Z
    .locals 3

    const-string v0, "MultiExposureFragment"

    const-string v1, "onBackPressed"

    .line 640
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget v0, p0, Lcn/nubia/camera/ah/a;->z:I

    if-lez v0, :cond_0

    .line 642
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->y:Lcn/nubia/camera/ah/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ah/e;->a(Z)V

    .line 643
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->y:Lcn/nubia/camera/ah/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/camera/ah/e;->a(Lcn/nubia/camera/ah/a$b;)V

    .line 644
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->y:Lcn/nubia/camera/ah/e;

    invoke-virtual {v0}, Lcn/nubia/camera/ah/e;->h()V

    .line 645
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->y:Lcn/nubia/camera/ah/e;

    invoke-virtual {v0}, Lcn/nubia/camera/ah/e;->a()V

    .line 646
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->J()V

    .line 647
    invoke-virtual {p0}, Lcn/nubia/camera/ah/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return v1

    .line 650
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 721
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 394
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onCreate(Landroid/os/Bundle;)V

    .line 395
    iget-boolean p1, p0, Lcn/nubia/camera/ah/a;->d:Z

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 141
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 142
    iget-boolean p3, p0, Lcn/nubia/camera/ah/a;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c0021

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 146
    invoke-direct {p0, p1}, Lcn/nubia/camera/ah/a;->d(Landroid/view/View;)V

    .line 147
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->K()V

    const p2, 0x7f090062

    .line 148
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcn/nubia/camera/ah/a;->C:Landroid/widget/RelativeLayout;

    .line 149
    invoke-virtual {p0, p2}, Lcn/nubia/camera/ah/a;->b(Landroid/view/View;)V

    .line 150
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p0, p3, p3, p3, p2}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/ah/a;->D:Lcn/nubia/camera/q/c;

    .line 151
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->M()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 400
    iget-boolean v0, p0, Lcn/nubia/camera/ah/a;->d:Z

    if-eqz v0, :cond_0

    .line 401
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroy()V

    return-void

    .line 404
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 157
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 158
    iget-boolean v0, p0, Lcn/nubia/camera/ah/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->D:Lcn/nubia/camera/q/c;

    invoke-static {p0, v0}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V

    .line 162
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->N()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 409
    iget-boolean v0, p0, Lcn/nubia/camera/ah/a;->d:Z

    if-eqz v0, :cond_0

    .line 410
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->y:Lcn/nubia/camera/ah/e;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 414
    invoke-virtual {v0, v1}, Lcn/nubia/camera/ah/e;->a(Lcn/nubia/camera/ah/a$b;)V

    .line 415
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->y:Lcn/nubia/camera/ah/e;

    invoke-virtual {v0}, Lcn/nubia/camera/ah/e;->h()V

    .line 416
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->y:Lcn/nubia/camera/ah/e;

    invoke-virtual {v0}, Lcn/nubia/camera/ah/e;->d()V

    .line 417
    iput-object v1, p0, Lcn/nubia/camera/ah/a;->y:Lcn/nubia/camera/ah/e;

    .line 419
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->v:Lcn/nubia/camera/ah/g;

    if-eqz v0, :cond_2

    .line 420
    invoke-virtual {v0}, Lcn/nubia/camera/ah/g;->H()V

    .line 422
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->J()V

    .line 423
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 428
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 429
    iget-boolean v0, p0, Lcn/nubia/camera/ah/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 430
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->o()V

    .line 432
    invoke-direct {p0}, Lcn/nubia/camera/ah/a;->J()V

    .line 433
    iget-object v0, p0, Lcn/nubia/camera/ah/a;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->a()V

    :cond_1
    return-void
.end method
