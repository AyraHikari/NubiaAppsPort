.class public Lcn/nubia/c/b;
.super Lcn/nubia/c/a;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:F

.field private d:F

.field private e:I


# direct methods
.method public constructor <init>(IFFI)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcn/nubia/c/a;-><init>()V

    const/4 p2, 0x0

    .line 11
    iput p2, p0, Lcn/nubia/c/b;->c:F

    .line 12
    iput p2, p0, Lcn/nubia/c/b;->d:F

    .line 27
    iput p1, p0, Lcn/nubia/c/b;->b:I

    .line 30
    iput p4, p0, Lcn/nubia/c/b;->e:I

    const/4 p1, 0x2

    .line 31
    invoke-virtual {p0, p1, p2}, Lcn/nubia/c/b;->a(IF)V

    return-void
.end method

.method private a(FFF)Z
    .locals 0

    .line 37
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, p3

    float-to-int p1, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr p2, p3

    float-to-int p2, p2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected b(F)F
    .locals 4

    .line 47
    iget p1, p0, Lcn/nubia/c/b;->c:F

    const/4 v0, 0x0

    cmpl-float p1, v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    .line 48
    iget-object p1, p0, Lcn/nubia/c/b;->a:Ljava/util/LinkedList;

    iget-object v2, p0, Lcn/nubia/c/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 49
    iget-object v2, p0, Lcn/nubia/c/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 50
    iget v3, p0, Lcn/nubia/c/b;->e:I

    int-to-float v3, v3

    invoke-direct {p0, p1, v2, v3}, Lcn/nubia/c/b;->a(FFF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    iput v1, p0, Lcn/nubia/c/b;->c:F

    .line 52
    iput v2, p0, Lcn/nubia/c/b;->d:F

    .line 57
    :cond_0
    iget p1, p0, Lcn/nubia/c/b;->c:F

    cmpl-float v2, v0, p1

    if-nez v2, :cond_1

    .line 58
    iget-object p1, p0, Lcn/nubia/c/b;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_1
    cmpl-float v2, p1, v0

    if-lez v2, :cond_2

    .line 59
    iget v2, p0, Lcn/nubia/c/b;->b:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    add-float/2addr p1, v1

    .line 60
    iput p1, p0, Lcn/nubia/c/b;->c:F

    .line 61
    iget p1, p0, Lcn/nubia/c/b;->d:F

    return p1

    .line 63
    :cond_2
    iput v0, p0, Lcn/nubia/c/b;->c:F

    .line 65
    iget-object p1, p0, Lcn/nubia/c/b;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method
