.class public Lcn/nubia/camera/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end field

.field private c:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 16
    invoke-direct {p0, v0}, Lcn/nubia/camera/b/j;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/b/j;->b:Ljava/util/ArrayList;

    .line 19
    sput p1, Lcn/nubia/camera/b/j;->a:I

    return-void
.end method


# virtual methods
.method public a(I)F
    .locals 1

    .line 43
    iget-object v0, p0, Lcn/nubia/camera/b/j;->c:[F

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 46
    :cond_0
    aget p1, v0, p1

    return p1
.end method

.method public a([F)V
    .locals 5

    if-eqz p1, :cond_4

    .line 23
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_2

    .line 26
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/b/j;->c:[F

    if-nez v0, :cond_1

    .line 27
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/camera/b/j;->c:[F

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 29
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 30
    aget v2, p1, v1

    sget v3, Lcn/nubia/camera/b/j;->a:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, p1, v1

    .line 31
    iget-object v2, p0, Lcn/nubia/camera/b/j;->c:[F

    aget v3, v2, v1

    aget v4, p1, v1

    add-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/b/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcn/nubia/camera/b/j;->a:I

    if-lt v1, v2, :cond_3

    .line 34
    iget-object v1, p0, Lcn/nubia/camera/b/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 35
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 36
    iget-object v2, p0, Lcn/nubia/camera/b/j;->c:[F

    aget v3, v2, v0

    aget v4, v1, v0

    sub-float/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 39
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/b/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    return-void
.end method
