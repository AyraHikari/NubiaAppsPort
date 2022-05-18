.class final Lcn/nubia/camera/ba/c$1;
.super Lcn/nubia/camera/ba/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ba/c;->a(Ljava/lang/String;)Lcn/nubia/camera/ba/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(FF)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/ba/c$a;-><init>(FF)V

    return-void
.end method


# virtual methods
.method a(F)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 94
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcn/nubia/camera/ba/c$1;->b:[I

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v1, v4

    .line 95
    iput-object v1, p0, Lcn/nubia/camera/ba/c$1;->d:[F

    new-array v0, v0, [F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v1, p1

    aput v1, v0, v2

    const/high16 p1, 0x4f000000

    aput p1, v0, v4

    .line 96
    iput-object v0, p0, Lcn/nubia/camera/ba/c$1;->e:[F

    new-array p1, v4, [F

    .line 97
    iput-object p1, p0, Lcn/nubia/camera/ba/c$1;->c:[F

    .line 98
    iget-object p1, p0, Lcn/nubia/camera/ba/c$1;->c:[F

    iget-object v0, p0, Lcn/nubia/camera/ba/c$1;->d:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcn/nubia/camera/ba/c$1;->d:[F

    aget v1, v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/camera/ba/c$1;->b:[I

    aget v1, v1, v4

    iget-object v3, p0, Lcn/nubia/camera/ba/c$1;->b:[I

    aget v3, v3, v2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    aput v0, p1, v2

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data
.end method
