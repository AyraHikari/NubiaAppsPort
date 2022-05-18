.class public Lcn/nubia/camera/y/b;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/q/g;
.implements Lcn/nubia/camera/y/i$a;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/y/b$a;,
        Lcn/nubia/camera/y/b$b;
    }
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private c:Z

.field private i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

.field private l:Lcom/android/common/ui/a/b;

.field private m:Lcom/android/common/ui/NubiaProgressWheel;

.field private n:Lcn/nubia/camera/y/f;

.field private o:Lcn/nubia/camera/y/i;

.field private p:Lcn/nubia/camera/y/h;

.field private q:Lcn/nubia/camera/z/a/d;

.field private r:Lcn/nubia/camera/y/h$a;

.field private s:Lcn/nubia/camera/y/b$b;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/TextView;

.field private v:Lcn/nubia/camera/prosetting/ui/IntervalTimeView;

.field private w:Lcn/nubia/camera/q/c;

.field private x:Z

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 105
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const-wide/16 v0, 0x0

    .line 76
    iput-wide v0, p0, Lcn/nubia/camera/y/b;->a:J

    const/16 v0, 0x1f4

    .line 77
    iput v0, p0, Lcn/nubia/camera/y/b;->b:I

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcn/nubia/camera/y/b;->c:Z

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcn/nubia/camera/y/b;->j:Landroid/widget/RelativeLayout;

    .line 82
    iput-object v0, p0, Lcn/nubia/camera/y/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 84
    iput-object v0, p0, Lcn/nubia/camera/y/b;->m:Lcom/android/common/ui/NubiaProgressWheel;

    .line 90
    new-instance v1, Lcn/nubia/camera/y/b$a;

    invoke-direct {v1, p0, v0}, Lcn/nubia/camera/y/b$a;-><init>(Lcn/nubia/camera/y/b;Lcn/nubia/camera/y/b$1;)V

    iput-object v1, p0, Lcn/nubia/camera/y/b;->r:Lcn/nubia/camera/y/h$a;

    .line 91
    new-instance v1, Lcn/nubia/camera/y/b$b;

    invoke-direct {v1, p0}, Lcn/nubia/camera/y/b$b;-><init>(Lcn/nubia/camera/y/b;)V

    iput-object v1, p0, Lcn/nubia/camera/y/b;->s:Lcn/nubia/camera/y/b$b;

    .line 93
    iput-object v0, p0, Lcn/nubia/camera/y/b;->t:Landroid/widget/RelativeLayout;

    .line 94
    iput-object v0, p0, Lcn/nubia/camera/y/b;->u:Landroid/widget/TextView;

    .line 95
    iput-object v0, p0, Lcn/nubia/camera/y/b;->v:Lcn/nubia/camera/prosetting/ui/IntervalTimeView;

    .line 97
    iput-object v0, p0, Lcn/nubia/camera/y/b;->w:Lcn/nubia/camera/q/c;

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcn/nubia/camera/y/b;->x:Z

    .line 102
    iput v0, p0, Lcn/nubia/camera/y/b;->y:I

    return-void
.end method

.method public constructor <init>(ILcn/nubia/camera/y/f;)V
    .locals 2

    .line 110
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const-wide/16 v0, 0x0

    .line 76
    iput-wide v0, p0, Lcn/nubia/camera/y/b;->a:J

    const/16 p1, 0x1f4

    .line 77
    iput p1, p0, Lcn/nubia/camera/y/b;->b:I

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcn/nubia/camera/y/b;->c:Z

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcn/nubia/camera/y/b;->j:Landroid/widget/RelativeLayout;

    .line 82
    iput-object p1, p0, Lcn/nubia/camera/y/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 84
    iput-object p1, p0, Lcn/nubia/camera/y/b;->m:Lcom/android/common/ui/NubiaProgressWheel;

    .line 90
    new-instance v0, Lcn/nubia/camera/y/b$a;

    invoke-direct {v0, p0, p1}, Lcn/nubia/camera/y/b$a;-><init>(Lcn/nubia/camera/y/b;Lcn/nubia/camera/y/b$1;)V

    iput-object v0, p0, Lcn/nubia/camera/y/b;->r:Lcn/nubia/camera/y/h$a;

    .line 91
    new-instance v0, Lcn/nubia/camera/y/b$b;

    invoke-direct {v0, p0}, Lcn/nubia/camera/y/b$b;-><init>(Lcn/nubia/camera/y/b;)V

    iput-object v0, p0, Lcn/nubia/camera/y/b;->s:Lcn/nubia/camera/y/b$b;

    .line 93
    iput-object p1, p0, Lcn/nubia/camera/y/b;->t:Landroid/widget/RelativeLayout;

    .line 94
    iput-object p1, p0, Lcn/nubia/camera/y/b;->u:Landroid/widget/TextView;

    .line 95
    iput-object p1, p0, Lcn/nubia/camera/y/b;->v:Lcn/nubia/camera/prosetting/ui/IntervalTimeView;

    .line 97
    iput-object p1, p0, Lcn/nubia/camera/y/b;->w:Lcn/nubia/camera/q/c;

    const/4 p1, 0x0

    .line 101
    iput-boolean p1, p0, Lcn/nubia/camera/y/b;->x:Z

    .line 102
    iput p1, p0, Lcn/nubia/camera/y/b;->y:I

    .line 111
    iput-object p2, p0, Lcn/nubia/camera/y/b;->n:Lcn/nubia/camera/y/f;

    return-void
