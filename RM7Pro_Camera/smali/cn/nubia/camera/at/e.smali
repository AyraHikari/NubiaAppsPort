.class public Lcn/nubia/camera/at/e;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/j/d;
.implements Lcn/nubia/camera/q/g;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# instance fields
.field private a:Lcn/nubia/camera/at/i;

.field private b:Lcn/nubia/camera/q/c;

.field private c:Lcn/nubia/camera/at/b;

.field private i:Lcn/nubia/camera/extendedUI/f;

.field private j:Lcn/nubia/camera/zoom/arc/a$a;

.field private final k:Ljava/lang/Object;

.field private l:Lcn/nubia/camera/au/b/a;

.field private m:Landroid/hardware/camera2/CaptureResult;

.field private n:J

.field private o:Lcn/nubia/camera/at/a;

.field private p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

.field private q:J

.field private r:I

.field private s:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 92
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcn/nubia/camera/at/e;->a:Lcn/nubia/camera/at/i;

    .line 75
    iput-object v0, p0, Lcn/nubia/camera/at/e;->b:Lcn/nubia/camera/q/c;

    .line 76
    iput-object v0, p0, Lcn/nubia/camera/at/e;->c:Lcn/nubia/camera/at/b;

    .line 77
    iput-object v0, p0, Lcn/nubia/camera/at/e;->i:Lcn/nubia/camera/extendedUI/f;

    .line 78
    iput-object v0, p0, Lcn/nubia/camera/at/e;->j:Lcn/nubia/camera/zoom/arc/a$a;

    .line 79
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/at/e;->k:Ljava/lang/Object;

    .line 81
    iput-object v0, p0, Lcn/nubia/camera/at/e;->l:Lcn/nubia/camera/au/b/a;

    .line 82
    iput-object v0, p0, Lcn/nubia/camera/at/e;->m:Landroid/hardware/camera2/CaptureResult;

    const-wide/16 v1, 0x0

    .line 83
    iput-wide v1, p0, Lcn/nubia/camera/at/e;->n:J

    .line 84
    iput-object v0, p0, Lcn/nubia/camera/at/e;->o:Lcn/nubia/camera/at/a;

    .line 86
    iput-object v0, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    .line 87
    iput-wide v1, p0, Lcn/nubia/camera/at/e;->q:J

    const/4 v1, 0x0

    .line 88
    iput v1, p0, Lcn/nubia/camera/at/e;->r:I

    .line 89
    iput-object v0, p0, Lcn/nubia/camera/at/e;->s:Landroid/widget/ImageView;

    return-void
.end method

.method public constructor <init>(ILcn/nubia/camera/at/i;)V
    .locals 2

    .line 97
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcn/nubia/camera/at/e;->a:Lcn/nubia/camera/at/i;

    .line 75
    iput-object p1, p0, Lcn/nubia/camera/at/e;->b:Lcn/nubia/camera/q/c;

    .line 76
    iput-object p1, p0, Lcn/nubia/camera/at/e;->c:Lcn/nubia/camera/at/b;

    .line 77
    iput-object p1, p0, Lcn/nubia/camera/at/e;->i:Lcn/nubia/camera/extendedUI/f;

    .line 78
    iput-object p1, p0, Lcn/nubia/camera/at/e;->j:Lcn/nubia/camera/zoom/arc/a$a;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/at/e;->k:Ljava/lang/Object;

    .line 81
    iput-object p1, p0, Lcn/nubia/camera/at/e;->l:Lcn/nubia/camera/au/b/a;

    .line 82
    iput-object p1, p0, Lcn/nubia/camera/at/e;->m:Landroid/hardware/camera2/CaptureResult;

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Lcn/nubia/camera/at/e;->n:J

    .line 84
    iput-object p1, p0, Lcn/nubia/camera/at/e;->o:Lcn/nubia/camera/at/a;

    .line 86
    iput-object p1, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    .line 87
    iput-wide v0, p0, Lcn/nubia/camera/at/e;->q:J

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcn/nubia/camera/at/e;->r:I

    .line 89
    iput-object p1, p0, Lcn/nubia/camera/at/e;->s:Landroid/widget/ImageView;

    .line 98
    iput-object p2, p0, Lcn/nubia/camera/at/e;->a:Lcn/nubia/camera/at/i;

    return-void
