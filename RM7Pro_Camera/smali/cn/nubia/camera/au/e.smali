.class public Lcn/nubia/camera/au/e;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# static fields
.field public static final b:J


# instance fields
.field private c:J

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    sget-wide v0, Lcn/nubia/camera/aq/f;->h:J

    const-wide/16 v2, 0x5

    mul-long/2addr v0, v2

    sput-wide v0, Lcn/nubia/camera/au/e;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    const-wide/16 p1, -0x1

    .line 26
    iput-wide p1, p0, Lcn/nubia/camera/au/e;->c:J

    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lcn/nubia/camera/au/e;->d:I

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 0

    .line 35
    iput p1, p0, Lcn/nubia/camera/au/e;->d:I

    .line 36
    iput-wide p2, p0, Lcn/nubia/camera/au/e;->c:J

    return-void
.end method

.method public ab()I
    .locals 6

    .line 117
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcn/nubia/camera/au/e;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    sget-wide v4, Lcn/nubia/camera/aq/f;->h:J

    mul-long/2addr v4, v2

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    const/16 v0, 0x73

    return v0

    :cond_0
    const/16 v0, 0x74

    return v0

    .line 124
    :cond_1
    invoke-super {p0}, Lcn/nubia/camera/k/x;->ab()I

    move-result v0

    return v0
.end method

.method protected b()I
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcn/nubia/camera/au/e;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/au/e;->L()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected g()Z
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/au/e;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 73
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->g()Z

    move-result v0

    return v0
.end method

.method protected h()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected m()J
    .locals 4

    .line 42
    iget-wide v0, p0, Lcn/nubia/camera/au/e;->c:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 46
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()I
    .locals 6

    .line 84
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->m()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 85
    invoke-super {p0}, Lcn/nubia/camera/k/x;->n()I

    move-result v0

    .line 86
    invoke-virtual {p0}, Lcn/nubia/camera/au/e;->m()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc80

    :cond_0
    return v0

    .line 98
    :cond_1
    iget v0, p0, Lcn/nubia/camera/au/e;->d:I

    if-eq v0, v1, :cond_2

    return v0

    .line 102
    :cond_2
    invoke-super {p0}, Lcn/nubia/camera/k/x;->n()I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    .line 108
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected x()I
    .locals 3

    .line 56
    invoke-virtual {p0}, Lcn/nubia/camera/au/e;->K()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    const-string v2, "pref_manual_cct"

    if-ne v0, v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcn/nubia/camera/au/e;->F()Lcom/android/preference/c;

    move-result-object v0

    const/16 v1, 0xdac

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/au/e;->F()Lcom/android/preference/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
