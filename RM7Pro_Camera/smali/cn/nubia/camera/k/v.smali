.class public Lcn/nubia/camera/k/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/p;


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/k/ah;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/nubia/camera/k/v;->a:Lcn/nubia/camera/ad/a;

    .line 24
    iput-object p2, p0, Lcn/nubia/camera/k/v;->b:Lcn/nubia/camera/k/ah;

    return-void
.end method

.method private varargs a([Lcn/nubia/b/m;[Lcn/nubia/b/m;)[Lcn/nubia/b/m;
    .locals 7

    .line 50
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_1
    array-length v0, p2

    add-int/2addr v0, v3

    new-array v0, v0, [Lcn/nubia/b/m;

    move v2, v1

    move v4, v2

    .line 57
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_3

    .line 58
    aget-object v5, p1, v2

    if-eqz v5, :cond_2

    add-int/lit8 v5, v4, 0x1

    .line 59
    aget-object v6, p1, v2

    aput-object v6, v0, v4

    move v4, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 62
    :cond_3
    :goto_2
    array-length p1, p2

    if-ge v1, p1, :cond_4

    add-int p1, v3, v1

    .line 63
    aget-object v2, p2, v1

    aput-object v2, v0, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/b/k;[Lcn/nubia/b/m;)V
    .locals 1

    .line 45
    iget-object p1, p0, Lcn/nubia/camera/k/v;->b:Lcn/nubia/camera/k/ah;

    const/4 p3, 0x1

    new-array p3, p3, [Lcn/nubia/b/m;

    const/4 v0, 0x0

    aput-object p5, p3, v0

    invoke-direct {p0, p6, p3}, Lcn/nubia/camera/k/v;->a([Lcn/nubia/b/m;[Lcn/nubia/b/m;)[Lcn/nubia/b/m;

    move-result-object p3

    const/4 p5, 0x2

    invoke-virtual {p1, p5, p2, p4, p3}, Lcn/nubia/camera/k/ah;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/b/m;",
            ">;",
            "Lcn/nubia/b/n;",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            "I)V"
        }
    .end annotation

    if-nez p5, :cond_0

    .line 35
    iget-object v0, p0, Lcn/nubia/camera/k/v;->b:Lcn/nubia/camera/k/ah;

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/camera/k/ah;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;Landroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    .line 37
    iget-object p4, p0, Lcn/nubia/camera/k/v;->b:Lcn/nubia/camera/k/ah;

    const/4 p5, 0x0

    invoke-virtual {p4, p2, p1, p3, p5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/b/n;Ljava/util/ArrayList;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/k/v;->b:Lcn/nubia/camera/k/ah;

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p1

    move v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/camera/k/ah;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    :goto_0
    return-void
.end method
