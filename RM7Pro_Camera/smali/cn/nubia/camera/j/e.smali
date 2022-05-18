.class public Lcn/nubia/camera/j/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcn/nubia/camera/j/e;->a:F

    return-void
.end method

.method private a(FFFF)F
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr p1, p4

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    mul-float/2addr p1, v2

    float-to-double v2, p1

    .line 29
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float/2addr p3, p1

    add-float/2addr p2, p3

    :goto_0
    return p2
.end method


# virtual methods
.method public a(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1

    .line 20
    iget v0, p0, Lcn/nubia/camera/j/e;->a:F

    mul-float/2addr v0, p1

    .line 21
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 22
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    sub-float/2addr p3, p2

    .line 23
    iget p2, p0, Lcn/nubia/camera/j/e;->a:F

    .line 24
    invoke-direct {p0, v0, p1, p3, p2}, Lcn/nubia/camera/j/e;->a(FFFF)F

    move-result p1

    .line 25
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p2, Ljava/lang/Number;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/camera/j/e;->a(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method
