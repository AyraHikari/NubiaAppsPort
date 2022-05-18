.class public Lcn/nubia/camera/aj/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xf

    .line 14
    invoke-direct {p0, v0}, Lcn/nubia/camera/aj/j;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aj/j;->b:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aj/j;->c:Ljava/util/ArrayList;

    .line 17
    sput p1, Lcn/nubia/camera/aj/j;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/nubia/camera/aj/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public a(F)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcn/nubia/camera/aj/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcn/nubia/camera/aj/j;->a:I

    if-lt v0, v1, :cond_0

    .line 22
    iget-object v0, p0, Lcn/nubia/camera/aj/j;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 24
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/j;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(F)Z
    .locals 7

    .line 28
    iget-object v0, p0, Lcn/nubia/camera/aj/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcn/nubia/camera/aj/j;->a:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 29
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v2

    .line 30
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/aj/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 31
    iget-object v1, p0, Lcn/nubia/camera/aj/j;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/nubia/camera/aj/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aj/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcn/nubia/camera/aj/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr p1, v1

    cmpl-float p1, v0, p1

    const/4 v0, 0x1

    if-gtz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/camera/aj/j;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, p0, Lcn/nubia/camera/aj/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr p1, v1

    float-to-double v3, p1

    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, v3, v5

    if-gez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/camera/aj/j;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/aj/j;->c:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, p0, Lcn/nubia/camera/aj/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr p1, v1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v0
.end method
