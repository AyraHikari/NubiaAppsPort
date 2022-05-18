.class public Lcn/nubia/c/c;
.super Lcn/nubia/c/a;
.source "SourceFile"


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcn/nubia/c/a;-><init>()V

    .line 21
    invoke-direct {p0, p2, p1}, Lcn/nubia/c/c;->a(FI)V

    const/4 p2, 0x0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcn/nubia/c/c;->a(IF)V

    return-void
.end method

.method private a(FI)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    div-float/2addr p1, v0

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 26
    iput p1, p0, Lcn/nubia/c/c;->b:I

    if-nez p1, :cond_0

    .line 28
    iput v0, p0, Lcn/nubia/c/c;->b:I

    :cond_0
    return-void
.end method

.method private a(FFF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 33
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected b(F)F
    .locals 3

    .line 43
    iget-object v0, p0, Lcn/nubia/c/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 44
    iget-object v1, p0, Lcn/nubia/c/c;->a:Ljava/util/LinkedList;

    iget-object v2, p0, Lcn/nubia/c/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    .line 47
    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/c/c;->a(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcn/nubia/c/c;->a(F)V

    :cond_0
    const/4 p1, 0x0

    .line 51
    iget-object v0, p0, Lcn/nubia/c/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr p1, v1

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcn/nubia/c/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcn/nubia/c/c;->b:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    .line 55
    iget-object v0, p0, Lcn/nubia/c/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcn/nubia/c/c;->b:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method
