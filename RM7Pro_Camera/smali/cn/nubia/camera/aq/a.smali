.class public Lcn/nubia/camera/aq/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aq/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/preference/PreferenceGroup;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/preference/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:[Lcn/nubia/camera/aq/a$a;

.field private g:Landroid/content/SharedPreferences;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/android/preference/e;

.field private j:Lcn/nubia/camera/aq/b;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/aq/d;",
            ">;"
        }
    .end annotation
.end field

.field private l:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aq/a;->b:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aq/a;->e:Ljava/util/HashMap;

    .line 57
    iput-object p1, p0, Lcn/nubia/camera/aq/a;->a:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcn/nubia/camera/aq/a;->h:Ljava/util/ArrayList;

    .line 59
    new-instance p2, Lcom/android/preference/e;

    invoke-direct {p2, p1}, Lcom/android/preference/e;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/camera/aq/a;->i:Lcom/android/preference/e;

    .line 60
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcn/nubia/camera/aq/a;->c:Ljava/util/HashMap;

    .line 61
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcn/nubia/camera/aq/a;->d:Ljava/util/HashMap;

    const/4 p2, 0x0

    if-nez p4, :cond_0

    .line 63
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/aq/a;->g:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 65
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, "_preferences_third"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/aq/a;->g:Landroid/content/SharedPreferences;

    .line 67
    :goto_0
    new-instance p1, Lcn/nubia/camera/aq/b;

    iget-object p4, p0, Lcn/nubia/camera/aq/a;->g:Landroid/content/SharedPreferences;

    invoke-direct {p1, p4}, Lcn/nubia/camera/aq/b;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcn/nubia/camera/aq/a;->j:Lcn/nubia/camera/aq/b;

    .line 68
    new-array p1, p3, [Lcn/nubia/camera/aq/a$a;

    iput-object p1, p0, Lcn/nubia/camera/aq/a;->f:[Lcn/nubia/camera/aq/a$a;

    .line 69
    :goto_1
    iget-object p1, p0, Lcn/nubia/camera/aq/a;->f:[Lcn/nubia/camera/aq/a$a;

    array-length p3, p1

    if-ge p2, p3, :cond_1

    const/4 p3, 0x0

    .line 70
    aput-object p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 72
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/aq/a;->k:Ljava/util/ArrayList;

    .line 73
    invoke-direct {p0}, Lcn/nubia/camera/aq/a;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/camera/aq/a;->l:J

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aq/a;)Ljava/util/ArrayList;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/camera/aq/a;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a(Lcn/nubia/camera/af/b;Lcom/android/preference/PreferenceGroup;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 3

    const-string v0, "CameraSettings"

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParseDone: ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcn/nubia/camera/aq/a;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/preference/c;

    .line 418
    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2, p3}, Lcn/nubia/camera/aq/a;->a(Ljava/lang/String;Lcom/android/preference/c;Lcom/android/preference/PreferenceGroup;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 419
    iget-object p3, p0, Lcn/nubia/camera/aq/a;->b:Ljava/lang/Object;

    monitor-enter p3

    .line 420
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aq/a;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    iget-object p3, p0, Lcn/nubia/camera/aq/a;->k:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    .line 423
    check-cast v2, Lcn/nubia/camera/aq/d;

    if-eqz v2, :cond_0

    .line 425
    invoke-interface {v2, p1, p2}, Lcn/nubia/camera/aq/d;->a(Lcn/nubia/camera/af/b;Lcom/android/preference/PreferenceGroup;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 421
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcn/nubia/camera/aq/a;Lcn/nubia/camera/af/b;Lcom/android/preference/PreferenceGroup;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/af/b;Lcom/android/preference/PreferenceGroup;Landroid/hardware/camera2/CameraCharacteristics;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/android/preference/c;Lcom/android/preference/PreferenceGroup;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0

    .line 202
    invoke-virtual {p3, p2}, Lcom/android/preference/PreferenceGroup;->a(Landroid/content/SharedPreferences;)V

    .line 203
    invoke-virtual {p3}, Lcom/android/preference/PreferenceGroup;->c()V

    .line 204
    new-instance p2, Lcn/nubia/camera/aq/c;

    invoke-direct {p2, p1}, Lcn/nubia/camera/aq/c;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcn/nubia/camera/aq/a;->a:Landroid/content/Context;

    invoke-virtual {p2, p1, p3, p4}, Lcn/nubia/camera/aq/c;->a(Landroid/content/Context;Lcom/android/preference/PreferenceGroup;Landroid/hardware/camera2/CameraCharacteristics;)V

    return-void
.end method

.method private a(JLandroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;Z)Z
    .locals 2

    const-wide/32 v0, 0x1b7740

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetPreferenceWhenOver30min: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraSettings"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p5, :cond_1

    const/4 p1, 0x0

    const-string p2, "pref_moresetting_picturesize_key"

    .line 355
    invoke-interface {p4, p2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 356
    sget-object p4, Lcn/nubia/camera/aq/f;->e:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 357
    invoke-interface {p3, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const-string p1, "pref_third_arith_hdr_key"

    .line 386
    invoke-interface {p3, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;Lcn/nubia/camera/af/a;Ljava/lang/String;)Z
    .locals 8

    .line 233
    iget-object v0, p0, Lcn/nubia/camera/aq/a;->a:Landroid/content/Context;

    const v1, 0x7f0f0228

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_electronic_aperture_key"

    .line 234
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x1

    if-nez v0, :cond_0

    .line 236
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 240
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/aq/a;->a:Landroid/content/Context;

    const v2, 0x7f0f0229

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_electronic_compensation_key"

    .line 241
    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v6

    .line 247
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/aq/a;->a:Landroid/content/Context;

    const v2, 0x7f0f01b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_anti_shake"

    .line 248
    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 250
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v6

    .line 255
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/aq/a;->a:Landroid/content/Context;

    const v2, 0x7f0f01f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_microspur_magnifier"

    .line 256
    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 258
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v6

    .line 262
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    iget-object v2, p0, Lcn/nubia/camera/aq/a;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 264
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_c

    .line 265
    :cond_4
    iget-object v2, p0, Lcn/nubia/camera/aq/a;->e:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "none"

    const-string v2, "pref_pretty_effect_key"

    .line 267
    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 268
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v6

    :cond_5
    const-string v2, "pref_normal_effect_key"

    .line 272
    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 273
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v6

    :cond_6
    const-string v2, "pref_female_effect_key"

    .line 277
    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 278
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v6

    :cond_7
    const-string v2, "pref_male_effect_key"

    .line 282
    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 283
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v6

    :cond_8
    const-string v1, "pref_gender_key"

    .line 287
    invoke-interface {p2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 288
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v6

    .line 293
    :cond_9
    iget-object v1, p0, Lcn/nubia/camera/aq/a;->a:Landroid/content/Context;

    const v2, 0x7f0f01d5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "torch"

    const-string v3, "pref_camera_flashmode_key"

    .line 295
    invoke-interface {p2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 296
    invoke-interface {p1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v6

    :cond_a
    const-string v3, "pref_video_flashmode_key"

    .line 299
    invoke-interface {p2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 300
    invoke-interface {p1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v7, v6

    goto :goto_1

    :cond_b
    move v7, v0

    .line 304
    :goto_1
    iget-wide v1, p0, Lcn/nubia/camera/aq/a;->l:J

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/aq/a;->a(JLandroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;Z)Z

    .line 305
    iget-wide v1, p0, Lcn/nubia/camera/aq/a;->l:J

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/aq/a;->b(JLandroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;Z)Z

    move v0, v7

    :cond_c
    const-string v1, "pref_bigaperture_focus_length"

    const/high16 v2, 0x40800000    # 4.0f

    .line 308
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    sub-float/2addr v3, v2

    .line 309
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    .line 310
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "pref_faceplus_focus_length_value"

    .line 311
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v6

    :cond_d
    const-string v1, "pref_camera_interval_switch_key"

    const-string v2, "off"

    .line 315
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 317
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v6

    :cond_e
    const-string v1, "-1"

    const-string v2, "pref_camera_interval_time_key"

    .line 322
    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 324
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v6

    .line 328
    :cond_f
    iget-object v1, p0, Lcn/nubia/camera/aq/a;->a:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, "pref_camera_recordlocation_key"

    .line 330
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_10
    move v6, v0

    :goto_2
    return v6
.end method

.method static synthetic b(Lcn/nubia/camera/aq/a;)Lcom/android/preference/e;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/camera/aq/a;->i:Lcom/android/preference/e;

    return-object p0
.end method

.method private b(JLandroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;Z)Z
    .locals 3

    const-wide/32 v0, 0x493e0

    cmp-long p4, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p4, :cond_1

    .line 396
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetPreferenceWhenOver5min: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraSettings"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_0

    const-string p1, "pref_camera_delay_shoot_key"

    .line 398
    invoke-interface {p3, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v1, v0

    :cond_0
    if-nez p5, :cond_1

    const-string p1, "pref_camera_flashmode_key"

    .line 403
    invoke-interface {p3, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "pref_video_flashmode_key"

    .line 404
    invoke-interface {p3, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "pref_selfie_flashmode_key"

    .line 405
    invoke-interface {p3, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "pref_live_photo_key"

    .line 406
    invoke-interface {p3, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method private c()J
    .locals 6

    .line 338
    iget-object v0, p0, Lcn/nubia/camera/aq/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_use_camera_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-wide v4

    :cond_0
    return-wide v2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/android/preference/PreferenceGroup;
    .locals 2

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/aq/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/aq/a;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/preference/PreferenceGroup;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 5

    .line 88
    iget-object v0, p0, Lcn/nubia/camera/aq/a;->f:[Lcn/nubia/camera/aq/a$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 90
    invoke-virtual {v3, v4}, Lcn/nubia/camera/aq/a$a;->cancel(Z)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/camera/af/b;)V
    .locals 0

    return-void
.end method

.method public a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;ZZ)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/aq/a;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcn/nubia/camera/aq/a;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 137
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/camera/aq/a;->b(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;ZZ)V

    .line 139
    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcn/nubia/camera/aq/a;->a(Ljava/lang/String;)Lcom/android/preference/PreferenceGroup;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 141
    invoke-direct {p0, p1, p3, v0}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/af/b;Lcom/android/preference/PreferenceGroup;Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->b()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 145
    iget-object p4, p0, Lcn/nubia/camera/aq/a;->f:[Lcn/nubia/camera/aq/a$a;

    array-length v1, p4

    if-lez v1, :cond_3

    .line 146
    aget-object p4, p4, p3

    if-nez p4, :cond_3

    .line 147
    new-instance p4, Lcn/nubia/camera/aq/a$a;

    invoke-direct {p4, p0, p1, v0}, Lcn/nubia/camera/aq/a$a;-><init>(Lcn/nubia/camera/aq/a;Lcn/nubia/camera/af/b;Landroid/hardware/camera2/CameraCharacteristics;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 148
    iget-object v2, p0, Lcn/nubia/camera/aq/a;->h:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    invoke-virtual {p4, v0}, Lcn/nubia/camera/aq/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/aq/a;->f:[Lcn/nubia/camera/aq/a$a;

    aput-object p4, v0, p3

    .line 154
    :cond_3
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "initListPreference, ID:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", MEMBER: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraSettings"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Lcn/nubia/camera/aq/d;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/aq/a;->k:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/aq/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 8

    .line 171
    invoke-virtual {p0, p1}, Lcn/nubia/camera/aq/a;->b(Ljava/lang/String;)Lcom/android/preference/c;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 173
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v0, "pref_camera_member_key"

    .line 174
    invoke-interface {v7, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "pref_second_display_show_key"

    .line 175
    invoke-interface {v7, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_key_capture_camera"

    .line 177
    invoke-interface {v7, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    :cond_0
    iget-wide v1, p0, Lcn/nubia/camera/aq/a;->l:J

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, v7

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/aq/a;->a(JLandroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;Z)Z

    .line 180
    iget-wide v1, p0, Lcn/nubia/camera/aq/a;->l:J

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/aq/a;->b(JLandroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;Z)Z

    .line 181
    invoke-direct {p0, v7, v6, p2, p1}, Lcn/nubia/camera/aq/a;->a(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    .line 182
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/android/preference/c;
    .locals 1

    .line 164
    iget-object v0, p0, Lcn/nubia/camera/aq/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/preference/c;

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "0"

    return-object v0
.end method

.method public b(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;ZZ)V
    .locals 3

    .line 214
    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/camera/aq/a;->b(Ljava/lang/String;)Lcom/android/preference/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/android/preference/c;

    iget-object v1, p0, Lcn/nubia/camera/aq/a;->j:Lcn/nubia/camera/aq/b;

    invoke-direct {v0, v1}, Lcom/android/preference/c;-><init>(Lcom/android/preference/b;)V

    .line 219
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/aq/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2, p3}, Lcn/nubia/camera/aq/b;->a(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/camera/af/a;Z)Ljava/lang/String;

    move-result-object p3

    .line 220
    iget-object v1, p0, Lcn/nubia/camera/aq/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p3}, Lcom/android/preference/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    iget-object p3, p0, Lcn/nubia/camera/aq/a;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    .line 226
    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/aq/a;->b(Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    :cond_1
    return-void
.end method

.method public b(Lcn/nubia/camera/aq/d;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/aq/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 2

    .line 193
    invoke-virtual {p0, p1}, Lcn/nubia/camera/aq/a;->b(Ljava/lang/String;)Lcom/android/preference/c;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 195
    invoke-direct {p0, v1, v0, p2, p1}, Lcn/nubia/camera/aq/a;->a(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 198
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
