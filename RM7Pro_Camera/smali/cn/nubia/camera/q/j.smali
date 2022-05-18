.class public Lcn/nubia/camera/q/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/q/j$a;,
        Lcn/nubia/camera/q/j$b;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/k/ah;

.field private c:Lcn/nubia/camera/zoom/c;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/camera/q/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/android/setting/e;

.field private f:Lcn/nubia/camera/q/j$a;

.field private g:[Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/Runnable;

.field private l:[Ljava/lang/String;

.field private m:[Ljava/lang/String;

.field private n:Ljava/lang/Runnable;

.field private o:Lcn/nubia/camera/q/p;

.field private p:Lcn/nubia/m/c$b;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V
    .locals 18

    move-object/from16 v0, p0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 65
    iput-object v1, v0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 66
    iput-object v1, v0, Lcn/nubia/camera/q/j;->b:Lcn/nubia/camera/k/ah;

    .line 67
    iput-object v1, v0, Lcn/nubia/camera/q/j;->c:Lcn/nubia/camera/zoom/c;

    .line 68
    iput-object v1, v0, Lcn/nubia/camera/q/j;->d:Ljava/util/List;

    .line 69
    iput-object v1, v0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    .line 70
    iput-object v1, v0, Lcn/nubia/camera/q/j;->f:Lcn/nubia/camera/q/j$a;

    .line 71
    iput-object v1, v0, Lcn/nubia/camera/q/j;->g:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 72
    iput-boolean v2, v0, Lcn/nubia/camera/q/j;->h:Z

    .line 73
    iput-object v1, v0, Lcn/nubia/camera/q/j;->i:Ljava/lang/String;

    const/4 v2, 0x1

    .line 74
    iput-boolean v2, v0, Lcn/nubia/camera/q/j;->j:Z

    .line 132
    new-instance v2, Lcn/nubia/camera/q/j$1;

    invoke-direct {v2, v0}, Lcn/nubia/camera/q/j$1;-><init>(Lcn/nubia/camera/q/j;)V

    iput-object v2, v0, Lcn/nubia/camera/q/j;->k:Ljava/lang/Runnable;

    const-string v3, "more_setting_common"

    const-string v4, "pref_camera_grid_key"

    const-string v5, "pref_camera_gradienter_key"

    const-string v6, "pref_capture_focus_key"

    const-string v7, "pref_camera_shutter_sound_key"

    const-string v8, "pref_peaking_focus_key"

    const-string v9, "pref_key_capture_camera"

    const-string v10, "pref_intelligent_power_saving"

    const-string v11, "pref_water_mark_time_key"

    const-string v12, "pref_water_mark_logo_key"

    const-string v13, "pref_water_mark_custom_key"

    const-string v14, "pref_storage_path"

    const-string v15, "pref_camera_wideangle_correction_key"

    const-string v16, "pref_camera_recordlocation_key"

    const-string v17, "pref_picture_artist_info"

    .line 448
    filled-new-array/range {v3 .. v17}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/camera/q/j;->l:[Ljava/lang/String;

    const-string v2, "pref_multi_focus_key"

    const-string v3, "pref_histogram_bars_key"

    const-string v4, "pref_key_capture_camera"

    const-string v5, "pref_intelligent_power_saving"

    const-string v6, "pref_picture_artist_info"

    .line 594
    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/camera/q/j;->m:[Ljava/lang/String;

    .line 875
    new-instance v2, Lcn/nubia/camera/q/j$3;

    invoke-direct {v2, v0}, Lcn/nubia/camera/q/j$3;-><init>(Lcn/nubia/camera/q/j;)V

    iput-object v2, v0, Lcn/nubia/camera/q/j;->n:Ljava/lang/Runnable;

    .line 957
    iput-object v1, v0, Lcn/nubia/camera/q/j;->o:Lcn/nubia/camera/q/p;

    .line 958
    new-instance v2, Lcn/nubia/camera/q/j$7;

    invoke-direct {v2, v0}, Lcn/nubia/camera/q/j$7;-><init>(Lcn/nubia/camera/q/j;)V

    iput-object v2, v0, Lcn/nubia/camera/q/j;->p:Lcn/nubia/m/c$b;

    move-object/from16 v2, p1

    .line 77
    iput-object v2, v0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    move-object/from16 v2, p2

    .line 78
    iput-object v2, v0, Lcn/nubia/camera/q/j;->b:Lcn/nubia/camera/k/ah;

    .line 79
    new-instance v2, Lcn/nubia/camera/q/j$a;

    invoke-direct {v2, v0, v1}, Lcn/nubia/camera/q/j$a;-><init>(Lcn/nubia/camera/q/j;Lcn/nubia/camera/q/j$1;)V

    iput-object v2, v0, Lcn/nubia/camera/q/j;->f:Lcn/nubia/camera/q/j$a;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/nubia/camera/q/j;->d:Ljava/util/List;

    .line 81
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/q/j;->i()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/q/j;Lcn/nubia/camera/q/p;)Lcn/nubia/camera/q/p;
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/nubia/camera/q/j;->o:Lcn/nubia/camera/q/p;

    return-object p1
.end method

.method private a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Lcom/android/common/c/e;)V
    .locals 4

    .line 890
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->d()Lcn/nubia/camera/af/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 893
    :cond_0
    invoke-virtual {p2}, Lcn/nubia/camera/k/h;->m()V

    .line 895
    invoke-virtual {p3}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object p3

    new-instance v0, Lcn/nubia/camera/q/j$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/q/j$4;-><init>(Lcn/nubia/camera/q/j;)V

    invoke-virtual {p3, v0}, Lcom/android/common/c/a;->a(Lcom/android/common/c/a$a;)V

    .line 905
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->d()Lcn/nubia/camera/af/b;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/af/b;)V

    .line 906
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object p3

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/af/b;)V

    const/4 p3, 0x0

    .line 907
    invoke-virtual {p1, p3}, Lcn/nubia/camera/ad/a;->b(Lcn/nubia/camera/af/b;)V

    .line 909
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object p3

    new-instance v0, Lcn/nubia/camera/q/j$5;

    invoke-direct {v0, p0}, Lcn/nubia/camera/q/j$5;-><init>(Lcn/nubia/camera/q/j;)V

    invoke-virtual {p3, v0}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/aq/d;)V

    .line 918
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object p3

    .line 919
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    .line 920
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    .line 921
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 918
    :goto_1
    invoke-virtual {p3, v0, v1, v2, v3}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;ZZ)V

    .line 924
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object p1

    new-instance p3, Lcn/nubia/camera/q/j$6;

    invoke-direct {p3, p0}, Lcn/nubia/camera/q/j$6;-><init>(Lcn/nubia/camera/q/j;)V

    invoke-virtual {p2, p1, p3}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/k/h$a;)V

    return-void
