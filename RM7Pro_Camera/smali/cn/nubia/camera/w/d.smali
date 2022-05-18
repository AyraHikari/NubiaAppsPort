.class public Lcn/nubia/camera/w/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/w/d$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static c:[Lcn/nubia/camera/w/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/camera/w/d;->a:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/camera/w/d;->b:Ljava/util/HashMap;

    const/4 v0, 0x7

    new-array v0, v0, [Lcn/nubia/camera/w/a$e;

    .line 1217
    new-instance v1, Lcn/nubia/camera/w/a$e;

    const/4 v2, 0x0

    const v3, 0x7f0f0214

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/w/a$e;-><init>(II)V

    aput-object v1, v0, v2

    new-instance v1, Lcn/nubia/camera/w/a$e;

    const/16 v2, 0xbb8

    const v3, 0x7f0f0218

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/w/a$e;-><init>(II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcn/nubia/camera/w/a$e;

    const/16 v2, 0xfa0

    const v3, 0x7f0f0217

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/w/a$e;-><init>(II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcn/nubia/camera/w/a$e;

    const/16 v2, 0x1388

    const v3, 0x7f0f0216

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/w/a$e;-><init>(II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcn/nubia/camera/w/a$e;

    const/16 v2, 0x1770

    const v3, 0x7f0f0215

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/w/a$e;-><init>(II)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcn/nubia/camera/w/a$e;

    const/16 v2, 0x1b58

    const v3, 0x7f0f021a

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/w/a$e;-><init>(II)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcn/nubia/camera/w/a$e;

    const v2, 0x7fffffff

    const v3, 0x7f0f0219

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/w/a$e;-><init>(II)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcn/nubia/camera/w/d;->c:[Lcn/nubia/camera/w/a$e;

    return-void
.end method

.method public static A(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 1

    .line 701
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/nubia/camera/three_a/a;->a(Lcom/android/preference/c;Lcn/nubia/camera/af/a;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static B(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 2

    .line 706
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/three_a/a;->a(Lcom/android/preference/c;Lcn/nubia/camera/af/a;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 708
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f0f0027

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 710
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static C(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 1

    .line 716
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f0f0228

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static D(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 2

    .line 721
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-static {p0}, Lcn/nubia/camera/w/d;->C(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_camera_electronic_aperture_key"

    invoke-virtual {v0, v1, p0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static E(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 3

    .line 726
    invoke-static {p0}, Lcn/nubia/camera/w/d;->D(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    .line 727
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 728
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f0f00ac

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static F(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 1

    .line 735
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f0f0229

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static G(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 2

    .line 740
    invoke-static {p0}, Lcn/nubia/camera/w/d;->F(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p0

    const-string v1, "pref_camera_electronic_compensation_key"

    invoke-virtual {p0, v1, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static H(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 0

    .line 746
    invoke-static {p0}, Lcn/nubia/camera/w/d;->G(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static I(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 0

    const-string p0, "-1"

    return-object p0
.end method

.method public static J(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 2

    .line 756
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-static {p0}, Lcn/nubia/camera/w/d;->I(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_camera_interval_time_key"

    invoke-virtual {v0, v1, p0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static K(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 2

    .line 761
    invoke-static {p0}, Lcn/nubia/camera/w/d;->J(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    .line 762
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f0f00de

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 765
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static L(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 770
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static M(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 2

    .line 774
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/camera/aq/f;->a(Lcn/nubia/camera/af/a;)I

    move-result p0

    const-string v1, "pref_camera_exposure_compensation"

    invoke-virtual {v0, v1, p0}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static N(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 3

    .line 778
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/camera/aq/f;->a(Lcn/nubia/camera/af/a;)I

    move-result p0

    const-string v1, "pref_camera_exposure_compensation"

    invoke-virtual {v0, v1, p0}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/high16 v0, 0x40800000    # 4.0f

    if-ltz p0, :cond_0

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float p0, p0

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-float p0, p0

    div-float/2addr p0, v0

    .line 782
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static O(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    .line 788
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static P(Lcn/nubia/camera/ad/a;)I
    .locals 2

    .line 793
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    .line 794
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    const v1, 0x7f0f01f4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v1, "pref_camera_metering_mode_key"

    .line 793
    invoke-virtual {v0, v1, p0}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static Q(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 3

    .line 800
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    .line 801
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f01f4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "pref_camera_metering_mode_key"

    .line 800
    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 804
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f0f00d5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 806
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f0f00d7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 808
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f0f00e4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static R(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 2

    .line 818
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p0

    invoke-static {}, Lcn/nubia/camera/w/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_star_number_key"

    invoke-virtual {p0, v1, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static S(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 3

    .line 822
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p0

    invoke-static {}, Lcn/nubia/camera/w/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_star_number_key"

    invoke-virtual {p0, v1, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, -0x5

    mul-int/lit8 p0, p0, 0xa

    const-string v0, "%"

    if-ltz p0, :cond_0

    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 827
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static T(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 2

    .line 836
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p0

    invoke-static {}, Lcn/nubia/camera/w/d;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_star_track_duration_key"

    invoke-virtual {p0, v1, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static U(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 3

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p0

    invoke-static {}, Lcn/nubia/camera/w/d;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_star_track_duration_key"

    invoke-virtual {p0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "h"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static V(Lcn/nubia/camera/ad/a;)[Landroid/util/Rational;
    .locals 7

    .line 892
    new-instance v0, Landroid/util/Rational;

    const/4 v1, 0x1

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    .line 893
    invoke-static {p0}, Lcn/nubia/camera/w/d;->ab(Lcn/nubia/camera/ad/a;)[Landroid/util/Rational;

    move-result-object p0

    .line 894
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 895
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 896
    invoke-virtual {v4}, Landroid/util/Rational;->floatValue()F

    move-result v5

    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 897
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 900
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/util/Rational;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Rational;

    return-object p0
.end method

.method public static W(Lcn/nubia/camera/ad/a;)[Landroid/util/Rational;
    .locals 8

    .line 906
    new-instance v0, Landroid/util/Rational;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    .line 907
    new-instance v2, Landroid/util/Rational;

    const/16 v3, 0xa

    invoke-direct {v2, v1, v3}, Landroid/util/Rational;-><init>(II)V

    .line 908
    invoke-static {p0}, Lcn/nubia/camera/w/d;->ab(Lcn/nubia/camera/ad/a;)[Landroid/util/Rational;

    move-result-object p0

    .line 909
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 910
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p0, v4

    .line 911
    invoke-virtual {v5, v2}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 914
    :cond_0
    invoke-virtual {v5}, Landroid/util/Rational;->floatValue()F

    move-result v6

    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 915
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 918
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/util/Rational;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Rational;

    return-object p0
.end method

.method public static X(Lcn/nubia/camera/ad/a;)[Landroid/util/Rational;
    .locals 8

    .line 924
    new-instance v0, Landroid/util/Rational;

    const/16 v1, 0xb4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    .line 925
    new-instance v1, Landroid/util/Rational;

    const/16 v3, 0x78

    invoke-direct {v1, v3, v2}, Landroid/util/Rational;-><init>(II)V

    .line 926
    invoke-static {p0}, Lcn/nubia/camera/w/d;->ab(Lcn/nubia/camera/ad/a;)[Landroid/util/Rational;

    move-result-object p0

    .line 927
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 928
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p0, v4

    .line 929
    invoke-virtual {v5}, Landroid/util/Rational;->floatValue()F

    move-result v6

    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 930
    invoke-virtual {v5, v1}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 931
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 934
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/util/Rational;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Rational;

    return-object p0
.end method

.method public static Y(Lcn/nubia/camera/ad/a;)[Landroid/util/Rational;
    .locals 2

    .line 1148
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 1149
    invoke-static {p0}, Lcn/nubia/camera/w/d;->V(Lcn/nubia/camera/ad/a;)[Landroid/util/Rational;

    move-result-object p0

    return-object p0

    .line 1150
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_1

    .line 1151
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1152
    invoke-static {p0}, Lcn/nubia/camera/w/d;->W(Lcn/nubia/camera/ad/a;)[Landroid/util/Rational;

    move-result-object p0

    return-object p0

    .line 1153
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_2

    .line 1154
    invoke-static {p0}, Lcn/nubia/camera/w/d;->X(Lcn/nubia/camera/ad/a;)[Landroid/util/Rational;

    move-result-object p0

    return-object p0

    .line 1156
    :cond_2
    invoke-static {p0}, Lcn/nubia/camera/w/d;->ab(Lcn/nubia/camera/ad/a;)[Landroid/util/Rational;

    move-result-object p0

    return-object p0
.end method

.method public static Z(Lcn/nubia/camera/ad/a;)[Ljava/lang/Integer;
    .locals 6

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 1191
    fill-array-data v1, :array_0

    .line 1192
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object p0

    .line 1193
    invoke-virtual {p0}, Lcn/nubia/b/b;->b()Landroid/util/Range;

    move-result-object v2

    .line 1194
    invoke-virtual {p0}, Lcn/nubia/b/b;->c()Landroid/util/Range;

    move-result-object p0

    .line 1195
    new-instance v3, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/2addr v2, p0

    div-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v3, v4, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1196
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    .line 1197
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1199
    aget v4, v1, v2

    .line 1200
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1201
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1204
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    check-cast p0, [Ljava/lang/Integer;

    return-object p0

    :array_0
    .array-data 4
        0x64
        0xc8
        0x190
        0x320
        0x640
        0xc80
        0x1900
        0x3200
        0x6400
    .end array-data
.end method

.method private static a(JLcn/nubia/camera/af/a;Ljava/lang/String;)J
    .locals 4

    .line 529
    invoke-static {p2, p3}, Lcn/nubia/camera/w/d;->c(Lcn/nubia/camera/af/a;Ljava/lang/String;)[Landroid/util/Rational;

    move-result-object p2

    .line 530
    array-length p3, p2

    add-int/lit8 p3, p3, -0x1

    aget-object p2, p2, p3

    .line 531
    sget-wide v0, Lcn/nubia/camera/aq/f;->h:J

    invoke-virtual {p2}, Landroid/util/Rational;->getNumerator()I

    move-result p3

    int-to-long v2, p3

    mul-long/2addr v0, v2

    invoke-virtual {p2}, Landroid/util/Rational;->getDenominator()I

    move-result p2

    int-to-long p2, p2

    div-long/2addr v0, p2

    cmp-long p2, p0, v0

    if-lez p2, :cond_0

    return-wide v0

    :cond_0
    return-wide p0
.end method

.method public static a(Lcom/android/preference/c;Lcn/nubia/camera/af/a;Ljava/lang/String;)J
    .locals 6

    const-string v0, "pref_camera_exposure_time_min_key"

    const-wide/16 v1, 0x0

    .line 522
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/preference/c;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 523
    invoke-static {p1}, Lcn/nubia/camera/aq/e;->a(Lcn/nubia/camera/af/a;)J

    move-result-wide v2

    const-string v4, "pref_camera_exposure_time_nanosec_key"

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/preference/c;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    mul-long/2addr v0, v4

    .line 524
    sget-wide v4, Lcn/nubia/camera/aq/f;->h:J

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    .line 525
    invoke-static {v0, v1, p1, p2}, Lcn/nubia/camera/w/d;->a(JLcn/nubia/camera/af/a;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    .line 814
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1228
    :goto_0
    sget-object v1, Lcn/nubia/camera/w/d;->c:[Lcn/nubia/camera/w/a$e;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1229
    aget-object v1, v1, v0

    iget v1, v1, Lcn/nubia/camera/w/a$e;->a:I

    if-ne v1, p1, :cond_0

    .line 1230
    sget-object p1, Lcn/nubia/camera/w/d;->c:[Lcn/nubia/camera/w/a$e;

    aget-object p1, p1, v0

    iget p1, p1, Lcn/nubia/camera/w/a$e;->b:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1233
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcn/nubia/camera/af/a;)Ljava/lang/String;
    .locals 1

    .line 661
    sget-object v0, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-ne p1, v0, :cond_0

    const p1, 0x7f0f01f0

    .line 662
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f0f01ee

    .line 664
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/preference/c;Landroid/content/Context;Lcn/nubia/camera/af/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 672
    invoke-static {p1, p2}, Lcn/nubia/camera/w/d;->a(Landroid/content/Context;Lcn/nubia/camera/af/a;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pref_camera_iso_key"

    invoke-virtual {p0, p2, p1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 673
    invoke-static {p0, p3}, Lcn/nubia/camera/w/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 687
    invoke-static {p1}, Lcn/nubia/camera/w/d;->b(Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object p1

    .line 688
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    .line 689
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 690
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Lcn/nubia/camera/ad/a;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/ad/a;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    new-instance v9, Lcn/nubia/camera/w/d$a;

    sget-object v2, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    .line 96
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->m(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v6

    .line 97
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->l(Lcn/nubia/camera/ad/a;)Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v7

    .line 98
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->n(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    const v3, 0x7f0f00e3

    const v4, 0x7f090190

    const v5, 0x7f0902d3

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v11, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    .line 103
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->r(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v15

    .line 104
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->s(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v16

    .line 105
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->t(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v17

    const v12, 0x7f0f00e6

    const v13, 0x7f090176

    const v14, 0x7f09039a

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    .line 110
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->w(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 111
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 112
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->y(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    const v4, 0x7f0f00e0

    const v5, 0x7f090186

    const v6, 0x7f0901cf

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/b;->k()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 114
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00e1

    const v5, 0x7f090182

    const v6, 0x7f090157

    .line 118
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->z(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->A(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 120
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->B(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v11, Lcn/nubia/camera/w/b;->h:Lcn/nubia/camera/w/b;

    const v12, 0x7f0f00dd

    const v13, 0x7f090180

    const v14, 0x7f090145

    .line 126
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->L(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v15

    .line 127
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->M(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v16

    .line 128
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->N(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v17

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->k()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->i:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00df

    const v5, 0x7f090184

    const v6, 0x7f0901c2

    .line 134
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->I(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 135
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->J(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 136
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->K(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public static a(Lcn/nubia/camera/ad/a;Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/ad/a;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/b;->f()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-wide v3, Lcn/nubia/camera/aq/f;->h:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 148
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00e3

    const v5, 0x7f090190

    const v6, 0x7f0902d3

    .line 152
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->m(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 153
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->l(Lcn/nubia/camera/ad/a;)Landroid/util/Rational;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v8

    .line 154
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->n(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v11, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    const v12, 0x7f0f00e6

    const v13, 0x7f090176

    const v14, 0x7f09039a

    .line 160
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->r(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v15

    .line 161
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->s(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v16

    .line 162
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->t(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v17

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00e0

    const v5, 0x7f090186

    const v6, 0x7f0901cf

    .line 167
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->w(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 168
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 169
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->y(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/b;->k()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 171
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00e1

    const v5, 0x7f090182

    const v6, 0x7f090157

    .line 175
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->z(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 176
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->A(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 177
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->B(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_1
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v11, Lcn/nubia/camera/w/b;->h:Lcn/nubia/camera/w/b;

    const v12, 0x7f0f00dd

    const v13, 0x7f090180

    const v14, 0x7f090145

    .line 183
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->L(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v15

    .line 184
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->M(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v16

    .line 185
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->N(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v17

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static a(Ljava/util/List;Lcn/nubia/camera/w/b;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;",
            "Lcn/nubia/camera/w/b;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 1240
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1241
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v2}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object v2

    if-ne v2, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static a(Lcn/nubia/camera/af/a;Ljava/lang/String;)[Landroid/util/Rational;
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/util/Rational;

    .line 1096
    new-instance v2, Landroid/util/Rational;

    const/4 v3, 0x1

    const/16 v4, 0x3c

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x1e

    invoke-direct {v2, v3, v5}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v1, v3

    .line 1097
    invoke-static {p0, p1}, Lcn/nubia/camera/w/d;->d(Lcn/nubia/camera/af/a;Ljava/lang/String;)[Landroid/util/Rational;

    move-result-object p0

    .line 1098
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    array-length v2, p0

    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v5, p0, v3

    move v6, v4

    :goto_1
    if-ge v6, v0, :cond_2

    .line 1100
    aget-object v7, v1, v6

    .line 1101
    invoke-virtual {v5}, Landroid/util/Rational;->floatValue()F

    move-result v8

    invoke-virtual {v7}, Landroid/util/Rational;->floatValue()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    .line 1102
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1103
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1105
    :cond_0
    invoke-virtual {v5}, Landroid/util/Rational;->floatValue()F

    move-result v8

    invoke-virtual {v7}, Landroid/util/Rational;->floatValue()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 1106
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1107
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1112
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/util/Rational;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Rational;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)[Landroid/util/Rational;
    .locals 19

    const/16 v0, 0x16

    new-array v1, v0, [Landroid/util/Rational;

    .line 1049
    new-instance v2, Landroid/util/Rational;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/util/Rational;

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/util/Rational;

    const/4 v6, -0x2

    invoke-direct {v2, v6, v4}, Landroid/util/Rational;-><init>(II)V

    const/4 v7, 0x2

    aput-object v2, v1, v7

    new-instance v2, Landroid/util/Rational;

    const/4 v8, -0x3

    invoke-direct {v2, v8, v4}, Landroid/util/Rational;-><init>(II)V

    const/4 v9, 0x3

    aput-object v2, v1, v9

    new-instance v2, Landroid/util/Rational;

    const v10, 0xea60

    invoke-direct {v2, v4, v10}, Landroid/util/Rational;-><init>(II)V

    const/4 v11, 0x4

    aput-object v2, v1, v11

    new-instance v2, Landroid/util/Rational;

    const/16 v12, 0x2710

    invoke-direct {v2, v4, v12}, Landroid/util/Rational;-><init>(II)V

    const/4 v12, 0x5

    aput-object v2, v1, v12

    new-instance v2, Landroid/util/Rational;

    const/16 v13, 0x1388

    invoke-direct {v2, v4, v13}, Landroid/util/Rational;-><init>(II)V

    const/4 v14, 0x6

    aput-object v2, v1, v14

    new-instance v2, Landroid/util/Rational;

    const/16 v15, 0x9c4

    invoke-direct {v2, v4, v15}, Landroid/util/Rational;-><init>(II)V

    const/4 v15, 0x7

    aput-object v2, v1, v15

    new-instance v2, Landroid/util/Rational;

    const/16 v10, 0x3e8

    invoke-direct {v2, v4, v10}, Landroid/util/Rational;-><init>(II)V

    const/16 v10, 0x8

    aput-object v2, v1, v10

    new-instance v2, Landroid/util/Rational;

    const/16 v15, 0x320

    invoke-direct {v2, v4, v15}, Landroid/util/Rational;-><init>(II)V

    const/16 v17, 0x9

    aput-object v2, v1, v17

    new-instance v2, Landroid/util/Rational;

    const/16 v15, 0x190

    invoke-direct {v2, v4, v15}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0xa

    aput-object v2, v1, v15

    new-instance v2, Landroid/util/Rational;

    const/16 v14, 0xc8

    invoke-direct {v2, v4, v14}, Landroid/util/Rational;-><init>(II)V

    const/16 v14, 0xb

    aput-object v2, v1, v14

    new-instance v2, Landroid/util/Rational;

    const/16 v14, 0x64

    invoke-direct {v2, v4, v14}, Landroid/util/Rational;-><init>(II)V

    const/16 v14, 0xc

    aput-object v2, v1, v14

    new-instance v2, Landroid/util/Rational;

    const/16 v14, 0x50

    invoke-direct {v2, v4, v14}, Landroid/util/Rational;-><init>(II)V

    const/16 v14, 0xd

    aput-object v2, v1, v14

    new-instance v2, Landroid/util/Rational;

    const/16 v14, 0x28

    invoke-direct {v2, v4, v14}, Landroid/util/Rational;-><init>(II)V

    const/16 v14, 0xe

    aput-object v2, v1, v14

    new-instance v2, Landroid/util/Rational;

    const/16 v14, 0x14

    invoke-direct {v2, v4, v14}, Landroid/util/Rational;-><init>(II)V

    const/16 v18, 0xf

    aput-object v2, v1, v18

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v4, v15}, Landroid/util/Rational;-><init>(II)V

    const/16 v18, 0x10

    aput-object v2, v1, v18

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v4, v10}, Landroid/util/Rational;-><init>(II)V

    const/16 v18, 0x11

    aput-object v2, v1, v18

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v4, v11}, Landroid/util/Rational;-><init>(II)V

    const/16 v18, 0x12

    aput-object v2, v1, v18

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v4, v7}, Landroid/util/Rational;-><init>(II)V

    const/16 v18, 0x13

    aput-object v2, v1, v18

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v4, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v1, v14

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v7, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v18, 0x15

    aput-object v2, v1, v18

    new-array v0, v0, [Landroid/util/Rational;

    .line 1058
    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v3

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v4

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v6, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v7

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v8, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v9

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v4, v13}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v11

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0xfa0

    invoke-direct {v2, v4, v5}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v12

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0xbb8

    invoke-direct {v2, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/4 v5, 0x6

    aput-object v2, v0, v5

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x7d0

    invoke-direct {v2, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/4 v5, 0x7

    aput-object v2, v0, v5

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x3e8

    invoke-direct {v2, v4, v5}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v10

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x320

    invoke-direct {v2, v4, v5}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v17

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x190

    invoke-direct {v2, v4, v5}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v15

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0xc8

    invoke-direct {v2, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0xb

    aput-object v2, v0, v5

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x64

    invoke-direct {v2, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0xc

    aput-object v2, v0, v5

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x50

    invoke-direct {v2, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0xd

    aput-object v2, v0, v5

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x28

    invoke-direct {v2, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0xe

    aput-object v2, v0, v5

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v4, v14}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0xf

    aput-object v2, v0, v5

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v4, v15}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0x10

    aput-object v2, v0, v5

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v4, v10}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0x11

    aput-object v2, v0, v5

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v4, v11}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0x12

    aput-object v2, v0, v5

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v4, v7}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0x13

    aput-object v2, v0, v5

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v4, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v14

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v7, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0x15

    aput-object v2, v0, v5

    .line 1067
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    move-object/from16 v5, p0

    invoke-virtual {v2, v5}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v2

    .line 1068
    invoke-virtual {v2}, Lcn/nubia/b/b;->f()Landroid/util/Range;

    move-result-object v2

    .line 1069
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_5

    .line 1072
    new-instance v6, Landroid/util/Rational;

    const v7, 0xea60

    invoke-direct {v6, v4, v7}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v6}, Landroid/util/Rational;->floatValue()F

    move-result v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v4, v10

    float-to-long v10, v4

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v4, v10, v12

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1077
    :goto_0
    array-length v0, v1

    if-ge v3, v0, :cond_5

    .line 1078
    aget-object v0, v1, v3

    .line 1079
    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v4, v10

    float-to-long v10, v4

    .line 1080
    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v4

    const/high16 v12, 0x42700000    # 60.0f

    cmpl-float v4, v4, v12

    if-ltz v4, :cond_1

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v4

    int-to-long v12, v4

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move/from16 v16, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-long v3, v3

    div-long/2addr v14, v3

    cmp-long v3, v12, v14

    if-gtz v3, :cond_2

    .line 1081
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move/from16 v16, v3

    .line 1083
    :cond_2
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v10, v3

    if-ltz v3, :cond_3

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v10, v3

    if-gtz v3, :cond_3

    .line 1084
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-gtz v3, :cond_4

    .line 1086
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v3, v16, 0x1

    goto :goto_0

    .line 1091
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/util/Rational;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Rational;

    check-cast v0, [Landroid/util/Rational;

    return-object v0
.end method

.method public static aa(Lcn/nubia/camera/ad/a;)[I
    .locals 2

    .line 1208
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->F:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    const/16 p0, 0x8

    new-array p0, p0, [I

    .line 1209
    fill-array-data p0, :array_0

    return-object p0

    .line 1210
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p0

    sget-object v0, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0xc

    new-array p0, p0, [I

    .line 1213
    fill-array-data p0, :array_1

    return-object p0

    :cond_2
    :goto_0
    const/16 p0, 0xb

    new-array p0, p0, [I

    .line 1211
    fill-array-data p0, :array_2

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x0
        0xa
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xa
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
    .end array-data
.end method

.method private static ab(Lcn/nubia/camera/ad/a;)[Landroid/util/Rational;
    .locals 20

    const/16 v0, 0x12

    new-array v1, v0, [Landroid/util/Rational;

    .line 844
    new-instance v2, Landroid/util/Rational;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/util/Rational;

    const v5, 0xea60

    invoke-direct {v2, v4, v5}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/util/Rational;

    const/16 v6, 0x3e8

    invoke-direct {v2, v4, v6}, Landroid/util/Rational;-><init>(II)V

    const/4 v7, 0x2

    aput-object v2, v1, v7

    new-instance v2, Landroid/util/Rational;

    const/16 v8, 0x64

    invoke-direct {v2, v4, v8}, Landroid/util/Rational;-><init>(II)V

    const/4 v9, 0x3

    aput-object v2, v1, v9

    new-instance v2, Landroid/util/Rational;

    const/16 v10, 0xa

    invoke-direct {v2, v4, v10}, Landroid/util/Rational;-><init>(II)V

    const/4 v11, 0x4

    aput-object v2, v1, v11

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v4, v4}, Landroid/util/Rational;-><init>(II)V

    const/4 v12, 0x5

    aput-object v2, v1, v12

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v12, v4}, Landroid/util/Rational;-><init>(II)V

    const/4 v13, 0x6

    aput-object v2, v1, v13

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v10, v4}, Landroid/util/Rational;-><init>(II)V

    const/4 v14, 0x7

    aput-object v2, v1, v14

    new-instance v2, Landroid/util/Rational;

    const/16 v15, 0x14

    invoke-direct {v2, v15, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v16, 0x8

    aput-object v2, v1, v16

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x28

    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v17, 0x9

    aput-object v2, v1, v17

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x3c

    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v1, v10

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x50

    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v18, 0xb

    aput-object v2, v1, v18

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v8, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v19, 0xc

    aput-object v2, v1, v19

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x78

    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0xd

    aput-object v2, v1, v5

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x12c

    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0xe

    aput-object v2, v1, v5

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x258

    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0xf

    aput-object v2, v1, v5

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x384

    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0x10

    aput-object v2, v1, v5

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x4b0

    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0x11

    aput-object v2, v1, v5

    new-array v0, v0, [Landroid/util/Rational;

    .line 849
    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v3

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x1388

    invoke-direct {v2, v4, v5}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v4

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v4, v6}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v7

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v4, v8}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v9

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v4, v10}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v11

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v4, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v12

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v12, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v13

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v10, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v14

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v15, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v16

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x28

    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v17

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x3c

    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v10

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x50

    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v2, v0, v18

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v8, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0xc

    aput-object v2, v0, v5

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x78

    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0xd

    aput-object v2, v0, v5

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x12c

    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0xe

    aput-object v2, v0, v5

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x258

    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0xf

    aput-object v2, v0, v5

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x384

    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0x10

    aput-object v2, v0, v5

    new-instance v2, Landroid/util/Rational;

    const/16 v5, 0x4b0

    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    const/16 v5, 0x11

    aput-object v2, v0, v5

    .line 855
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v2

    .line 856
    invoke-virtual {v2}, Lcn/nubia/b/b;->e()Landroid/util/Range;

    move-result-object v2

    .line 857
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_a

    .line 860
    new-instance v6, Landroid/util/Rational;

    const v7, 0xea60

    invoke-direct {v6, v4, v7}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v6}, Landroid/util/Rational;->floatValue()F

    move-result v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v4, v10

    float-to-long v10, v4

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v4, v10, v12

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 865
    :goto_0
    array-length v0, v1

    if-ge v3, v0, :cond_a

    .line 866
    aget-object v0, v1, v3

    .line 867
    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v4, v10

    float-to-long v10, v4

    .line 868
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v4

    sget-object v12, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-eq v4, v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v4

    sget-object v12, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-ne v4, v12, :cond_1

    goto :goto_1

    .line 877
    :cond_1
    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v4

    const/high16 v12, 0x42700000    # 60.0f

    cmpl-float v4, v4, v12

    if-ltz v4, :cond_2

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v4

    int-to-long v12, v4

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move/from16 v16, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-long v3, v3

    div-long/2addr v14, v3

    cmp-long v3, v12, v14

    if-gtz v3, :cond_3

    .line 878
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2
    move/from16 v16, v3

    .line 880
    :cond_3
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v10, v3

    if-gez v3, :cond_4

    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-gtz v3, :cond_9

    :cond_4
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v10, v3

    if-gtz v3, :cond_9

    .line 881
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_1
    move/from16 v16, v3

    .line 869
    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v3

    const/high16 v4, 0x42700000    # 60.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_6

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-long v14, v14

    div-long/2addr v12, v14

    cmp-long v3, v3, v12

    if-gtz v3, :cond_6

    .line 870
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 872
    :cond_6
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ak/a;->m()Z

    move-result v3

    if-eqz v3, :cond_7

    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-lez v3, :cond_8

    :cond_7
    sget-wide v3, Lcn/nubia/camera/au/e;->b:J

    cmp-long v3, v3, v10

    if-gtz v3, :cond_9

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v10, v3

    if-gtz v3, :cond_9

    .line 873
    :cond_8
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    add-int/lit8 v3, v16, 0x1

    goto/16 :goto_0

    .line 887
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/util/Rational;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Rational;

    check-cast v0, [Landroid/util/Rational;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x7

    .line 832
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcn/nubia/camera/ad/a;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/ad/a;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/nubia/camera/w/d;->a(Lcn/nubia/camera/ad/a;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcn/nubia/camera/af/a;Ljava/lang/String;)[Landroid/util/Rational;
    .locals 6

    .line 1116
    new-instance v0, Landroid/util/Rational;

    const/16 v1, 0xb4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    .line 1117
    invoke-static {p0, p1}, Lcn/nubia/camera/w/d;->d(Lcn/nubia/camera/af/a;Ljava/lang/String;)[Landroid/util/Rational;

    move-result-object p0

    .line 1118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1119
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 1120
    invoke-virtual {v3}, Landroid/util/Rational;->floatValue()F

    move-result v4

    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 1121
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1124
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/util/Rational;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Rational;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)[Ljava/lang/Integer;
    .locals 7

    .line 1161
    sget-object v0, Lcn/nubia/camera/w/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x25

    new-array v1, v0, [I

    .line 1165
    fill-array-data v1, :array_0

    .line 1174
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v2

    .line 1175
    invoke-virtual {v2}, Lcn/nubia/b/b;->b()Landroid/util/Range;

    move-result-object v3

    .line 1176
    invoke-virtual {v2}, Lcn/nubia/b/b;->c()Landroid/util/Range;

    move-result-object v2

    .line 1177
    new-instance v4, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 1180
    aget v5, v1, v3

    if-ltz v5, :cond_1

    .line 1181
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1182
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1185
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 1186
    sget-object v1, Lcn/nubia/camera/w/d;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :array_0
    .array-data 4
        -0x1
        -0x2
        -0x3
        -0x4
        0x64
        0x7d
        0x96
        0xaf
        0xc8
        0xfa
        0x12c
        0x15e
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x3e8
        0x4b0
        0x578
        0x640
        0x7d0
        0x960
        0xaf0
        0xc80
        0xfa0
        0x12c0
        0x15e0
        0x1900
        0x1f40
        0x2580
        0x2bc0
        0x3200
        0x3e80
        0x4b00
        0x5780
        0x6400
    .end array-data
.end method

.method public static c(Lcn/nubia/camera/ad/a;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/ad/a;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    new-instance v9, Lcn/nubia/camera/w/d$a;

    sget-object v2, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    .line 195
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->r(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v6

    .line 196
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->s(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 197
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->t(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    const v3, 0x7f0f00e6

    const v4, 0x7f090176

    const v5, 0x7f09039a

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/b;->k()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 199
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00e1

    const v5, 0x7f090182

    const v6, 0x7f090157

    .line 203
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->z(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 204
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->A(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 205
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->B(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v11, Lcn/nubia/camera/w/b;->f:Lcn/nubia/camera/w/b;

    const v12, 0x7f0f00db

    const v13, 0x7f09017e

    const v14, 0x7f090132

    .line 218
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->C(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v15

    .line 219
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->D(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v16

    .line 220
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->E(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v17

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->g:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00dc

    const v5, 0x7f09018e

    const v6, 0x7f0902ce

    .line 225
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->F(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 226
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->G(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 227
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->H(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v11, Lcn/nubia/camera/w/b;->i:Lcn/nubia/camera/w/b;

    const v12, 0x7f0f00df

    const v13, 0x7f090184

    const v14, 0x7f0901c2

    .line 232
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->I(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v15

    .line 233
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->J(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v16

    .line 234
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->K(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v17

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static c(Lcn/nubia/camera/af/a;Ljava/lang/String;)[Landroid/util/Rational;
    .locals 4

    .line 1129
    sget-object v0, Lcn/nubia/camera/w/d;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Rational;

    if-eqz v0, :cond_0

    return-object v0

    .line 1133
    :cond_0
    sget-object v0, Lcn/nubia/camera/af/a;->F:Lcn/nubia/camera/af/a;

    if-ne p0, v0, :cond_1

    .line 1134
    invoke-static {p1}, Lcn/nubia/camera/w/d;->a(Ljava/lang/String;)[Landroid/util/Rational;

    move-result-object v0

    goto :goto_0

    .line 1135
    :cond_1
    sget-object v0, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne p0, v0, :cond_2

    .line 1136
    invoke-static {p0, p1}, Lcn/nubia/camera/w/d;->a(Lcn/nubia/camera/af/a;Ljava/lang/String;)[Landroid/util/Rational;

    move-result-object v0

    goto :goto_0

    .line 1137
    :cond_2
    sget-object v0, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-ne p0, v0, :cond_3

    .line 1138
    invoke-static {p0, p1}, Lcn/nubia/camera/w/d;->b(Lcn/nubia/camera/af/a;Ljava/lang/String;)[Landroid/util/Rational;

    move-result-object v0

    goto :goto_0

    .line 1140
    :cond_3
    invoke-static {p0, p1}, Lcn/nubia/camera/w/d;->d(Lcn/nubia/camera/af/a;Ljava/lang/String;)[Landroid/util/Rational;

    move-result-object v0

    .line 1142
    :goto_0
    sget-object v1, Lcn/nubia/camera/w/d;->a:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static d(Lcn/nubia/camera/ad/a;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/ad/a;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    new-instance v9, Lcn/nubia/camera/w/d$a;

    sget-object v2, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    .line 244
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->r(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v6

    .line 245
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->s(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 246
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->t(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    const v3, 0x7f0f00e6

    const v4, 0x7f090176

    const v5, 0x7f09039a

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v11, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    .line 251
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->w(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v15

    .line 252
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v16

    .line 253
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->y(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v17

    const v12, 0x7f0f00e0

    const v13, 0x7f090186

    const v14, 0x7f0901cf

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/b;->k()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 255
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00e1

    const v5, 0x7f090182

    const v6, 0x7f090157

    .line 259
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->z(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 260
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->A(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 261
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->B(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_0
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v11, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    const v12, 0x7f0f00e3

    const v13, 0x7f090190

    const v14, 0x7f0902d3

    .line 267
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->m(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v15

    .line 268
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->l(Lcn/nubia/camera/ad/a;)Landroid/util/Rational;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v16

    .line 269
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->n(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v17

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->i:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00df

    const v5, 0x7f090184

    const v6, 0x7f0901c2

    .line 274
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->I(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 275
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->J(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 276
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->K(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static d(Lcn/nubia/camera/af/a;Ljava/lang/String;)[Landroid/util/Rational;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x49

    new-array v2, v2, [Landroid/util/Rational;

    .line 939
    new-instance v3, Landroid/util/Rational;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/4 v6, -0x1

    invoke-direct {v3, v6, v5}, Landroid/util/Rational;-><init>(II)V

    aput-object v3, v2, v5

    new-instance v3, Landroid/util/Rational;

    const/4 v7, -0x2

    invoke-direct {v3, v7, v5}, Landroid/util/Rational;-><init>(II)V

    const/4 v7, 0x2

    aput-object v3, v2, v7

    new-instance v3, Landroid/util/Rational;

    const/4 v8, -0x3

    invoke-direct {v3, v8, v5}, Landroid/util/Rational;-><init>(II)V

    const/4 v8, 0x3

    aput-object v3, v2, v8

    new-instance v3, Landroid/util/Rational;

    const v9, 0xea60

    invoke-direct {v3, v5, v9}, Landroid/util/Rational;-><init>(II)V

    const/4 v9, 0x4

    aput-object v3, v2, v9

    new-instance v3, Landroid/util/Rational;

    const/16 v10, 0x2710

    invoke-direct {v3, v5, v10}, Landroid/util/Rational;-><init>(II)V

    const/4 v10, 0x5

    aput-object v3, v2, v10

    new-instance v3, Landroid/util/Rational;

    const/16 v11, 0x1388

    invoke-direct {v3, v5, v11}, Landroid/util/Rational;-><init>(II)V

    const/4 v11, 0x6

    aput-object v3, v2, v11

    new-instance v3, Landroid/util/Rational;

    const/16 v12, 0x9c4

    invoke-direct {v3, v5, v12}, Landroid/util/Rational;-><init>(II)V

    const/4 v12, 0x7

    aput-object v3, v2, v12

    new-instance v3, Landroid/util/Rational;

    const/16 v13, 0x3e8

    invoke-direct {v3, v5, v13}, Landroid/util/Rational;-><init>(II)V

    const/16 v13, 0x8

    aput-object v3, v2, v13

    new-instance v3, Landroid/util/Rational;

    const/16 v14, 0x320

    invoke-direct {v3, v5, v14}, Landroid/util/Rational;-><init>(II)V

    const/16 v14, 0x9

    aput-object v3, v2, v14

    new-instance v3, Landroid/util/Rational;

    const/16 v15, 0x190

    invoke-direct {v3, v5, v15}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0xa

    aput-object v3, v2, v15

    new-instance v3, Landroid/util/Rational;

    const/16 v6, 0xc8

    invoke-direct {v3, v5, v6}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0xb

    aput-object v3, v2, v6

    new-instance v3, Landroid/util/Rational;

    const/16 v6, 0x64

    invoke-direct {v3, v5, v6}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0xc

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v6, 0x50

    invoke-direct {v3, v5, v6}, Landroid/util/Rational;-><init>(II)V

    const/16 v18, 0xd

    aput-object v3, v2, v18

    new-instance v3, Landroid/util/Rational;

    const/16 v6, 0x28

    invoke-direct {v3, v5, v6}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0xe

    aput-object v3, v2, v6

    new-instance v3, Landroid/util/Rational;

    const/16 v6, 0x14

    invoke-direct {v3, v5, v6}, Landroid/util/Rational;-><init>(II)V

    const/16 v20, 0xf

    aput-object v3, v2, v20

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v5, v15}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x10

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v5, v13}, Landroid/util/Rational;-><init>(II)V

    const/16 v21, 0x11

    aput-object v3, v2, v21

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v5, v9}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x12

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v5, v7}, Landroid/util/Rational;-><init>(II)V

    const/16 v22, 0x13

    aput-object v3, v2, v22

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v5, v5}, Landroid/util/Rational;-><init>(II)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v7, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v22, 0x15

    aput-object v3, v2, v22

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v8, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v22, 0x16

    aput-object v3, v2, v22

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v9, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v22, 0x17

    aput-object v3, v2, v22

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v10, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v22, 0x18

    aput-object v3, v2, v22

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v11, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v22, 0x19

    aput-object v3, v2, v22

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v12, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v22, 0x1a

    aput-object v3, v2, v22

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v13, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v22, 0x1b

    aput-object v3, v2, v22

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v14, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v22, 0x1c

    aput-object v3, v2, v22

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v15, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v22, 0x1d

    aput-object v3, v2, v22

    new-instance v3, Landroid/util/Rational;

    const/16 v15, 0xc

    invoke-direct {v3, v15, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0x1e

    aput-object v3, v2, v15

    new-instance v3, Landroid/util/Rational;

    const/16 v15, 0xe

    invoke-direct {v3, v15, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0x1f

    aput-object v3, v2, v15

    new-instance v3, Landroid/util/Rational;

    const/16 v15, 0x10

    invoke-direct {v3, v15, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0x20

    aput-object v3, v2, v15

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0x21

    aput-object v3, v2, v15

    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0x22

    aput-object v3, v2, v15

    new-instance v3, Landroid/util/Rational;

    const/16 v15, 0x19

    invoke-direct {v3, v15, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0x23

    aput-object v3, v2, v15

    new-instance v3, Landroid/util/Rational;

    const/16 v15, 0x1e

    invoke-direct {v3, v15, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0x24

    aput-object v3, v2, v15

    new-instance v3, Landroid/util/Rational;

    const/16 v15, 0x23

    invoke-direct {v3, v15, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0x25

    aput-object v3, v2, v15

    new-instance v3, Landroid/util/Rational;

    const/16 v15, 0x28

    invoke-direct {v3, v15, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v19, 0x26

    aput-object v3, v2, v19

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x2d

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x27

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x32

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    aput-object v3, v2, v15

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x37

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x29

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x3c

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x2a

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x41

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x2b

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x46

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x2c

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x4b

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x2d

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x50

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x2e

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x55

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x2f

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x5a

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x30

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x5f

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x31

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x64

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x32

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x69

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x33

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x6e

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x34

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x73

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x35

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x78

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x36

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0xb4

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x37

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0xf0

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x38

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x12c

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x39

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x168

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x3a

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x1a4

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x3b

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x1e0

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x3c

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x21c

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x3d

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x258

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x3e

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x294

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x3f

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x2d0

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x40

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x30c

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x41

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x348

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x42

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x384

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x43

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x3c0

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x44

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x3fc

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x45

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x438

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x46

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x474

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x47

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x4b0

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v4, 0x48

    aput-object v3, v2, v4

    const/16 v3, 0x49

    new-array v3, v3, [Landroid/util/Rational;

    .line 959
    new-instance v4, Landroid/util/Rational;

    const/4 v15, 0x0

    invoke-direct {v4, v15, v5}, Landroid/util/Rational;-><init>(II)V

    aput-object v4, v3, v15

    new-instance v4, Landroid/util/Rational;

    const/4 v15, -0x1

    invoke-direct {v4, v15, v5}, Landroid/util/Rational;-><init>(II)V

    aput-object v4, v3, v5

    new-instance v4, Landroid/util/Rational;

    const/4 v15, -0x2

    invoke-direct {v4, v15, v5}, Landroid/util/Rational;-><init>(II)V

    aput-object v4, v3, v7

    new-instance v4, Landroid/util/Rational;

    const/4 v15, -0x3

    invoke-direct {v4, v15, v5}, Landroid/util/Rational;-><init>(II)V

    aput-object v4, v3, v8

    new-instance v4, Landroid/util/Rational;

    const/16 v15, 0x1388

    invoke-direct {v4, v5, v15}, Landroid/util/Rational;-><init>(II)V

    aput-object v4, v3, v9

    new-instance v4, Landroid/util/Rational;

    const/16 v15, 0xfa0

    invoke-direct {v4, v5, v15}, Landroid/util/Rational;-><init>(II)V

    aput-object v4, v3, v10

    new-instance v4, Landroid/util/Rational;

    const/16 v15, 0xbb8

    invoke-direct {v4, v5, v15}, Landroid/util/Rational;-><init>(II)V

    aput-object v4, v3, v11

    new-instance v4, Landroid/util/Rational;

    const/16 v15, 0x7d0

    invoke-direct {v4, v5, v15}, Landroid/util/Rational;-><init>(II)V

    aput-object v4, v3, v12

    new-instance v4, Landroid/util/Rational;

    const/16 v15, 0x3e8

    invoke-direct {v4, v5, v15}, Landroid/util/Rational;-><init>(II)V

    aput-object v4, v3, v13

    new-instance v4, Landroid/util/Rational;

    const/16 v15, 0x320

    invoke-direct {v4, v5, v15}, Landroid/util/Rational;-><init>(II)V

    aput-object v4, v3, v14

    new-instance v4, Landroid/util/Rational;

    const/16 v15, 0x190

    invoke-direct {v4, v5, v15}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0xa

    aput-object v4, v3, v15

    new-instance v4, Landroid/util/Rational;

    const/16 v15, 0xc8

    invoke-direct {v4, v5, v15}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0xb

    aput-object v4, v3, v15

    new-instance v4, Landroid/util/Rational;

    const/16 v15, 0x64

    invoke-direct {v4, v5, v15}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0xc

    aput-object v4, v3, v15

    new-instance v4, Landroid/util/Rational;

    const/16 v15, 0x50

    invoke-direct {v4, v5, v15}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0xd

    aput-object v4, v3, v15

    new-instance v4, Landroid/util/Rational;

    const/16 v15, 0x28

    invoke-direct {v4, v5, v15}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0xe

    aput-object v4, v3, v15

    new-instance v4, Landroid/util/Rational;

    invoke-direct {v4, v5, v6}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0xf

    aput-object v4, v3, v15

    new-instance v4, Landroid/util/Rational;

    const/16 v15, 0xa

    invoke-direct {v4, v5, v15}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0x10

    aput-object v4, v3, v15

    new-instance v4, Landroid/util/Rational;

    invoke-direct {v4, v5, v13}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0x11

    aput-object v4, v3, v15

    new-instance v4, Landroid/util/Rational;

    invoke-direct {v4, v5, v9}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0x12

    aput-object v4, v3, v15

    new-instance v4, Landroid/util/Rational;

    invoke-direct {v4, v5, v7}, Landroid/util/Rational;-><init>(II)V

    const/16 v15, 0x13

    aput-object v4, v3, v15

    new-instance v4, Landroid/util/Rational;

    invoke-direct {v4, v5, v5}, Landroid/util/Rational;-><init>(II)V

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    invoke-direct {v4, v7, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v7, 0x15

    aput-object v4, v3, v7

    new-instance v4, Landroid/util/Rational;

    invoke-direct {v4, v8, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v7, 0x16

    aput-object v4, v3, v7

    new-instance v4, Landroid/util/Rational;

    invoke-direct {v4, v9, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v7, 0x17

    aput-object v4, v3, v7

    new-instance v4, Landroid/util/Rational;

    invoke-direct {v4, v10, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v7, 0x18

    aput-object v4, v3, v7

    new-instance v4, Landroid/util/Rational;

    invoke-direct {v4, v11, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v7, 0x19

    aput-object v4, v3, v7

    new-instance v4, Landroid/util/Rational;

    invoke-direct {v4, v12, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v7, 0x1a

    aput-object v4, v3, v7

    new-instance v4, Landroid/util/Rational;

    invoke-direct {v4, v13, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v7, 0x1b

    aput-object v4, v3, v7

    new-instance v4, Landroid/util/Rational;

    invoke-direct {v4, v14, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v7, 0x1c

    aput-object v4, v3, v7

    new-instance v4, Landroid/util/Rational;

    const/16 v7, 0xa

    invoke-direct {v4, v7, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v7, 0x1d

    aput-object v4, v3, v7

    new-instance v4, Landroid/util/Rational;

    const/16 v7, 0xc

    invoke-direct {v4, v7, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v7, 0x1e

    aput-object v4, v3, v7

    new-instance v4, Landroid/util/Rational;

    const/16 v7, 0xe

    invoke-direct {v4, v7, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v7, 0x1f

    aput-object v4, v3, v7

    new-instance v4, Landroid/util/Rational;

    const/16 v7, 0x10

    invoke-direct {v4, v7, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v7, 0x20

    aput-object v4, v3, v7

    new-instance v4, Landroid/util/Rational;

    const/16 v7, 0x12

    invoke-direct {v4, v7, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v7, 0x21

    aput-object v4, v3, v7

    new-instance v4, Landroid/util/Rational;

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x22

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x19

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x23

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x24

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x23

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x25

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x28

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v7, 0x26

    aput-object v4, v3, v7

    new-instance v4, Landroid/util/Rational;

    const/16 v7, 0x2d

    invoke-direct {v4, v7, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v7, 0x27

    aput-object v4, v3, v7

    new-instance v4, Landroid/util/Rational;

    const/16 v7, 0x32

    invoke-direct {v4, v7, v5}, Landroid/util/Rational;-><init>(II)V

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x37

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x29

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x3c

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x2a

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x41

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x2b

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x46

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x2c

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x4b

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x2d

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x50

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x2e

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x55

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x2f

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x5a

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x30

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x5f

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x31

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x64

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x32

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x69

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x33

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x6e

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x34

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x73

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x35

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x78

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x36

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0xb4

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x37

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0xf0

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x38

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x12c

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x39

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x168

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x3a

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x1a4

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x3b

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x1e0

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x3c

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x21c

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x3d

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x258

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x3e

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x294

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x3f

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x2d0

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x40

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x30c

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x41

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x348

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x42

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x384

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x43

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x3c0

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x44

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x3fc

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x45

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x438

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x46

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x474

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x47

    aput-object v4, v3, v6

    new-instance v4, Landroid/util/Rational;

    const/16 v6, 0x4b0

    invoke-direct {v4, v6, v5}, Landroid/util/Rational;-><init>(II)V

    const/16 v6, 0x48

    aput-object v4, v3, v6

    .line 979
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v4

    .line 982
    sget-object v6, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-eq v0, v6, :cond_1

    sget-object v6, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-eq v0, v6, :cond_1

    sget-object v6, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    if-eq v0, v6, :cond_1

    sget-object v6, Lcn/nubia/camera/af/a;->aa:Lcn/nubia/camera/af/a;

    if-ne v0, v6, :cond_0

    goto :goto_0

    .line 996
    :cond_0
    invoke-virtual {v4}, Lcn/nubia/b/b;->f()Landroid/util/Range;

    move-result-object v1

    goto/16 :goto_2

    .line 984
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcn/nubia/b/b;->g()Landroid/util/Range;

    move-result-object v4

    .line 985
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 986
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 987
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/b/e;->p()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 988
    :cond_2
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3c

    sget-wide v10, Lcn/nubia/camera/aq/f;->h:J

    mul-long/2addr v10, v8

    cmp-long v1, v6, v10

    if-lez v1, :cond_3

    .line 989
    new-instance v1, Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    const-wide/16 v6, 0x3c

    sget-wide v8, Lcn/nubia/camera/aq/f;->h:J

    mul-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_1

    :cond_3
    move-object v1, v4

    .line 991
    :goto_1
    sget-object v4, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    if-eq v0, v4, :cond_4

    sget-object v4, Lcn/nubia/camera/af/a;->aa:Lcn/nubia/camera/af/a;

    if-ne v0, v4, :cond_5

    .line 992
    :cond_4
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3c

    sget-wide v10, Lcn/nubia/camera/aq/f;->h:J

    mul-long/2addr v10, v8

    cmp-long v4, v6, v10

    if-lez v4, :cond_5

    .line 993
    new-instance v4, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    const-wide/16 v6, 0x3c

    sget-wide v8, Lcn/nubia/camera/aq/f;->h:J

    mul-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v4, v1, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object v1, v4

    .line 998
    :cond_5
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_16

    .line 1002
    new-instance v6, Landroid/util/Rational;

    const v7, 0xea60

    invoke-direct {v6, v5, v7}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v6}, Landroid/util/Rational;->floatValue()F

    move-result v6

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    const-wide/high16 v9, 0x4022000000000000L    # 9.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v6, v11

    float-to-long v11, v6

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v6, v11, v13

    if-ltz v6, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, v3

    :goto_3
    const/4 v3, 0x0

    .line 1007
    :goto_4
    array-length v6, v2

    if-ge v3, v6, :cond_16

    .line 1008
    aget-object v6, v2, v3

    .line 1009
    invoke-virtual {v6}, Landroid/util/Rational;->floatValue()F

    move-result v11

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-long v11, v11

    .line 1010
    sget-object v13, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-eq v0, v13, :cond_10

    sget-object v13, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-ne v0, v13, :cond_7

    goto/16 :goto_6

    .line 1020
    :cond_7
    sget-object v13, Lcn/nubia/camera/af/a;->A:Lcn/nubia/camera/af/a;

    if-ne v0, v13, :cond_c

    .line 1021
    new-instance v13, Landroid/util/Rational;

    invoke-direct {v13, v5, v5}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v13}, Landroid/util/Rational;->floatValue()F

    move-result v13

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-long v14, v14

    long-to-float v14, v14

    mul-float/2addr v13, v14

    float-to-long v13, v13

    .line 1022
    invoke-virtual {v6}, Landroid/util/Rational;->floatValue()F

    move-result v15

    const/high16 v16, 0x42700000    # 60.0f

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_9

    invoke-virtual {v6}, Landroid/util/Rational;->getNumerator()I

    move-result v15

    move-object/from16 p1, v6

    int-to-long v5, v15

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object v15, v2

    move/from16 v19, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    div-long v17, v17, v2

    cmp-long v2, v5, v17

    if-gtz v2, :cond_8

    move-object/from16 v2, p1

    .line 1023
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_8
    move-object/from16 v2, p1

    goto :goto_5

    :cond_9
    move-object v15, v2

    move/from16 v19, v3

    move-object v2, v6

    :goto_5
    cmp-long v3, v11, v13

    if-ltz v3, :cond_a

    .line 1025
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v11, v5

    if-gtz v3, :cond_a

    .line 1026
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_a
    const-wide/16 v5, 0x0

    cmp-long v3, v11, v5

    if-eqz v3, :cond_b

    .line 1027
    new-instance v3, Landroid/util/Rational;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1028
    :cond_b
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_c
    move-object v15, v2

    move/from16 v19, v3

    move-object v2, v6

    .line 1032
    invoke-virtual {v2}, Landroid/util/Rational;->floatValue()F

    move-result v3

    const/high16 v5, 0x42700000    # 60.0f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_d

    invoke-virtual {v2}, Landroid/util/Rational;->getNumerator()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-wide/from16 v17, v11

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-long v11, v11

    div-long/2addr v13, v11

    cmp-long v3, v5, v13

    if-gtz v3, :cond_e

    .line 1033
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_d
    move-wide/from16 v17, v11

    .line 1035
    :cond_e
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v17, v5

    if-ltz v3, :cond_f

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v17, v5

    if-gtz v3, :cond_f

    .line 1036
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_f
    const-wide/16 v5, 0x0

    cmp-long v3, v17, v5

    if-gtz v3, :cond_14

    .line 1038
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_10
    :goto_6
    move-object v15, v2

    move/from16 v19, v3

    move-object v2, v6

    move-wide/from16 v17, v11

    .line 1011
    invoke-virtual {v2}, Landroid/util/Rational;->floatValue()F

    move-result v3

    const/high16 v5, 0x42700000    # 60.0f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_11

    invoke-virtual {v2}, Landroid/util/Rational;->getNumerator()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    double-to-long v13, v13

    div-long/2addr v11, v13

    cmp-long v3, v5, v11

    if-gtz v3, :cond_11

    .line 1012
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1014
    :cond_11
    sget-wide v5, Lcn/nubia/camera/au/e;->b:J

    cmp-long v3, v17, v5

    if-ltz v3, :cond_12

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v17, v5

    if-gtz v3, :cond_12

    .line 1015
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1016
    :cond_12
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ak/a;->m()Z

    move-result v3

    if-eqz v3, :cond_14

    const-wide/16 v5, 0x0

    cmp-long v3, v17, v5

    if-eqz v3, :cond_13

    new-instance v3, Landroid/util/Rational;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_7

    :cond_13
    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 1017
    :goto_7
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_14
    :goto_8
    const/4 v5, -0x1

    const/4 v6, 0x1

    :cond_15
    :goto_9
    add-int/lit8 v3, v19, 0x1

    move v5, v6

    move-object v2, v15

    goto/16 :goto_4

    .line 1044
    :cond_16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/util/Rational;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Rational;

    check-cast v0, [Landroid/util/Rational;

    return-object v0
.end method

.method public static e(Lcn/nubia/camera/ad/a;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/ad/a;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;"
        }
    .end annotation

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    new-instance v9, Lcn/nubia/camera/w/d$a;

    sget-object v2, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    .line 286
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->m(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v6

    .line 287
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->l(Lcn/nubia/camera/ad/a;)Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v7

    .line 288
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->n(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    const v3, 0x7f0f00e3

    const v4, 0x7f090190

    const v5, 0x7f0902d3

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v11, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    .line 293
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->r(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v15

    .line 294
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->s(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v16

    .line 295
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->t(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v17

    const v12, 0x7f0f00e6

    const v13, 0x7f090176

    const v14, 0x7f09039a

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    .line 300
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->w(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 301
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 302
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->y(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    const v4, 0x7f0f00e0

    const v5, 0x7f090186

    const v6, 0x7f0901cf

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/b;->k()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 304
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00e1

    const v5, 0x7f090182

    const v6, 0x7f090157

    .line 308
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->z(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 309
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->A(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 310
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->B(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static f(Lcn/nubia/camera/ad/a;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/ad/a;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;"
        }
    .end annotation

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    new-instance v9, Lcn/nubia/camera/w/d$a;

    sget-object v2, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    .line 321
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->m(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v6

    .line 322
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->l(Lcn/nubia/camera/ad/a;)Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v7

    .line 323
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->n(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    const v3, 0x7f0f00e3

    const v4, 0x7f090190

    const v5, 0x7f0902d3

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v11, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    .line 328
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->r(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v15

    .line 329
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->s(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v16

    .line 330
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->t(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v17

    const v12, 0x7f0f00e6

    const v13, 0x7f090176

    const v14, 0x7f09039a

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    .line 335
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->w(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 336
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 337
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->y(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    const v4, 0x7f0f00e0

    const v5, 0x7f090186

    const v6, 0x7f0901cf

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/b;->k()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 339
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00e1

    const v5, 0x7f090182

    const v6, 0x7f090157

    .line 343
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->z(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 344
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->A(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 345
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->B(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_0
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v11, Lcn/nubia/camera/w/b;->m:Lcn/nubia/camera/w/b;

    const v12, 0x7f0f00e2

    const v13, 0x7f09018c

    const v14, 0x7f090237

    .line 351
    invoke-static {}, Lcn/nubia/camera/w/d;->a()Ljava/lang/String;

    move-result-object v15

    .line 352
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->R(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v16

    .line 353
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->S(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v17

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->n:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00da

    const v5, 0x7f09017c

    const v6, 0x7f090113

    .line 358
    invoke-static {}, Lcn/nubia/camera/w/d;->b()Ljava/lang/String;

    move-result-object v7

    .line 359
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->T(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 360
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->U(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static g(Lcn/nubia/camera/ad/a;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/ad/a;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;"
        }
    .end annotation

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    new-instance v9, Lcn/nubia/camera/w/d$a;

    sget-object v2, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    .line 370
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->m(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v6

    .line 371
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->l(Lcn/nubia/camera/ad/a;)Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v7

    .line 372
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->n(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    const v3, 0x7f0f00e3

    const v4, 0x7f090190

    const v5, 0x7f0902d3

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v11, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    .line 377
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->r(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v15

    .line 378
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->s(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v16

    .line 379
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->t(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v17

    const v12, 0x7f0f00e6

    const v13, 0x7f090176

    const v14, 0x7f09039a

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    .line 384
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->w(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 385
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 386
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->y(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    const v4, 0x7f0f00e0

    const v5, 0x7f090186

    const v6, 0x7f0901cf

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/b;->k()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 388
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00e1

    const v5, 0x7f090182

    const v6, 0x7f090157

    .line 392
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->z(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 393
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->A(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 394
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->B(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static h(Lcn/nubia/camera/ad/a;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/ad/a;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;"
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 401
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/b;->f()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-wide v3, Lcn/nubia/camera/aq/f;->h:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 402
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00e3

    const v5, 0x7f090190

    const v6, 0x7f0902d3

    .line 406
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->m(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 407
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->l(Lcn/nubia/camera/ad/a;)Landroid/util/Rational;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v8

    .line 408
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->n(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_0
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v11, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    const v12, 0x7f0f00e6

    const v13, 0x7f090176

    const v14, 0x7f09039a

    .line 414
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->r(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v15

    .line 415
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->s(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v16

    .line 416
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->t(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v17

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00e0

    const v5, 0x7f090186

    const v6, 0x7f0901cf

    .line 421
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->w(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 422
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 423
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->y(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/b;->k()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 425
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00e1

    const v5, 0x7f090182

    const v6, 0x7f090157

    .line 429
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->z(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 430
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->A(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 431
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->B(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_1
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v11, Lcn/nubia/camera/w/b;->i:Lcn/nubia/camera/w/b;

    const v12, 0x7f0f00df

    const v13, 0x7f090184

    const v14, 0x7f0901c2

    .line 437
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->I(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v15

    .line 438
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->J(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v16

    .line 439
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->K(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v17

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static i(Lcn/nubia/camera/ad/a;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/ad/a;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;"
        }
    .end annotation

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    new-instance v9, Lcn/nubia/camera/w/d$a;

    sget-object v2, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    .line 449
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->m(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v6

    .line 450
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->l(Lcn/nubia/camera/ad/a;)Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v7

    .line 451
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->n(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    const v3, 0x7f0f00e3

    const v4, 0x7f090190

    const v5, 0x7f0902d3

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v11, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    .line 456
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->r(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v15

    .line 457
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->s(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v16

    .line 458
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->t(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v17

    const v12, 0x7f0f00e6

    const v13, 0x7f090176

    const v14, 0x7f09039a

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    .line 463
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->w(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 464
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 465
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->y(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    const v4, 0x7f0f00e0

    const v5, 0x7f090186

    const v6, 0x7f0901cf

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/b;->k()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 467
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->e:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00e1

    const v5, 0x7f09018a

    const v6, 0x7f0901f3

    .line 471
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->z(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 472
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->A(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 473
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->B(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_0
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v11, Lcn/nubia/camera/w/b;->i:Lcn/nubia/camera/w/b;

    const v12, 0x7f0f00df

    const v13, 0x7f090184

    const v14, 0x7f0901c2

    .line 479
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->I(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v15

    .line 480
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->J(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v16

    .line 481
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->K(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v17

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static j(Lcn/nubia/camera/ad/a;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/ad/a;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;"
        }
    .end annotation

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->S()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->l:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00d6

    const v5, 0x7f090178

    const v6, 0x7f090065

    .line 492
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->o(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 493
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->p(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 494
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->q(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_0
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v11, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    const v12, 0x7f0f00e6

    const v13, 0x7f090176

    const v14, 0x7f09039a

    .line 500
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->r(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v15

    .line 501
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->s(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v16

    .line 502
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->t(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v17

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/b;->k()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 504
    new-instance v1, Lcn/nubia/camera/w/d$a;

    sget-object v3, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    const v4, 0x7f0f00e1

    const v5, 0x7f090182

    const v6, 0x7f090157

    .line 508
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->z(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v7

    .line 509
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->A(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v8

    .line 510
    invoke-static/range {p0 .. p0}, Lcn/nubia/camera/w/d;->B(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/w/d$a;-><init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public static k(Lcn/nubia/camera/ad/a;)J
    .locals 2

    .line 517
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcn/nubia/camera/w/d;->a(Lcom/android/preference/c;Lcn/nubia/camera/af/a;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static l(Lcn/nubia/camera/ad/a;)Landroid/util/Rational;
    .locals 13

    .line 539
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/w/d;->c(Lcn/nubia/camera/af/a;Ljava/lang/String;)[Landroid/util/Rational;

    move-result-object v0

    .line 540
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 541
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 542
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/util/Rational;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/util/Rational;->floatValue()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 543
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/util/Rational;->getDenominator()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 546
    :cond_1
    invoke-static {p0}, Lcn/nubia/camera/w/d;->k(Lcn/nubia/camera/ad/a;)J

    move-result-wide v3

    .line 547
    new-instance p0, Landroid/util/Rational;

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Landroid/util/Rational;-><init>(II)V

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 549
    new-instance p0, Landroid/util/Rational;

    invoke-direct {p0, v2, v0}, Landroid/util/Rational;-><init>(II)V

    goto :goto_1

    :cond_2
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    const-wide/high16 v9, 0x4022000000000000L    # 9.0

    .line 551
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-long v11, v11

    div-long v11, v3, v11

    cmp-long v2, v11, v5

    if-gtz v2, :cond_4

    .line 552
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-long v5, v5

    div-long/2addr v5, v3

    long-to-int v2, v5

    .line 553
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 554
    new-instance p0, Landroid/util/Rational;

    invoke-direct {p0, v0, v2}, Landroid/util/Rational;-><init>(II)V

    goto :goto_1

    .line 556
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentSkipListSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 557
    new-instance p0, Landroid/util/Rational;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/util/Rational;-><init>(II)V

    goto :goto_1

    .line 561
    :cond_4
    new-instance p0, Landroid/util/Rational;

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    div-long/2addr v3, v1

    long-to-int v1, v3

    invoke-direct {p0, v1, v0}, Landroid/util/Rational;-><init>(II)V

    :cond_5
    :goto_1
    return-object p0
.end method

.method public static m(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 4

    .line 569
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/camera/aq/e;->a(Lcn/nubia/camera/af/a;)J

    move-result-wide v0

    sget-wide v2, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr v0, v2

    long-to-int p0, v0

    .line 570
    new-instance v0, Landroid/util/Rational;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v0}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 3

    .line 576
    invoke-static {p0}, Lcn/nubia/camera/w/d;->l(Lcn/nubia/camera/ad/a;)Landroid/util/Rational;

    move-result-object v0

    .line 577
    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 578
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f0f0027

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 579
    :cond_0
    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v1

    const-string v1, "s"

    if-gez p0, :cond_1

    .line 580
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 582
    :cond_1
    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result p0

    const/high16 v2, 0x42f00000    # 120.0f

    cmpl-float p0, p0, v2

    if-lez p0, :cond_2

    .line 583
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "min"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 585
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static o(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 593
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 2

    .line 598
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    .line 599
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0f01f1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_camera_light_draw_step"

    .line 598
    invoke-virtual {v0, v1, p0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 4

    .line 604
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    .line 605
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_camera_light_draw_step"

    .line 604
    invoke-virtual {v0, v3, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f0f0027

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 609
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 1

    .line 615
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p0

    sget-object v0, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-ne p0, v0, :cond_0

    const/16 p0, 0xdac

    .line 616
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 618
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 3

    .line 625
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    const-string v2, "pref_manual_cct"

    if-ne v0, v1, :cond_0

    .line 626
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p0

    const/16 v0, 0xdac

    invoke-virtual {p0, v2, v0}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    .line 628
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 630
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 3

    .line 636
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    const-string v2, "pref_manual_cct"

    if-ne v0, v1, :cond_0

    .line 637
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const/16 v1, 0xdac

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 641
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, v0}, Lcn/nubia/camera/w/d;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static u(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 646
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 2

    .line 651
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p0

    const-string v0, "pref_camera_color_tint_key"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static w(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 1

    .line 656
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/nubia/camera/w/d;->a(Landroid/content/Context;Lcn/nubia/camera/af/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 3

    .line 668
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lcn/nubia/camera/w/d;->a(Lcom/android/preference/c;Landroid/content/Context;Lcn/nubia/camera/af/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 3

    .line 678
    invoke-static {p0}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f01ef

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f0f0027

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static z(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 0

    .line 697
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/camera/three_a/a;->a(Lcn/nubia/camera/af/a;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
