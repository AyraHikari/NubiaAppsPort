.class Lcn/nubia/camera/at/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/at/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:[B

.field final synthetic d:Lcn/nubia/camera/at/d;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/at/d;II[B)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcn/nubia/camera/at/d$a;->d:Lcn/nubia/camera/at/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p2, p0, Lcn/nubia/camera/at/d$a;->a:I

    .line 163
    iput p3, p0, Lcn/nubia/camera/at/d$a;->b:I

    .line 164
    iput-object p4, p0, Lcn/nubia/camera/at/d$a;->c:[B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 169
    iget v0, p0, Lcn/nubia/camera/at/d$a;->a:I

    iget v1, p0, Lcn/nubia/camera/at/d$a;->b:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 172
    iget-object v3, p0, Lcn/nubia/camera/at/d$a;->c:[B

    aget-byte v4, v3, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    .line 173
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v2, 0x2

    .line 174
    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    mul-int/lit16 v4, v4, 0x12b

    mul-int/lit16 v5, v5, 0x24b

    add-int/2addr v4, v5

    mul-int/lit8 v3, v3, 0x72

    add-int/2addr v4, v3

    .line 175
    div-int/lit16 v4, v4, 0x3e8

    int-to-float v3, v4

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 178
    :cond_0
    iget v0, p0, Lcn/nubia/camera/at/d$a;->a:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iget v0, p0, Lcn/nubia/camera/at/d$a;->b:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    const v0, 0x3c23d70a    # 0.01f

    .line 179
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 180
    iget-object v1, p0, Lcn/nubia/camera/at/d$a;->d:Lcn/nubia/camera/at/d;

    invoke-static {v1, v0}, Lcn/nubia/camera/at/d;->a(Lcn/nubia/camera/at/d;F)F

    return-void
.end method