.end method

.method public static a(Lcn/nubia/camera/af/a;)Z
    .locals 1

    .line 545
    sget-object v0, Lcn/nubia/camera/af/a;->v:Lcn/nubia/camera/af/a;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->F:Lcn/nubia/camera/af/a;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->O:Lcn/nubia/camera/af/a;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->Q:Lcn/nubia/camera/af/a;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->aa:Lcn/nubia/camera/af/a;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->c:Lcn/nubia/camera/af/a;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->g:Lcn/nubia/camera/af/a;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->h:Lcn/nubia/camera/af/a;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->K:Lcn/nubia/camera/af/a;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->M:Lcn/nubia/camera/af/a;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 606
    iget-object p1, p0, Lcn/nubia/camera/q/j;->m:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 607
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public static a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 564
    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 565
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 569
    array-length p0, p1

    :goto_1
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    .line 570
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 573
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 574
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/q/j;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/camera/q/j;->j()V

    return-void
.end method

.method private b(Lcn/nubia/camera/af/a;)Z
    .locals 1

    .line 467
    sget-object v0, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->j:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->k:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->J:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->f:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->Q:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->T:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->S:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->U:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->V:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->X:Lcn/nubia/camera/af/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_recordlocation_key"

    .line 617
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_key_capture_camera"

    .line 619
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_mirror_mode_key"

    .line 621
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_water_mark_logo_key"

    .line 622
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_water_mark_time_key"

    .line 623
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_facedetection_key"

    .line 627
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_intelligent_noise_reduction_key"

    .line 628
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_intelligent_power_saving"

    .line 629
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_normal_face_pretty_key"

    .line 630
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_refocus_after_capture_key"

    .line 631
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_bokeh_level_adjustable"

    .line 632
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_multi_focus_key"

    .line 633
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_grid_key"

    .line 634
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_shutter_sound_key"

    .line 635
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_gradienter_key"

    .line 636
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_capture_focus_key"

    .line 637
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_capture_focus_up_key"

    .line 638
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_front_smileshoot_key"

    .line 639
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_nubia_debug_mode_key"

    .line 640
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_wideangle_correction_key"

    .line 641
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_key_save_original_video_key"

    .line 642
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_wideportrait_correction_key"

    .line 643
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_peaking_focus_key"

    .line 644
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private c(Z)V
    .locals 3

    .line 688
    iget-object v0, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 689
    invoke-virtual {v0}, Lcom/android/setting/e;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    if-nez p1, :cond_0

    const/high16 p1, 0x7f020000

    const v2, 0x7f020001

    .line 691
    invoke-virtual {v0, p1, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 693
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 694
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 695
    iget-object p1, p0, Lcn/nubia/camera/q/j;->d:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 696
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/j$b;

    if-eqz v0, :cond_1

    .line 698
    invoke-interface {v0, v1}, Lcn/nubia/camera/q/j$b;->b(Z)V

    goto :goto_0

    .line 702
    :cond_2
    iput-boolean v1, p0, Lcn/nubia/camera/q/j;->h:Z

    :cond_3
    const/4 p1, 0x1

    .line 704
    iput-boolean p1, p0, Lcn/nubia/camera/q/j;->j:Z

    .line 705
    iget-object p1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_back_video_quality_key"

    .line 659
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_front_video_quality_key"

    .line 660
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_storage_path"

    .line 661
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_encoder_key"

    .line 662
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_moresetting_picturesize_key"

    .line 663
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_slomo_fps_key"

    .line 664
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_histogram_bars_key"

    .line 665
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/q/j;)[Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/camera/q/j;->g:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/q/j;)Lcom/android/setting/e;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_picture_artist_info"

    .line 669
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_water_mark_custom_key"

    .line 670
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic e(Lcn/nubia/camera/q/j;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/camera/q/j;->d:Ljava/util/List;

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "more_setting_special"

    .line 680
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/q/j;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/camera/q/j;->l()V

    return-void
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "more_setting_common"

    .line 684
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/zoom/c;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/camera/q/j;->c:Lcn/nubia/camera/zoom/c;

    return-object p0
.end method

.method private g(Ljava/lang/String;)Z
    .locals 6

    .line 189
    iget-object v0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    const-string v1, "pref_camera_grid_key"

    .line 191
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "pref_camera_facedetection_key"

    .line 213
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->v:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->I:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->O:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_2

    :cond_1
    return v2

    :cond_2
    const-string v1, "pref_camera_recordlocation_key"

    .line 221
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    const-string v1, "pref_camera_shutter_sound_key"

    .line 223
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    const-string v1, "pref_camera_gradienter_key"

    .line 225
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcn/nubia/camera/af/a;->f:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_5

    return v2

    :cond_5
    const-string v1, "pref_capture_focus_key"

    .line 231
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 242
    iget-object p1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-static {p1}, Lcn/nubia/camera/three_a/a;->a(Lcn/nubia/camera/ad/a;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    return v2

    :cond_7
    const-string v1, "pref_camera_interval_switch_key"

    .line 246
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_9

    sget-object v1, Lcn/nubia/camera/af/a;->d:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_9

    sget-object v1, Lcn/nubia/camera/af/a;->c:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_8

    iget-object v1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 250
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    iget-object v4, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 251
    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0f0228

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_electronic_aperture_key"

    .line 250
    invoke-virtual {v1, v5, v4}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "-1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    sget-object v1, Lcn/nubia/camera/af/a;->F:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_9

    sget-object v1, Lcn/nubia/camera/af/a;->A:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_9

    sget-object v1, Lcn/nubia/camera/af/a;->M:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_a

    :cond_9
    iget-object v1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 255
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->k()Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    const-string v1, "pref_water_mark_logo_key"

    .line 257
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 258
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/q/j;->b(Lcn/nubia/camera/af/a;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    const-string v1, "pref_camera_front_smileshoot_key"

    .line 260
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 261
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcn/nubia/camera/af/a;->v:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_c

    sget-object v1, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_c

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_d

    :cond_c
    return v2

    :cond_d
    const-string v1, "pref_peaking_focus_key"

    .line 266
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 267
    sget-object p1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-eq v0, p1, :cond_e

    sget-object p1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-eq v0, p1, :cond_e

    sget-object p1, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-eq v0, p1, :cond_e

    sget-object p1, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    if-eq v0, p1, :cond_e

    sget-object p1, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-eq v0, p1, :cond_e

    sget-object p1, Lcn/nubia/camera/af/a;->aa:Lcn/nubia/camera/af/a;

    if-eq v0, p1, :cond_e

    sget-object p1, Lcn/nubia/camera/af/a;->c:Lcn/nubia/camera/af/a;

    if-eq v0, p1, :cond_e

    sget-object p1, Lcn/nubia/camera/af/a;->i:Lcn/nubia/camera/af/a;

    if-eq v0, p1, :cond_e

    sget-object p1, Lcn/nubia/camera/af/a;->F:Lcn/nubia/camera/af/a;

    if-ne v0, p1, :cond_f

    :cond_e
    return v2

    :cond_f
    return v3
.end method

.method static synthetic h(Lcn/nubia/camera/q/j;)Ljava/lang/Runnable;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/camera/q/j;->n:Ljava/lang/Runnable;

    return-object p0
.end method

.method private h()[Ljava/lang/String;
    .locals 10

    .line 483
    iget-object v0, p0, Lcn/nubia/camera/q/j;->l:[Ljava/lang/String;

    .line 484
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_13

    aget-object v5, v0, v4

    const-string v6, "pref_storage_path"

    .line 486
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "MoreSetting"

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 487
    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/k/c/f;->g(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 488
    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/k/c/f;->f(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const-string v5, "Not support SD storage"

    .line 489
    invoke-static {v7, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    const-string v6, "pref_water_mark_logo_key"

    .line 490
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 491
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/camera/ak/a;->Z()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 492
    invoke-virtual {v8}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v8

    invoke-direct {p0, v8}, Lcn/nubia/camera/q/j;->b(Lcn/nubia/camera/af/a;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const-string v5, "Not support WATER_MARK_LOGO"

    .line 493
    invoke-static {v7, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_3
    const-string v8, "pref_water_mark_custom_key"

    .line 494
    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 495
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/camera/ak/a;->ab()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 497
    iget-object v7, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 498
    iget-object v7, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v7}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 499
    invoke-virtual {v8}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0f02ce

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 498
    invoke-virtual {v7, v6, v8}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "on"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1

    :cond_4
    move v6, v3

    :goto_1
    if-eqz v6, :cond_12

    .line 501
    iget-object v6, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 502
    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->k()Z

    move-result v6

    if-nez v6, :cond_12

    iget-object v6, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 503
    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v6

    invoke-direct {p0, v6}, Lcn/nubia/camera/q/j;->b(Lcn/nubia/camera/af/a;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 504
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    const-string v5, "Not support KEY_WATER_MARK_CUSTOM"

    .line 507
    invoke-static {v7, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    const-string v6, "pref_water_mark_time_key"

    .line 509
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 510
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ak/a;->aa()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 511
    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v6

    invoke-direct {p0, v6}, Lcn/nubia/camera/q/j;->b(Lcn/nubia/camera/af/a;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    const-string v5, "Not support WATER_MARK_TIME"

    .line 512
    invoke-static {v7, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    const-string v6, "pref_picture_artist_info"

    .line 513
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 514
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ak/a;->ac()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 515
    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->k()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    const-string v5, "Not support PICTURE_ARTIST_INFO"

    .line 516
    invoke-static {v7, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    const-string v6, "pref_key_capture_camera"

    .line 517
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 518
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ak/a;->Y()Z

    move-result v6

    if-nez v6, :cond_b

    const-string v5, "Not support KEY_CAPTURE_CAMERA"

    .line 519
    invoke-static {v7, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    const-string v6, "pref_camera_gradienter_key"

    .line 520
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 521
    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v6

    sget-object v8, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq v6, v8, :cond_c

    iget-object v6, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 522
    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v6

    sget-object v8, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-eq v6, v8, :cond_c

    iget-object v6, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 523
    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v6

    sget-object v8, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-eq v6, v8, :cond_c

    iget-object v6, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 524
    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v6

    sget-object v8, Lcn/nubia/camera/af/a;->f:Lcn/nubia/camera/af/a;

    if-ne v6, v8, :cond_d

    :cond_c
    const-string v5, "Not support KEY_CAMERA_GRADIENTER"

    .line 525
    invoke-static {v7, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_d
    const-string v6, "pref_capture_focus_key"

    .line 526
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 527
    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/af/a;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v5, "Not support KEY_CAPTURE_FOCUS"

    .line 528
    invoke-static {v7, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_e
    const-string v6, "pref_camera_wideangle_correction_key"

    .line 529
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 530
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v6

    if-nez v6, :cond_f

    .line 531
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_10

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/b/e;->m()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_10

    :cond_f
    const-string v5, "Not support KEY_CAMERA_WIDEANGLE_CORRECTION_SWITCH"

    .line 532
    invoke-static {v7, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_10
    const-string v6, "pref_peaking_focus_key"

    .line 533
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 534
    invoke-direct {p0, v6}, Lcn/nubia/camera/q/j;->g(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v5, "Not support KEY_PEAKING_FOCUS"

    .line 535
    invoke-static {v7, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 537
    :cond_11
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 540
    :cond_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 541
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/q/p;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/camera/q/j;->o:Lcn/nubia/camera/q/p;

    return-object p0
.end method

.method private i()V
    .locals 3

    .line 583
    iget-object v0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->r()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 584
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 587
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/q/j;->h()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/q/j;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/q/j;->g:[Ljava/lang/String;

    goto :goto_1

    .line 585
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/q/j;->h()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/q/j;->g:[Ljava/lang/String;

    .line 589
    :goto_1
    invoke-static {}, Lcn/nubia/camera/ba/a;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcn/nubia/camera/q/j;->g:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/camera/q/j;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/q/j;->g:[Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private j()V
    .locals 4

    .line 784
    iget-object v0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 785
    iget-object v1, p0, Lcn/nubia/camera/q/j;->g:[Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 786
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/q/j;->g:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 787
    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 790
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->Z()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "pref_water_mark_custom_key"

    .line 791
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 793
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 794
    iget-object v0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/PreferenceGroup;->c()V

    .line 795
    invoke-direct {p0}, Lcn/nubia/camera/q/j;->i()V

    .line 796
    iget-object v0, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    if-eqz v0, :cond_2

    .line 797
    invoke-virtual {v0}, Lcom/android/setting/e;->c()V

    .line 799
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/q/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/j$b;

    .line 800
    invoke-interface {v1}, Lcn/nubia/camera/q/j$b;->N()V

    goto :goto_1

    .line 802
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    if-eqz v0, :cond_4

    .line 803
    invoke-virtual {v0}, Lcom/android/setting/e;->d()V

    .line 805
    :cond_4
    invoke-direct {p0}, Lcn/nubia/camera/q/j;->l()V

    .line 806
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->Y()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 807
    iget-object v0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->H()V

    .line 810
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-static {v1}, Lcom/android/preference/RecordLocationPreference;->b(Landroid/content/SharedPreferences;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/e/a;->a(Z)V

    return-void
.end method

.method private k()Lcn/nubia/camera/af/b;
    .locals 8

    .line 836
    iget-object v0, p0, Lcn/nubia/camera/q/j;->b:Lcn/nubia/camera/k/ah;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 839
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    .line 840
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->ae()I

    move-result v1

    .line 841
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    sget-object v4, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq v2, v4, :cond_1

    goto/16 :goto_2

    .line 850
    :cond_1
    iget-object v2, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    sget-object v4, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 851
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 852
    iget-object v2, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 853
    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0f02bc

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_back_video_quality_key"

    .line 852
    invoke-virtual {v2, v5, v4}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ":"

    .line 854
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 856
    iget-object v5, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0f02c6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 857
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    if-eq v1, v5, :cond_4

    const v5, 0x7f0f02c4

    const/4 v6, 0x3

    if-ne v1, v6, :cond_3

    .line 858
    iget-object v7, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 859
    invoke-virtual {v7}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    if-ne v1, v6, :cond_6

    .line 865
    iget-object v1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 866
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/nubia/camera/q/j;->i:Ljava/lang/String;

    .line 867
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 868
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 860
    :cond_4
    :goto_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 861
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 863
    :cond_5
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 870
    :cond_6
    :goto_1
    new-instance v1, Lcn/nubia/camera/af/b;

    iget-object v2, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/af/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v3, v2, v4}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 842
    :cond_7
    :goto_2
    iget-object v0, p0, Lcn/nubia/camera/q/j;->c:Lcn/nubia/camera/zoom/c;

    if-eqz v0, :cond_8

    .line 843
    invoke-virtual {v0}, Lcn/nubia/camera/zoom/c;->b()V

    .line 844
    iget-object v0, p0, Lcn/nubia/camera/q/j;->c:Lcn/nubia/camera/zoom/c;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/c;->d()Lcn/nubia/camera/zoom/d;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/j;->c:Lcn/nubia/camera/zoom/c;

    invoke-virtual {v1}, Lcn/nubia/camera/zoom/c;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/d;->a(F)Lcn/nubia/camera/zoom/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/d$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "targetCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MoreSetting"

    invoke-static {v2, v1}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 847
    new-instance v1, Lcn/nubia/camera/af/b;

    iget-object v2, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/af/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v3, v2, v4}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 872
    :cond_8
    iget-object v0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    return-object v0

    .line 837
    :cond_9
    :goto_3
    iget-object v0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 3

    .line 937
    invoke-static {}, Lcn/nubia/m/c;->a()Lcn/nubia/m/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ak/a;->aD()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/camera/q/j;->p:Lcn/nubia/m/c$b;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcn/nubia/m/c;->b(Landroid/content/Context;Lcn/nubia/m/c$b;)V

    return-void
.end method

.method private m()V
    .locals 3

    .line 941
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    invoke-static {}, Lcn/nubia/m/c;->a()Lcn/nubia/m/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/q/j;->p:Lcn/nubia/m/c$b;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/m/c;->a(Landroid/content/Context;Lcn/nubia/m/c$b;)V

    :cond_0
    return-void
.end method

.method private n()Z
    .locals 2

    .line 947
    iget-object v0, p0, Lcn/nubia/camera/q/j;->o:Lcn/nubia/camera/q/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/q/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MoreSetting"

    const-string v1, "Waiting watermark write"

    .line 948
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    .line 951
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/j;->o:Lcn/nubia/camera/q/p;

    if-eqz v0, :cond_1

    .line 952
    invoke-virtual {v0}, Lcn/nubia/camera/q/p;->c()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcn/nubia/camera/q/j$b;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcn/nubia/camera/q/j;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/q/j;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/zoom/c;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcn/nubia/camera/q/j;->c:Lcn/nubia/camera/zoom/c;

    return-void
.end method

.method public a(Lcom/android/preference/PreferenceGroup;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcn/nubia/camera/q/j;->i()V

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1}, Lcom/android/setting/e;->a(Lcom/android/preference/PreferenceGroup;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 4

    const-string v0, "MoreSetting"

    const-string v1, "showMoreSettingsFragment"

    .line 139
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcn/nubia/camera/q/j;->k:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 141
    iget-object v0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "more_settings"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/setting/e;

    iput-object v0, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    const v2, 0x7f020003

    const v3, 0x7f020002

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Lcom/android/setting/e;->a()Lcom/android/setting/e;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 145
    invoke-virtual {v0, v3, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    const v2, 0x7f09020a

    .line 146
    iget-object v3, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 147
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {v0}, Lcom/android/setting/e;->c()V

    .line 150
    iget-object v0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v3, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 152
    iget-object v1, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 153
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 155
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    invoke-virtual {v0, p1}, Lcom/android/setting/e;->a(Z)V

    .line 156
    iget-object p1, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    iget-object v0, p0, Lcn/nubia/camera/q/j;->f:Lcn/nubia/camera/q/j$a;

    invoke-virtual {p1, v0}, Lcom/android/setting/e;->a(Lcom/android/setting/e$b;)V

    .line 157
    iget-object p1, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    iget-object v0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/setting/e;->a(Lcom/android/preference/PreferenceGroup;)V

    .line 158
    iget-object p1, p0, Lcn/nubia/camera/q/j;->d:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/j$b;

    if-eqz v1, :cond_1

    .line 161
    invoke-interface {v1, v0}, Lcn/nubia/camera/q/j$b;->b(Z)V

    goto :goto_1

    .line 166
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/q/j;->b:Lcn/nubia/camera/k/ah;

    if-eqz p1, :cond_3

    .line 167
    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->t()V

    .line 170
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->l()V

    .line 171
    invoke-direct {p0}, Lcn/nubia/camera/q/j;->m()V

    .line 172
    iput-boolean v0, p0, Lcn/nubia/camera/q/j;->h:Z

    .line 173
    iget-object p1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 174
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f02bc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_back_video_quality_key"

    .line 173
    invoke-virtual {p1, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/q/j;->i:Ljava/lang/String;

    const/4 p1, 0x0

    .line 175
    iput-boolean p1, p0, Lcn/nubia/camera/q/j;->j:Z

    .line 176
    iget-object v1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    check-cast v1, Lcn/nubia/camera/a/a;

    invoke-virtual {v1, p1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 177
    iget-object p1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/m/a;->b(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 182
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/j;->g(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 774
    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/j;->b(Z)Z

    .line 775
    iget-object v0, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {v0}, Lcom/android/setting/e;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 777
    iget-object v1, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 778
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x0

    .line 779
    iput-object v0, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    :cond_0
    return-void
.end method

.method public b(Lcn/nubia/camera/q/j$b;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/q/j;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)Z
    .locals 10

    .line 715
    invoke-direct {p0}, Lcn/nubia/camera/q/j;->n()Z

    move-result v0

    const-string v1, "MoreSetting"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "Watermark is running"

    .line 716
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 719
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/j;->b:Lcn/nubia/camera/k/ah;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 723
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/setting/e;->isHidden()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    .line 724
    invoke-virtual {v0}, Lcom/android/setting/e;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_8

    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    .line 725
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->J()Z

    move-result v0

    if-nez v0, :cond_8

    .line 726
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/j;->c(Z)V

    .line 729
    invoke-direct {p0}, Lcn/nubia/camera/q/j;->k()Lcn/nubia/camera/af/b;

    move-result-object v0

    if-nez p1, :cond_5

    .line 732
    iget-object p1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 733
    iget-object p1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ad/a;->b(Lcn/nubia/camera/af/b;)V

    .line 734
    iget-object p1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    .line 735
    iget-object p1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/a/a;

    invoke-virtual {v3}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v3

    invoke-direct {p0, p1, v0, v3}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Lcom/android/common/c/e;)V

    goto :goto_0

    .line 737
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/q/j;->b:Lcn/nubia/camera/k/ah;

    if-eqz p1, :cond_4

    .line 738
    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->k()V

    .line 742
    :cond_4
    iget-object p1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    new-instance v3, Lcn/nubia/camera/q/j$2;

    invoke-direct {v3, p0}, Lcn/nubia/camera/q/j$2;-><init>(Lcn/nubia/camera/q/j;)V

    invoke-virtual {p1, v0, v3}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/k/h$a;)V

    .line 750
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->g()Lcn/nubia/camera/ac/b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v5

    invoke-interface {p1, v0, v3, v4, v5}, Lcn/nubia/camera/ac/b;->a(Landroid/app/Activity;Lcom/android/preference/c;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/k/x;

    move-result-object p1

    .line 751
    invoke-virtual {p1}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object p1

    .line 752
    invoke-virtual {p1}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object p1

    .line 753
    iget-object v0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v3, p1

    invoke-virtual {v0, v3}, Lcn/nubia/camera/an/a;->a(F)V

    goto :goto_1

    .line 756
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 757
    iget-object p1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ad/a;->b(Lcn/nubia/camera/af/b;)V

    .line 760
    :cond_6
    :goto_1
    iget-object p1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/e;->c:Lcn/nubia/camera/d/e;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/e;)V

    .line 761
    iget-object p1, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x64

    const-wide/16 v7, 0x32

    const-string v9, "setting"

    invoke-virtual/range {v3 .. v9}, Lcn/nubia/camera/ae/a;->a(IJJLjava/lang/String;)V

    .line 762
    iget-object p1, p0, Lcn/nubia/camera/q/j;->c:Lcn/nubia/camera/zoom/c;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcn/nubia/camera/zoom/c;->a()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 763
    iget-object p1, p0, Lcn/nubia/camera/q/j;->c:Lcn/nubia/camera/zoom/c;

    invoke-virtual {p1}, Lcn/nubia/camera/zoom/c;->a()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    const-string v0, "setting"

    invoke-virtual {p1, v2, v0}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_7
    const-string p1, "remove more settings fragment"

    .line 765
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_8
    return v2

    :cond_9
    :goto_2
    const-string p1, "StreamController is null!"

    .line 720
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public c()V
    .locals 2

    .line 814
    iget-object v0, p0, Lcn/nubia/camera/q/j;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "more_settings"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/setting/e;

    iput-object v0, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    if-eqz v0, :cond_0

    .line 816
    iget-object v1, p0, Lcn/nubia/camera/q/j;->f:Lcn/nubia/camera/q/j$a;

    invoke-virtual {v0, v1}, Lcom/android/setting/e;->a(Lcom/android/setting/e$b;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 821
    iget-object v0, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/setting/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 1

    .line 828
    invoke-direct {p0}, Lcn/nubia/camera/q/j;->i()V

    .line 829
    iget-object v0, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {v0}, Lcom/android/setting/e;->c()V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .line 933
    iget-boolean v0, p0, Lcn/nubia/camera/q/j;->j:Z

    return v0
.end method

.method public g()V
    .locals 1

    .line 992
    iget-object v0, p0, Lcn/nubia/camera/q/j;->e:Lcom/android/setting/e;

    if-eqz v0, :cond_0

    .line 993
    invoke-virtual {v0}, Lcom/android/setting/e;->f()V

    :cond_0
    return-void
.end method
