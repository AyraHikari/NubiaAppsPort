.class public Lcn/nubia/camera/at/g;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# instance fields
.field private b:J

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    const-wide/16 p1, -0x1

    .line 21
    iput-wide p1, p0, Lcn/nubia/camera/at/g;->b:J

    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lcn/nubia/camera/at/g;->c:I

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 0

    .line 45
    iput p1, p0, Lcn/nubia/camera/at/g;->c:I

    .line 46
    iput-wide p2, p0, Lcn/nubia/camera/at/g;->b:J

    return-void
.end method

.method public ab()I
    .locals 1

    const/16 v0, 0x76

    return v0
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected m()J
    .locals 4

    .line 51
    iget-wide v0, p0, Lcn/nubia/camera/at/g;->b:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 54
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()I
    .locals 2

    .line 60
    iget v0, p0, Lcn/nubia/camera/at/g;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 63
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->n()I

    move-result v0

    return v0
.end method