.end method

.method private J()V
    .locals 3

    .line 399
    new-instance v0, Lcn/nubia/camera/y/i;

    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/y/i;-><init>(Lcn/nubia/camera/d/a;)V

    iput-object v0, p0, Lcn/nubia/camera/y/b;->o:Lcn/nubia/camera/y/i;

    .line 400
    invoke-virtual {v0, p0}, Lcn/nubia/camera/y/i;->a(Lcn/nubia/camera/y/i$a;)V

    .line 402
    new-instance v0, Lcn/nubia/camera/y/h;

    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/y/h;-><init>(Lcn/nubia/camera/a/a;Lcn/nubia/camera/ad/a;)V

    iput-object v0, p0, Lcn/nubia/camera/y/b;->p:Lcn/nubia/camera/y/h;

    .line 406
    new-instance v0, Lcn/nubia/camera/z/a/d;

    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/z/a/d;-><init>(Lcn/nubia/camera/ad/a;)V

    iput-object v0, p0, Lcn/nubia/camera/y/b;->q:Lcn/nubia/camera/z/a/d;

    const/16 v1, 0x1e

    .line 407
    invoke-virtual {v0, v1}, Lcn/nubia/camera/z/a/d;->a(I)V

    .line 408
    iget-object v0, p0, Lcn/nubia/camera/y/b;->q:Lcn/nubia/camera/z/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/z/a/d;->a(Z)V

    return-void
.end method

.method private K()V
    .locals 1

    .line 448
    iget-object v0, p0, Lcn/nubia/camera/y/b;->o:Lcn/nubia/camera/y/i;

    invoke-virtual {v0}, Lcn/nubia/camera/y/i;->a()V

    .line 449
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->R()V

    return-void
.end method

.method private L()V
    .locals 1

    .line 453
    iget-object v0, p0, Lcn/nubia/camera/y/b;->o:Lcn/nubia/camera/y/i;

    invoke-virtual {v0}, Lcn/nubia/camera/y/i;->b()V

    const/4 v0, 0x0

    .line 454
    iput-boolean v0, p0, Lcn/nubia/camera/y/b;->x:Z

    .line 455
    iput v0, p0, Lcn/nubia/camera/y/b;->y:I

    return-void
.end method

.method private M()V
    .locals 2

    .line 626
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    return-void
.end method

.method private N()V
    .locals 2

    .line 630
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    return-void
.end method

.method private O()V
    .locals 4

    .line 670
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/y/b;->v:Lcn/nubia/camera/prosetting/ui/IntervalTimeView;

    invoke-virtual {v0}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->getMinIntervalTime()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/y/b;->v:Lcn/nubia/camera/prosetting/ui/IntervalTimeView;

    invoke-virtual {v0}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcn/nubia/camera/y/b;->b:I

    .line 671
    iget-object v1, p0, Lcn/nubia/camera/y/b;->o:Lcn/nubia/camera/y/i;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/y/i;->a(J)V

    .line 673
    iget-object v0, p0, Lcn/nubia/camera/y/b;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/camera/y/b;->v:Lcn/nubia/camera/prosetting/ui/IntervalTimeView;

    invoke-virtual {v1}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->getSelectedRate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pref_intervalometer_night_scene_on_interval_key"

    goto :goto_1

    :cond_1
    const-string v0, "pref_intervalometer_night_scene_off_interval_key"

    .line 676
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/y/b;->v:Lcn/nubia/camera/prosetting/ui/IntervalTimeView;

    invoke-virtual {v2}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private P()Z
    .locals 1

    .line 680
    iget-object v0, p0, Lcn/nubia/camera/y/b;->v:Lcn/nubia/camera/prosetting/ui/IntervalTimeView;

    invoke-virtual {v0}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->e()Z

    move-result v0

    return v0