.end method

.method private J()V
    .locals 2

    .line 510
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->aa:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 511
    new-instance v0, Lcn/nubia/camera/at/e$10;

    invoke-direct {v0, p0}, Lcn/nubia/camera/at/e$10;-><init>(Lcn/nubia/camera/at/e;)V

    iput-object v0, p0, Lcn/nubia/camera/at/e;->j:Lcn/nubia/camera/zoom/arc/a$a;

    .line 522
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->U()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/at/e;->j:Lcn/nubia/camera/zoom/arc/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a$a;)V

    :cond_0
    return-void
.end method

.method private K()V
    .locals 2

    .line 527
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->aa:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 528
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->U()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/at/e;->j:Lcn/nubia/camera/zoom/arc/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->b(Lcn/nubia/camera/zoom/arc/a$a;)V

    :cond_0
    return-void
.end method

.method private L()Z
    .locals 4

    const v0, 0x7f0f030b

    .line 547
    invoke-virtual {p0, v0}, Lcn/nubia/camera/at/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->u()Lcom/android/preference/c;

    move-result-object v1

    const v2, 0x7f0f022a

    invoke-virtual {p0, v2}, Lcn/nubia/camera/at/e;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_starry_sky_camera_erase_tail_key"

    invoke-virtual {v1, v3, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private M()V
    .locals 2

    .line 551
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 552
    iget-object v0, p0, Lcn/nubia/camera/at/e;->l:Lcn/nubia/camera/au/b/a;

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Lcn/nubia/camera/au/b/a;

    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/au/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/at/e;->l:Lcn/nubia/camera/au/b/a;

    :cond_0
    return-void
.end method

.method private N()V
    .locals 1

    .line 559
    iget-object v0, p0, Lcn/nubia/camera/at/e;->l:Lcn/nubia/camera/au/b/a;

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {v0}, Lcn/nubia/camera/au/b/a;->b()V

    :cond_0
    return-void
.end method

.method private O()V
    .locals 2

    .line 565
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 566
    new-instance v0, Lcn/nubia/camera/at/e$11;

    invoke-direct {v0, p0}, Lcn/nubia/camera/at/e$11;-><init>(Lcn/nubia/camera/at/e;)V

    .line 579
    invoke-virtual {v0}, Lcn/nubia/camera/at/e$11;->start()V

    :cond_0
    return-void
.end method

.method private P()V
    .locals 5

    .line 605
    iget-object v0, p0, Lcn/nubia/camera/at/e;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 606
    :try_start_0
    iget-wide v1, p0, Lcn/nubia/camera/at/e;->n:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const-string v1, "StarrySkyFragment"

    const-string v2, "releaseEraseTail:"

    .line 607
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-wide v1, p0, Lcn/nubia/camera/at/e;->n:J

    invoke-static {v1, v2}, Lcom/nubia/cosmos/Cosmos;->eraseTailRelease(J)V

    .line 609
    iput-wide v3, p0, Lcn/nubia/camera/at/e;->n:J

    .line 611
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private Q()V
    .locals 2

    .line 621
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->aa:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 622
    new-instance v0, Lcn/nubia/camera/at/e$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/at/e$2;-><init>(Lcn/nubia/camera/at/e;)V

    .line 635
    invoke-virtual {v0}, Lcn/nubia/camera/at/e$2;->start()V

    :cond_0
    return-void
.end method

.method private R()V
    .locals 5

    .line 667
    iget-object v0, p0, Lcn/nubia/camera/at/e;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 668
    :try_start_0
    iget-wide v1, p0, Lcn/nubia/camera/at/e;->q:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const-string v1, "StarrySkyFragment"

    const-string v2, "releaseChangeSky:"

    .line 669
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-wide v1, p0, Lcn/nubia/camera/at/e;->q:J

    invoke-static {v1, v2}, Lcom/nubia/cosmos/Cosmos;->changeSkyRelease(J)V

    .line 671
    iput-wide v3, p0, Lcn/nubia/camera/at/e;->q:J

    .line 673
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private S()Landroid/graphics/Bitmap;
    .locals 4

    .line 689
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->u()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_starry_sky_camera_sky_type_key"

    const-string v2, "starry_sky_camera_sky_0"

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 690
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/al/c;->c()I

    move-result v1

    .line 691
    rem-int/lit16 v1, v1, 0xb4

    const-string v2, ".jpg"

    if-nez v1, :cond_0

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starry_sky_camera/sky_vertical/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 694
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starry_sky_camera/sky_horizontal/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 698
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 699
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 700
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "StarrySkyFragment"

    const-string v3, "getSky() error"

    .line 702
    invoke-static {v2, v3}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method private T()I
    .locals 1

    const-string v0, "pref_starry_sky_camera_sky_type_key"

    .line 709
    invoke-virtual {p0, v0}, Lcn/nubia/camera/at/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->n()I

    move-result v0

    return v0
.end method

.method private U()Lcn/nubia/camera/zoom/arc/a;
    .locals 1

    .line 713
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    return-object v0
.end method

.method private V()V
    .locals 5

    .line 721
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 722
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/g;->a(Landroid/os/Bundle;Lcn/nubia/camera/ad/a;)V

    .line 724
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->aa:Lcn/nubia/camera/af/a;

    if-ne v1, v2, :cond_0

    .line 726
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

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

    .line 725
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    const-string v2, "pref_starry_sky_camera_sky_type_key"

    const-string v3, "starry_sky_camera_sky_0"

    invoke-virtual {v1, v2, v3}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "star_effect"

    .line 727
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 729
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-ne v1, v2, :cond_1

    .line 731
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f022a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_starry_sky_camera_erase_tail_key"

    invoke-virtual {v1, v3, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "star_erase_tail"

    .line 730
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-ne v1, v2, :cond_2

    const-string v1, "professional"

    goto :goto_1

    :cond_2
    const-string v1, "quicksnap"

    :goto_1
    const-string v2, "star_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->getParentFragment()Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcn/nubia/camera/q/i;

    invoke-virtual {v4}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/zoom/c;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/at/e;J)J
    .locals 0

    .line 70
    iput-wide p1, p0, Lcn/nubia/camera/at/e;->n:J

    return-wide p1
.end method

.method private a([B)Landroid/graphics/Bitmap;
    .locals 9

    .line 677
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 678
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 679
    invoke-static {p1}, Lcn/nubia/camera/av/a;->a([B)I

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-static {p1}, Lcn/nubia/camera/av/a;->a([B)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v7, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 682
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method static synthetic a(Lcn/nubia/camera/at/e;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 0

    .line 70
    iput-object p1, p0, Lcn/nubia/camera/at/e;->m:Landroid/hardware/camera2/CaptureResult;

    return-object p1
.end method

.method public static a(Lcn/nubia/camera/at/i;)Lcn/nubia/camera/at/e;
    .locals 2

    .line 102
    new-instance v0, Lcn/nubia/camera/at/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcn/nubia/camera/at/e;-><init>(ILcn/nubia/camera/at/i;)V

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 9

    .line 431
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object v0

    .line 432
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/al/c;->c()I

    move-result v1

    .line 435
    rem-int/lit16 v2, v1, 0xb4

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 436
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p1, v2, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p1, v2, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    move-object v2, p1

    if-eqz v1, :cond_1

    .line 441
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    neg-int p1, v1

    int-to-float p1, p1

    .line 442
    invoke-virtual {v7, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 443
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/at/e$9;

    invoke-direct {v0, p0, v2}, Lcn/nubia/camera/at/e$9;-><init>(Lcn/nubia/camera/at/e;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/at/e;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->m()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/at/e;[BFI)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/at/e;->a([BFI)V

    return-void
.end method

.method private a([BFI)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "StarrySkyFragment"

    const-string v3, "doEraseTail:"

    .line 584
    invoke-static {v2, v3}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/at/e;->D()Z

    move-result v3

    if-nez v3, :cond_1

    iget-wide v3, v0, Lcn/nubia/camera/at/e;->n:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 590
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcn/nubia/camera/at/e;->a([B)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 591
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 592
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 593
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/al/c;->c()I

    move-result v5

    invoke-static {v4, v5}, Lcn/nubia/camera/aq/f;->a(Landroid/hardware/camera2/CameraCharacteristics;I)I

    move-result v15

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/at/e;->getParentFragment()Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcn/nubia/camera/q/i;

    invoke-virtual {v4}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/zoom/c;->c()F

    move-result v14

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/camera/au/i;->a(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4, v14}, Lcn/nubia/camera/au/i;->a(FF)F

    move-result v13

    .line 596
    iget-wide v4, v0, Lcn/nubia/camera/at/e;->n:J

    float-to-int v10, v1

    iget-object v7, v0, Lcn/nubia/camera/at/e;->l:Lcn/nubia/camera/au/b/a;

    invoke-virtual {v7}, Lcn/nubia/camera/au/b/a;->d()[F

    move-result-object v12

    iget-object v7, v0, Lcn/nubia/camera/at/e;->l:Lcn/nubia/camera/au/b/a;

    .line 597
    invoke-virtual {v7}, Lcn/nubia/camera/au/b/a;->e()[F

    move-result-object v16

    iget-object v7, v0, Lcn/nubia/camera/at/e;->l:Lcn/nubia/camera/au/b/a;

    invoke-virtual {v7}, Lcn/nubia/camera/au/b/a;->f()F

    move-result v17

    iget-object v7, v0, Lcn/nubia/camera/at/e;->l:Lcn/nubia/camera/au/b/a;

    invoke-virtual {v7}, Lcn/nubia/camera/au/b/a;->g()F

    move-result v18

    iget-object v7, v0, Lcn/nubia/camera/at/e;->l:Lcn/nubia/camera/au/b/a;

    invoke-virtual {v7}, Lcn/nubia/camera/au/b/a;->h()F

    move-result v19

    move v7, v2

    move v8, v3

    move v9, v15

    move v11, v14

    move/from16 p1, v13

    move-object/from16 v13, v16

    move/from16 v20, v14

    move/from16 v14, v17

    move/from16 v21, v15

    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v17, p1

    .line 596
    invoke-static/range {v4 .. v17}, Lcom/nubia/cosmos/Cosmos;->eraseTailProgress(JLandroid/graphics/Bitmap;IIIIF[F[FFFFF)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    move/from16 v6, p3

    invoke-static {v5, v4, v1, v6}, Lcn/nubia/camera/at/h;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/Bitmap;FI)Ljava/lang/String;

    move-result-object v4

    .line 600
    iget-object v5, v0, Lcn/nubia/camera/at/e;->l:Lcn/nubia/camera/au/b/a;

    const-string v6, ".jpg"

    const-string v7, ".txt"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\r\nWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\r\nHeight: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\nAngle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\nExposureTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\nZoom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\nFov: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v4, v1}, Lcn/nubia/camera/au/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 586
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doEraseTail: isPaused() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/at/e;->D()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mEraseTailHandle == "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcn/nubia/camera/at/e;->n:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(ZZ)Z
    .locals 3

    .line 487
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->aa:Lcn/nubia/camera/af/a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    const-string v0, "StarrySkyZoomTag"

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 489
    iget-object p1, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1, v2}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 491
    iget-object p1, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->e()V

    .line 492
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->U()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    move p1, v2

    goto :goto_0

    .line 494
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->f()Z

    move-result p1

    .line 495
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->U()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p2

    invoke-virtual {p2, v2, v0}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    .line 497
    :goto_0
    invoke-direct {p0, v2}, Lcn/nubia/camera/at/e;->b(Z)V

    move v2, p1

    goto :goto_1

    .line 499
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setVisibility(I)V

    .line 500
    iget-object p1, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->f()Z

    .line 501
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->U()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 502
    invoke-direct {p0, p1}, Lcn/nubia/camera/at/e;->b(Z)V

    .line 504
    :goto_1
    iget-object p1, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->getVisibility()I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/at/e;->r:I

    :cond_2
    return v2
.end method

.method static synthetic b(Lcn/nubia/camera/at/e;J)J
    .locals 0

    .line 70
    iput-wide p1, p0, Lcn/nubia/camera/at/e;->q:J

    return-wide p1
.end method

.method static synthetic b(Lcn/nubia/camera/at/e;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->n()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/at/e;[BFI)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/at/e;->b([BFI)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 717
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/at/f;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/at/f;->f(Z)V

    return-void
.end method

.method private b([BFI)V
    .locals 1

    .line 615
    invoke-direct {p0, p1}, Lcn/nubia/camera/at/e;->a([B)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 616
    invoke-static {p1}, Lcom/nubia/cosmos/Cosmos;->starrySkyEffect(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 617
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcn/nubia/camera/at/h;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/Bitmap;FI)Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/at/e;)Lcn/nubia/camera/at/i;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/camera/at/e;->a:Lcn/nubia/camera/at/i;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/at/e;[BFI)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/at/e;->c([BFI)V

    return-void
.end method

.method private c([BFI)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "StarrySkyFragment"

    const-string v3, "doChangeSky:"

    .line 640
    invoke-static {v2, v3}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/at/e;->D()Z

    move-result v3

    if-nez v3, :cond_2

    iget-wide v3, v0, Lcn/nubia/camera/at/e;->q:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 646
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcn/nubia/camera/at/e$3;

    invoke-direct {v4, v0}, Lcn/nubia/camera/at/e$3;-><init>(Lcn/nubia/camera/at/e;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 652
    invoke-direct/range {p0 .. p1}, Lcn/nubia/camera/at/e;->a([B)Landroid/graphics/Bitmap;

    move-result-object v7

    const v3, 0x7f0f030b

    .line 653
    invoke-virtual {v0, v3}, Lcn/nubia/camera/at/e;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/at/e;->u()Lcom/android/preference/c;

    move-result-object v4

    const v5, 0x7f0f029d

    invoke-virtual {v0, v5}, Lcn/nubia/camera/at/e;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_silhouette_key"

    invoke-virtual {v4, v6, v5}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/4 v3, 0x1

    new-array v4, v3, [I

    .line 655
    iget-wide v5, v0, Lcn/nubia/camera/at/e;->q:J

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    float-to-int v11, v1

    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/at/e;->S()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/at/e;->T()I

    move-result v14

    move/from16 v12, p3

    move-object/from16 v16, v4

    invoke-static/range {v5 .. v16}, Lcom/nubia/cosmos/Cosmos;->changeSkyProgress(JLandroid/graphics/Bitmap;IIIIILandroid/graphics/Bitmap;IZ[I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 656
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ba/f;->c()V

    const/4 v6, 0x0

    .line 657
    aget v7, v4, v6

    if-nez v7, :cond_1

    .line 658
    invoke-direct {v0, v5}, Lcn/nubia/camera/at/e;->a(Landroid/graphics/Bitmap;)V

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    move/from16 v3, p3

    invoke-static {v2, v5, v1, v3}, Lcn/nubia/camera/at/h;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/Bitmap;FI)Ljava/lang/String;

    goto :goto_0

    .line 661
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change sky progress fail: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v4, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v1

    const v2, 0x7f0f015e

    invoke-virtual {v0, v2}, Lcn/nubia/camera/at/e;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v3}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;IIZ)V

    :goto_0
    return-void

    .line 642
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doChangeSky: isPaused() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/at/e;->D()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mChangeSkyHandle = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcn/nubia/camera/at/e;->q:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/at/e;)Landroid/hardware/camera2/CaptureResult;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/camera/at/e;->m:Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 14

    .line 347
    new-instance v13, Lcn/nubia/camera/at/b;

    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v3, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    sget-object v4, Lcn/nubia/camera/af/a;->aa:Lcn/nubia/camera/af/a;

    const v5, 0x7f080310

    const v6, 0x7f08030e

    const v7, 0x7f080311

    const v8, 0x7f08030f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0f039d

    const v12, 0x7f0f039e

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcn/nubia/camera/at/b;-><init>(Lcn/nubia/camera/ad/a;Landroid/view/ViewGroup;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;IIIIIIII)V

    iput-object v13, p0, Lcn/nubia/camera/at/e;->c:Lcn/nubia/camera/at/b;

    .line 353
    new-instance p1, Lcn/nubia/camera/at/e$7;

    invoke-direct {p1, p0}, Lcn/nubia/camera/at/e$7;-><init>(Lcn/nubia/camera/at/e;)V

    invoke-virtual {v13, p1}, Lcn/nubia/camera/at/b;->a(Lcn/nubia/camera/at/b$a;)V

    .line 364
    iget-object p1, p0, Lcn/nubia/camera/at/e;->c:Lcn/nubia/camera/at/b;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/at/e;->a(Lcn/nubia/camera/q/g;)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/at/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private e(Landroid/view/View;)V
    .locals 2

    .line 382
    new-instance v0, Lcn/nubia/camera/extendedUI/f;

    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcn/nubia/camera/extendedUI/f;-><init>(Lcn/nubia/camera/ad/a;Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/camera/at/e;->i:Lcn/nubia/camera/extendedUI/f;

    .line 383
    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/f;->e()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/camera/at/e;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/at/e;)Lcom/android/preference/c;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method private f(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0901b6

    .line 387
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    iput-object p1, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    .line 388
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-ne p1, v0, :cond_0

    .line 389
    iget-object p1, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/at/e;)Lcn/nubia/camera/extendedUI/f;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/camera/at/e;->i:Lcn/nubia/camera/extendedUI/f;

    return-object p0
.end method

.method private g(Landroid/view/View;)V
    .locals 2

    .line 418
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->aa:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    const v0, 0x7f0900b1

    .line 419
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/camera/at/e;->s:Landroid/widget/ImageView;

    .line 421
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 422
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 424
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 425
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 426
    iget-object v0, p0, Lcn/nubia/camera/at/e;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/at/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/camera/at/e;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->o()V

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/at/e;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->r()V

    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/at/e;)Lcn/nubia/camera/zoom/arc/a;
    .locals 0

    .line 70
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->U()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/at/e;)Landroid/widget/ImageView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/camera/at/e;->s:Landroid/widget/ImageView;

    return-object p0
.end method

.method private l()V
    .locals 4

    .line 310
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 311
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    const-string v0, "ui_change_starry_sky"

    .line 312
    invoke-virtual {p0, v0}, Lcn/nubia/camera/at/e;->d(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcn/nubia/camera/at/e;->a:Lcn/nubia/camera/at/i;

    invoke-virtual {v0}, Lcn/nubia/camera/at/i;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v0

    sget-wide v2, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 315
    iget-object v0, p0, Lcn/nubia/camera/at/e;->i:Lcn/nubia/camera/extendedUI/f;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/f;->a()V

    goto :goto_0

    .line 317
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/at/e;->i:Lcn/nubia/camera/extendedUI/f;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/camera/extendedUI/f;->a(J)V

    :goto_0
    return-void
.end method

.method static synthetic m(Lcn/nubia/camera/at/e;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    return-object p0
.end method

.method private m()V
    .locals 2

    .line 322
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/at/e$5;

    invoke-direct {v1, p0}, Lcn/nubia/camera/at/e$5;-><init>(Lcn/nubia/camera/at/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic n(Lcn/nubia/camera/at/e;)Ljava/lang/Object;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/camera/at/e;->k:Ljava/lang/Object;

    return-object p0
.end method

.method private n()V
    .locals 2

    .line 331
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/at/e$6;

    invoke-direct {v1, p0}, Lcn/nubia/camera/at/e$6;-><init>(Lcn/nubia/camera/at/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic o(Lcn/nubia/camera/at/e;)J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcn/nubia/camera/at/e;->n:J

    return-wide v0
.end method

.method private o()V
    .locals 2

    .line 341
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    const-string v0, "ui_change_starry_sky"

    .line 342
    invoke-virtual {p0, v0}, Lcn/nubia/camera/at/e;->c(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcn/nubia/camera/at/e;->i:Lcn/nubia/camera/extendedUI/f;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/f;->b()V

    return-void
.end method

.method static synthetic p(Lcn/nubia/camera/at/e;)J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcn/nubia/camera/at/e;->q:J

    return-wide v0
.end method

.method private r()V
    .locals 4

    .line 368
    iget-object v0, p0, Lcn/nubia/camera/at/e;->c:Lcn/nubia/camera/at/b;

    invoke-virtual {v0}, Lcn/nubia/camera/at/b;->d()Z

    move-result v0

    const-string v1, "StarrySkyZoomTag"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcn/nubia/camera/at/e;->b:Lcn/nubia/camera/q/c;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcn/nubia/camera/q/c;->a(I)V

    .line 370
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->U()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    .line 371
    invoke-direct {p0, v2}, Lcn/nubia/camera/at/e;->b(Z)V

    .line 372
    iget-object v0, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setVisibility(I)V

    goto :goto_0

    .line 374
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/at/e;->b:Lcn/nubia/camera/q/c;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/q/c;->a(I)V

    .line 375
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->U()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 376
    invoke-direct {p0, v0}, Lcn/nubia/camera/at/e;->b(Z)V

    .line 377
    invoke-direct {p0, v0, v0}, Lcn/nubia/camera/at/e;->a(ZZ)Z

    :goto_0
    return-void
.end method

.method private s()V
    .locals 3

    .line 394
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->aa:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_1

    .line 395
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_starry_sky_camera_sky_type_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    .line 399
    iget-object v1, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->a(Lcom/android/preference/IconListPreference;Landroid/content/Context;)V

    .line 400
    iget-object v0, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setHandleImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    iget-object v0, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    new-instance v1, Lcn/nubia/camera/at/e$8;

    invoke-direct {v1, p0}, Lcn/nubia/camera/at/e$8;-><init>(Lcn/nubia/camera/at/e;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setDrawerListener(Lcom/android/common/ui/f$a;)V

    .line 413
    iget-object v0, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/widget/RelativeLayout;Lcn/nubia/camera/a/a;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ZJJ)V
    .locals 0

    .line 284
    iget-object p1, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setVisibility(I)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->e()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 167
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/at/e;->c:Lcn/nubia/camera/at/b;

    invoke-virtual {p1}, Lcn/nubia/camera/at/b;->d()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 168
    iget-object p1, p0, Lcn/nubia/camera/at/e;->c:Lcn/nubia/camera/at/b;

    invoke-virtual {p1}, Lcn/nubia/camera/at/b;->c()V

    return v1

    .line 171
    :cond_1
    invoke-direct {p0, v1, v0}, Lcn/nubia/camera/at/e;->a(ZZ)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcn/nubia/camera/at/e;->c:Lcn/nubia/camera/at/b;

    invoke-virtual {v0}, Lcn/nubia/camera/at/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_3

    .line 199
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->L()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcn/nubia/camera/at/e;->o:Lcn/nubia/camera/at/a;

    invoke-virtual {v0}, Lcn/nubia/camera/at/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 203
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/at/e;->l:Lcn/nubia/camera/au/b/a;

    invoke-virtual {v0}, Lcn/nubia/camera/au/b/a;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 204
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    const v1, 0x7f0f03c3

    invoke-virtual {p0, v1}, Lcn/nubia/camera/at/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    return-void

    .line 210
    :cond_3
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->V()V

    .line 211
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    .line 213
    new-instance v0, Lcn/nubia/camera/g/h;

    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/g/h;-><init>(Landroid/content/Context;Lcn/nubia/j/a;)V

    .line 214
    new-instance v1, Lcn/nubia/camera/at/e$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/at/e$1;-><init>(Lcn/nubia/camera/at/e;)V

    .line 252
    new-instance v2, Lcn/nubia/camera/at/e$4;

    invoke-direct {v2, p0}, Lcn/nubia/camera/at/e$4;-><init>(Lcn/nubia/camera/at/e;)V

    .line 267
    iget-object v3, p0, Lcn/nubia/camera/at/e;->a:Lcn/nubia/camera/at/i;

    invoke-virtual {v3, v0, v1, v2}, Lcn/nubia/camera/at/i;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->l()V

    :cond_4
    return-void
.end method

.method public b(ZJJ)V
    .locals 0

    .line 279
    iget p1, p0, Lcn/nubia/camera/at/e;->r:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p2}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->d()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/at/e;->a(ZZ)Z

    return-void
.end method

.method public b_(I)V
    .locals 1

    .line 177
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b_(I)V

    .line 178
    iget-object v0, p0, Lcn/nubia/camera/at/e;->c:Lcn/nubia/camera/at/b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/at/b;->a(I)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method d()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/at/e;->a(ZZ)Z

    return-void
.end method

.method e()V
    .locals 2

    .line 533
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_1

    .line 534
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcn/nubia/camera/at/e;->o:Lcn/nubia/camera/at/a;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Lcn/nubia/camera/at/a;

    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/at/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/camera/at/e;->o:Lcn/nubia/camera/at/a;

    .line 538
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/at/e;->o:Lcn/nubia/camera/at/a;

    invoke-virtual {v0}, Lcn/nubia/camera/at/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcn/nubia/camera/at/e;->l:Lcn/nubia/camera/au/b/a;

    invoke-virtual {v0}, Lcn/nubia/camera/au/b/a;->a()V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setEnabled(Z)V

    return-void
.end method

.method protected i_()V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->s()V

    return-void
.end method

.method public j()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcn/nubia/camera/at/e;->p:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setEnabled(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 108
    iget-boolean p3, p0, Lcn/nubia/camera/at/e;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c00be

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 112
    invoke-direct {p0, p1}, Lcn/nubia/camera/at/e;->d(Landroid/view/View;)V

    .line 113
    invoke-direct {p0, p1}, Lcn/nubia/camera/at/e;->e(Landroid/view/View;)V

    .line 114
    invoke-direct {p0, p1}, Lcn/nubia/camera/at/e;->f(Landroid/view/View;)V

    .line 115
    invoke-direct {p0, p1}, Lcn/nubia/camera/at/e;->g(Landroid/view/View;)V

    .line 116
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->J()V

    .line 117
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p0, p3, v0, p3, p2}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/at/e;->b:Lcn/nubia/camera/q/c;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 123
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 124
    iget-boolean v0, p0, Lcn/nubia/camera/at/e;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->K()V

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/at/e;->b:Lcn/nubia/camera/q/c;

    invoke-static {p0, v0}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 149
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 150
    iget-boolean v0, p0, Lcn/nubia/camera/at/e;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "StarrySkyFragment"

    const-string v1, "onPause"

    .line 153
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->N()V

    .line 155
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->P()V

    .line 156
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->R()V

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/at/e;->i:Lcn/nubia/camera/extendedUI/f;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/f;->d()V

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/at/e;->c:Lcn/nubia/camera/at/b;

    invoke-virtual {v0}, Lcn/nubia/camera/at/b;->b()V

    .line 159
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->o()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 133
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 134
    iget-boolean v0, p0, Lcn/nubia/camera/at/e;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "StarrySkyFragment"

    const-string v1, "onResume"

    .line 137
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->M()V

    .line 139
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->e()V

    .line 140
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->O()V

    .line 141
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->Q()V

    .line 142
    invoke-direct {p0}, Lcn/nubia/camera/at/e;->r()V

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/at/e;->i:Lcn/nubia/camera/extendedUI/f;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/f;->c()V

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/at/e;->c:Lcn/nubia/camera/at/b;

    invoke-virtual {v0}, Lcn/nubia/camera/at/b;->a()V

    return-void
.end method

.method public p()V
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->j()V

    .line 300
    iget-object v0, p0, Lcn/nubia/camera/at/e;->c:Lcn/nubia/camera/at/b;

    invoke-virtual {v0}, Lcn/nubia/camera/at/b;->j()V

    return-void
.end method

.method public q()V
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcn/nubia/camera/at/e;->i()V

    .line 306
    iget-object v0, p0, Lcn/nubia/camera/at/e;->c:Lcn/nubia/camera/at/b;

    invoke-virtual {v0}, Lcn/nubia/camera/at/b;->i()V

    return-void
.end method
