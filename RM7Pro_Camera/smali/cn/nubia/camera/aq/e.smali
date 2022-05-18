.class public Lcn/nubia/camera/aq/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[F

.field public static final b:[I

.field public static final c:[F

.field public static final d:J

.field public static final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x11

    new-array v1, v0, [F

    .line 162
    fill-array-data v1, :array_0

    sput-object v1, Lcn/nubia/camera/aq/e;->a:[F

    new-array v1, v0, [I

    .line 166
    fill-array-data v1, :array_1

    sput-object v1, Lcn/nubia/camera/aq/e;->b:[I

    new-array v0, v0, [F

    .line 171
    fill-array-data v0, :array_2

    sput-object v0, Lcn/nubia/camera/aq/e;->c:[F

    .line 313
    sget-wide v0, Lcn/nubia/camera/aq/f;->h:J

    const-wide/16 v2, 0x1e

    mul-long/2addr v0, v2

    sput-wide v0, Lcn/nubia/camera/aq/e;->d:J

    .line 324
    sget-object v0, Lcn/nubia/camera/camerafamily/b;->a:[Lcn/nubia/camera/af/a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/camera/af/a;->a()I

    move-result v0

    sput v0, Lcn/nubia/camera/aq/e;->e:I

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3fb33333    # 1.4f
        0x40000000    # 2.0f
        0x4019999a    # 2.4f
        0x40333333    # 2.8f
        0x404ccccd    # 3.2f
        0x40600000    # 3.5f
        0x40800000    # 4.0f
        0x40900000    # 4.5f
        0x40b33333    # 5.6f
        0x40c9999a    # 6.3f
        0x40e33333    # 7.1f
        0x41000000    # 8.0f
        0x41300000    # 11.0f
        0x41500000    # 13.0f
        0x41800000    # 16.0f
    .end array-data

    :array_1
    .array-data 4
        0x64
        0x5e
        0x58
        0x52
        0x4c
        0x46
        0x40
        0x3a
        0x34
        0x2e
        0x28
        0x22
        0x1c
        0x16
        0x10
        0x7
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f7851ec    # 0.97f
        0x3f6e147b    # 0.93f
        0x3f547ae1    # 0.83f
        0x3f451eb8    # 0.77f
        0x3f333333    # 0.7f
        0x3f2147ae    # 0.63f
        0x3f147ae1    # 0.58f
        0x3f000000    # 0.5f
        0x3ef5c28f    # 0.48f
        0x3ee66666    # 0.45f
        0x3ed70a3d    # 0.42f
        0x3ecccccd    # 0.4f
        0x3ebd70a4    # 0.37f
        0x3e8a3d71    # 0.27f
        0x3e4ccccd    # 0.2f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method public static a()F
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 183
    :goto_0
    sget-object v2, Lcn/nubia/camera/aq/e;->a:[F

    array-length v3, v2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_1

    .line 184
    aget v2, v2, v1

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_1
    if-ne v1, v4, :cond_2

    .line 189
    sget-object v1, Lcn/nubia/camera/aq/e;->c:[F

    aget v0, v1, v0

    goto :goto_2

    :cond_2
    sget-object v0, Lcn/nubia/camera/aq/e;->c:[F

    aget v0, v0, v1

    :goto_2
    return v0
.end method

.method public static a(Lcn/nubia/camera/af/a;)J
    .locals 2

    .line 315
    sget-object v0, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-ne p0, v0, :cond_0

    .line 316
    sget-wide v0, Lcn/nubia/camera/aq/e;->d:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
