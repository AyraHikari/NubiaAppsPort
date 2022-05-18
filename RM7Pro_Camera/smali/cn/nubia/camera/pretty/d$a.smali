.class Lcn/nubia/camera/pretty/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/pretty/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/pretty/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:[F

.field final b:[F

.field final synthetic c:Lcn/nubia/camera/pretty/d;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/pretty/d;)V
    .locals 1

    .line 712
    iput-object p1, p0, Lcn/nubia/camera/pretty/d$a;->c:Lcn/nubia/camera/pretty/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    sget-object v0, Lcn/nubia/camera/aq/e;->a:[F

    iput-object v0, p0, Lcn/nubia/camera/pretty/d$a;->a:[F

    .line 718
    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->o(Lcn/nubia/camera/pretty/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcn/nubia/camera/aq/e;->c:[F

    goto :goto_0

    :cond_0
    sget-object p1, Lcn/nubia/camera/aq/e;->a:[F

    :goto_0
    iput-object p1, p0, Lcn/nubia/camera/pretty/d$a;->b:[F

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/pretty/d;Lcn/nubia/camera/pretty/d$1;)V
    .locals 0

    .line 712
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/d$a;-><init>(Lcn/nubia/camera/pretty/d;)V

    return-void
.end method


# virtual methods
.method public a(I)F
    .locals 1

    .line 729
    iget-object v0, p0, Lcn/nubia/camera/pretty/d$a;->a:[F

    aget p1, v0, p1

    return p1
.end method

.method public a()I
    .locals 1

    .line 725
    iget-object v0, p0, Lcn/nubia/camera/pretty/d$a;->a:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public a(F)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 745
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/pretty/d$a;->a:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 746
    aget v2, v2, v1

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b()F
    .locals 2

    .line 737
    iget-object v0, p0, Lcn/nubia/camera/pretty/d$a;->a:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public b(I)F
    .locals 1

    .line 733
    iget-object v0, p0, Lcn/nubia/camera/pretty/d$a;->b:[F

    aget p1, v0, p1

    return p1
.end method

.method public c()F
    .locals 2

    .line 741
    iget-object v0, p0, Lcn/nubia/camera/pretty/d$a;->a:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method