.end method

.method private Q()Z
    .locals 3

    .line 684
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/y/d;

    invoke-virtual {v0}, Lcn/nubia/camera/y/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->u()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0260

    invoke-virtual {p0, v1}, Lcn/nubia/camera/y/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_Intervalometer_night_scene_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private R()V
    .locals 5

    .line 689
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 690
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/y/b;->a(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "inter_night"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/y/b;->b(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "inter_intertime"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    .line 694
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    .line 695
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v3

    .line 696
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcn/nubia/camera/q/i;

    invoke-virtual {v4}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v4

    .line 693
    invoke-static {v1, v2, v3, v4, v0}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/zoom/c;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/y/b;)I
    .locals 2

    .line 70
    iget v0, p0, Lcn/nubia/camera/y/b;->y:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/camera/y/b;->y:I

    return v0
.end method

.method static synthetic a(Lcn/nubia/camera/y/b;I)I
    .locals 0

    .line 70
    iput p1, p0, Lcn/nubia/camera/y/b;->b:I

    return p1
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 4

    .line 326
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_pending"

    const/4 v2, 0x1

    .line 327
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mime_type"

    const-string v2, "video/mp4"

    .line 328
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "datetaken"

    .line 329
    iget-wide v2, p0, Lcn/nubia/camera/y/b;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "relative_path"

    .line 330
    invoke-static {p2}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_display_name"

    .line 331
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "title"

    const-string v1, "\\..+"

    const-string v2, ""

    .line 332
    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p2

    invoke-interface {p2}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "latitude"

    .line 335
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string p3, "longitude"

    .line 336
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    const-string p2, "duration"

    .line 338
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "IntervalometerFragment"

    const-string p3, "createUri fail"

    .line 343
    invoke-static {p2, p3, p1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/y/b;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 0

    .line 70
    invoke-direct/range {p0 .. p5}, Lcn/nubia/camera/y/b;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcn/nubia/camera/y/f;)Lcn/nubia/camera/y/b;
    .locals 2

    .line 115
    new-instance v0, Lcn/nubia/camera/y/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcn/nubia/camera/y/b;-><init>(ILcn/nubia/camera/y/f;)V

    return-object v0
.end method

.method private a(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 2

    .line 700
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    const v1, 0x7f0f0260

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "pref_Intervalometer_night_scene_mode_key"

    invoke-virtual {v0, v1, p1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "off"

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/y/b;J)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/y/b;->e(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/y/b;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcn/nubia/camera/y/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/y/b;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/y/b;->a(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    new-instance p1, Lcn/nubia/l/b/g;

    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1, v1}, Lcn/nubia/l/b/g;-><init>(Landroid/content/Context;Landroid/net/Uri;IZ)V

    .line 353
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/y/b;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcn/nubia/camera/y/b;->x:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/y/b;)I
    .locals 0

    .line 70
    iget p0, p0, Lcn/nubia/camera/y/b;->y:I

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/y/b;I)I
    .locals 0

    .line 70
    iput p1, p0, Lcn/nubia/camera/y/b;->y:I

    return p1
.end method

.method private b(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 2

    .line 709
    invoke-direct {p0, p1}, Lcn/nubia/camera/y/b;->a(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "-1"

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    const-string v0, "pref_intervalometer_night_scene_off_interval_key"

    invoke-virtual {p1, v0, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 712
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    const-string v0, "pref_intervalometer_night_scene_on_interval_key"

    invoke-virtual {p1, v0, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 714
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "auto"

    :cond_1
    return-object p1
.end method

.method static synthetic b(Lcn/nubia/camera/y/b;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcn/nubia/camera/y/b;->c:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private c(J)V
    .locals 3

    .line 425
    iget-object v0, p0, Lcn/nubia/camera/y/b;->l:Lcom/android/common/ui/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/y/b;->d(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " / "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/y/b;->y:I

    div-int/lit8 p2, p2, 0x1e

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v1, p2

    invoke-direct {p0, v1, v2}, Lcn/nubia/camera/y/b;->d(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/common/ui/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private d(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 429
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 430
    div-int/lit16 p2, p1, 0xe10

    .line 431
    rem-int/lit16 v0, p1, 0xe10

    div-int/lit8 v0, v0, 0x3c

    .line 432
    rem-int/lit8 p1, p1, 0x3c

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcn/nubia/camera/y/b;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-direct {p0, v0}, Lcn/nubia/camera/y/b;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-direct {p0, p1}, Lcn/nubia/camera/y/b;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0901bb

    .line 412
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object v0, p0, Lcn/nubia/camera/y/b;->i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const v0, 0x7f09027c

    .line 413
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/y/b;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f090279

    .line 414
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iput-object v0, p0, Lcn/nubia/camera/y/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 415
    invoke-virtual {v0, p0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setOnShutterButtonListener(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    const v0, 0x7f0902cd

    .line 416
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/NubiaProgressWheel;

    iput-object v0, p0, Lcn/nubia/camera/y/b;->m:Lcom/android/common/ui/NubiaProgressWheel;

    .line 417
    new-instance v0, Lcom/android/common/ui/a/b;

    invoke-direct {v0, p1}, Lcom/android/common/ui/a/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/camera/y/b;->l:Lcom/android/common/ui/a/b;

    const v0, 0x7f090234

    .line 418
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;Landroid/content/res/Resources;)V

    .line 419
    iget-object v0, p0, Lcn/nubia/camera/y/b;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/y/b;->a(Landroid/view/View;)V

    .line 421
    invoke-direct {p0, p1}, Lcn/nubia/camera/y/b;->e(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/y/b;)Z
    .locals 0

    .line 70
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->P()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/y/h;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/camera/y/b;->p:Lcn/nubia/camera/y/h;

    return-object p0
.end method

.method private e(J)Ljava/lang/String;
    .locals 1

    .line 601
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 602
    new-instance p1, Ljava/text/SimpleDateFormat;

    const p2, 0x7f0f03dc

    invoke-virtual {p0, p2}, Lcn/nubia/camera/y/b;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 603
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".mp4"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0901c8

    .line 643
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/y/b;->t:Landroid/widget/RelativeLayout;

    .line 644
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/widget/RelativeLayout;Lcn/nubia/camera/a/a;)V

    const v0, 0x7f0901c9

    .line 645
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/y/b;->u:Landroid/widget/TextView;

    const v0, 0x7f0901ca

    .line 646
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;

    iput-object p1, p0, Lcn/nubia/camera/y/b;->v:Lcn/nubia/camera/prosetting/ui/IntervalTimeView;

    .line 650
    new-instance v0, Lcn/nubia/camera/y/b$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/y/b$1;-><init>(Lcn/nubia/camera/y/b;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->setListener(Lcn/nubia/camera/prosetting/ui/a$b;)V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/z/a/d;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/camera/y/b;->q:Lcn/nubia/camera/z/a/d;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/y/b;)I
    .locals 0

    .line 70
    iget p0, p0, Lcn/nubia/camera/y/b;->b:I

    return p0
.end method

.method static synthetic i(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/y/i;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/camera/y/b;->o:Lcn/nubia/camera/y/i;

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/camera/y/b;)J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcn/nubia/camera/y/b;->a:J

    return-wide v0
.end method

.method static synthetic l(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private m()V
    .locals 3

    .line 263
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcn/nubia/camera/y/b;->n:Lcn/nubia/camera/y/f;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->D()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/camera/y/b;->x:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcn/nubia/camera/y/b;->x:Z

    .line 268
    iget-object v0, p0, Lcn/nubia/camera/y/b;->n:Lcn/nubia/camera/y/f;

    iget-object v1, p0, Lcn/nubia/camera/y/b;->s:Lcn/nubia/camera/y/b$b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcn/nubia/camera/y/f;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    :cond_0
    return-void
.end method

.method static synthetic n(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private n()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcn/nubia/camera/y/b;->p:Lcn/nubia/camera/y/h;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lcn/nubia/camera/y/h;->b()V

    .line 277
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/y/b;->q:Lcn/nubia/camera/z/a/d;

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v0}, Lcn/nubia/camera/z/a/d;->b()V

    :cond_1
    return-void
.end method

.method private o()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcn/nubia/camera/y/b;->m:Lcom/android/common/ui/NubiaProgressWheel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 310
    invoke-virtual {v0, v1}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcn/nubia/camera/y/b;->m:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->a()V

    :cond_0
    return-void
.end method

.method static synthetic o(Lcn/nubia/camera/y/b;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->O()V

    return-void
.end method

.method static synthetic p(Lcn/nubia/camera/y/b;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/camera/y/b;->i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    return-object p0
.end method

.method private p()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcn/nubia/camera/y/b;->m:Lcom/android/common/ui/NubiaProgressWheel;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 317
    invoke-virtual {v0, v1}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcn/nubia/camera/y/b;->m:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->b()V

    :cond_0
    return-void
.end method

.method static synthetic q(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private q()V
    .locals 1

    .line 374
    iget-object v0, p0, Lcn/nubia/camera/y/b;->o:Lcn/nubia/camera/y/i;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0}, Lcn/nubia/camera/y/i;->b()V

    .line 377
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->n()V

    return-void
.end method

.method private r()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcn/nubia/camera/y/b;->i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    const-string v0, "ui_change_interval"

    .line 382
    invoke-virtual {p0, v0}, Lcn/nubia/camera/y/b;->e(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0, v0}, Lcn/nubia/camera/y/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method private s()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcn/nubia/camera/y/b;->p:Lcn/nubia/camera/y/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcn/nubia/camera/y/h;->c()V

    .line 390
    iput-object v1, p0, Lcn/nubia/camera/y/b;->p:Lcn/nubia/camera/y/h;

    .line 392
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/y/b;->q:Lcn/nubia/camera/z/a/d;

    if-eqz v0, :cond_1

    .line 393
    invoke-virtual {v0}, Lcn/nubia/camera/z/a/d;->a()V

    .line 394
    iput-object v1, p0, Lcn/nubia/camera/y/b;->q:Lcn/nubia/camera/z/a/d;

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(IZ)V
    .locals 0

    .line 157
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(IZ)V

    return-void
.end method

.method public a(J)V
    .locals 2

    const-string p1, "IntervalometerFragment"

    const-string p2, "onTimeLapseStart"

    .line 200
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/y/b;->a:J

    .line 202
    iget-object p2, p0, Lcn/nubia/camera/y/b;->p:Lcn/nubia/camera/y/h;

    if-eqz p2, :cond_0

    .line 203
    iget-object v0, p0, Lcn/nubia/camera/y/b;->r:Lcn/nubia/camera/y/h$a;

    invoke-virtual {p2, v0}, Lcn/nubia/camera/y/h;->a(Lcn/nubia/camera/y/h$a;)V

    .line 204
    iget-object p2, p0, Lcn/nubia/camera/y/b;->p:Lcn/nubia/camera/y/h;

    invoke-virtual {p2}, Lcn/nubia/camera/y/h;->a()V

    :cond_0
    const-wide/16 v0, 0x0

    .line 206
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/y/b;->c(J)V

    .line 207
    iget-object p2, p0, Lcn/nubia/camera/y/b;->l:Lcom/android/common/ui/a/b;

    if-eqz p2, :cond_1

    .line 208
    invoke-virtual {p2}, Lcom/android/common/ui/a/b;->b()V

    :cond_1
    const-string p2, "OnIntervalometerStart"

    .line 212
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    check-cast p1, Lcn/nubia/camera/a/a;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 214
    iget-object p1, p0, Lcn/nubia/camera/y/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 215
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->o()V

    .line 216
    iget-object p1, p0, Lcn/nubia/camera/y/b;->i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcn/nubia/camera/y/b;->i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {p1, p2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b(Z)V

    const-string p1, "ui_change_interval"

    .line 218
    invoke-virtual {p0, p1}, Lcn/nubia/camera/y/b;->d(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, p1}, Lcn/nubia/camera/y/b;->f(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->M()V

    .line 222
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->m()V

    return-void
.end method

.method public a(Lcn/nubia/camera/ab/a$a;)V
    .locals 1

    .line 617
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/ab/a$a;)V

    .line 618
    sget-object v0, Lcn/nubia/camera/ab/a$a;->b:Lcn/nubia/camera/ab/a$a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcn/nubia/camera/ab/a$a;->a:Lcn/nubia/camera/ab/a$a;

    if-ne p1, v0, :cond_1

    .line 619
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne p1, v0, :cond_1

    .line 620
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->L()V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ZJJ)V
    .locals 0

    .line 465
    iget-object p1, p0, Lcn/nubia/camera/y/b;->t:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcn/nubia/camera/y/b;->o:Lcn/nubia/camera/y/i;

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_1

    .line 297
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->K()V

    goto :goto_0

    .line 299
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->L()V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(J)V
    .locals 0

    .line 227
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/y/b;->c(J)V

    return-void
.end method

.method public b(ZJJ)V
    .locals 0

    .line 460
    iget-object p1, p0, Lcn/nubia/camera/y/b;->t:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 305
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->b()V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    .line 358
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->c(Ljava/lang/String;)V

    .line 359
    iget-object p1, p0, Lcn/nubia/camera/y/b;->j:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 360
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "IntervalometerFragment"

    const-string v1, "onTimeLapseFinish"

    .line 232
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->m()V

    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1

    .line 367
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->d(Ljava/lang/String;)V

    .line 368
    iget-object p1, p0, Lcn/nubia/camera/y/b;->j:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d_()Z
    .locals 1

    .line 608
    iget-object v0, p0, Lcn/nubia/camera/y/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lcn/nubia/camera/y/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->performClick()Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 4

    const-string v0, "IntervalometerFragment"

    const-string v1, "onTimeLapseStop"

    .line 238
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcn/nubia/camera/y/b;->l:Lcom/android/common/ui/a/b;

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v1}, Lcom/android/common/ui/a/b;->e()V

    .line 242
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->n()V

    .line 245
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    check-cast v1, Lcn/nubia/camera/a/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 246
    iget-object v1, p0, Lcn/nubia/camera/y/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 247
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->p()V

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnIntervalometerStop mIsIdle="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcn/nubia/camera/y/b;->c:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-boolean v0, p0, Lcn/nubia/camera/y/b;->c:Z

    const-string v1, "ui_change_interval"

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcn/nubia/camera/y/b;->i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V

    .line 251
    iget-object v0, p0, Lcn/nubia/camera/y/b;->i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v2, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 252
    invoke-virtual {p0, v1}, Lcn/nubia/camera/y/b;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/y/b;->i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 255
    invoke-virtual {p0, v1}, Lcn/nubia/camera/y/b;->c(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0, v1}, Lcn/nubia/camera/y/b;->e(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/k/a/a;->f()J

    .line 259
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->N()V

    return-void
.end method

.method public i()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcn/nubia/camera/y/b;->t:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcn/nubia/camera/y/b;->t:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method public k()Z
    .locals 2

    .line 635
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    .line 636
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->L()V

    const/4 v0, 0x1

    return v0

    .line 639
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 3

    .line 660
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->u()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/y/b;->v:Lcn/nubia/camera/prosetting/ui/IntervalTimeView;

    invoke-virtual {v1}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->getAutoValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_intervalometer_night_scene_on_interval_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 662
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->u()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/y/b;->v:Lcn/nubia/camera/prosetting/ui/IntervalTimeView;

    invoke-virtual {v1}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->getAutoValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_intervalometer_night_scene_off_interval_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/y/b;->v:Lcn/nubia/camera/prosetting/ui/IntervalTimeView;

    invoke-direct {p0}, Lcn/nubia/camera/y/b;->Q()Z

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->a(ZLjava/lang/String;)V

    .line 665
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->O()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onCreate(Landroid/os/Bundle;)V

    .line 126
    iget-boolean p1, p0, Lcn/nubia/camera/y/b;->d:Z

    if-eqz p1, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->J()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 135
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 136
    iget-boolean p3, p0, Lcn/nubia/camera/y/b;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p3, "IntervalometerFragment"

    const-string v0, "onCreateView"

    .line 138
    invoke-static {p3, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x7f0c00c6

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Lcn/nubia/camera/y/b;->d(Landroid/view/View;)V

    .line 142
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p0, p3, p3, p3, p2}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/y/b;->w:Lcn/nubia/camera/q/c;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcn/nubia/camera/y/b;->d:Z

    if-eqz v0, :cond_0

    .line 191
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroy()V

    return-void

    .line 194
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->s()V

    .line 195
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 149
    iget-boolean v0, p0, Lcn/nubia/camera/y/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/y/b;->w:Lcn/nubia/camera/q/c;

    invoke-static {p0, v0}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "IntervalometerFragment"

    const-string v1, "onPause"

    .line 171
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-boolean v0, p0, Lcn/nubia/camera/y/b;->d:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_1

    .line 178
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->L()V

    goto :goto_0

    .line 180
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->p()V

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/y/b;->k:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 182
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->q()V

    .line 185
    :goto_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 162
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 163
    iget-boolean v0, p0, Lcn/nubia/camera/y/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "IntervalometerFragment"

    const-string v1, "onResume"

    .line 164
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcn/nubia/camera/y/b;->r()V

    .line 166
    invoke-virtual {p0}, Lcn/nubia/camera/y/b;->l()V

    return-void
.end method
