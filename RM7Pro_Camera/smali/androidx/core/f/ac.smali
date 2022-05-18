.class public Landroidx/core/f/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/f/ac$d;,
        Landroidx/core/f/ac$c;,
        Landroidx/core/f/ac$b;,
        Landroidx/core/f/ac$a;,
        Landroidx/core/f/ac$i;,
        Landroidx/core/f/ac$h;,
        Landroidx/core/f/ac$g;,
        Landroidx/core/f/ac$f;,
        Landroidx/core/f/ac$e;
    }
.end annotation


# static fields
.field public static final a:Landroidx/core/f/ac;


# instance fields
.field private final b:Landroidx/core/f/ac$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Landroidx/core/f/ac$a;

    invoke-direct {v0}, Landroidx/core/f/ac$a;-><init>()V

    .line 56
    invoke-virtual {v0}, Landroidx/core/f/ac$a;->a()Landroidx/core/f/ac;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroidx/core/f/ac;->g()Landroidx/core/f/ac;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroidx/core/f/ac;->f()Landroidx/core/f/ac;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroidx/core/f/ac;->e()Landroidx/core/f/ac;

    move-result-object v0

    sput-object v0, Landroidx/core/f/ac;->a:Landroidx/core/f/ac;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 66
    new-instance v0, Landroidx/core/f/ac$i;

    invoke-direct {v0, p0, p1}, Landroidx/core/f/ac$i;-><init>(Landroidx/core/f/ac;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    goto :goto_0

    .line 67
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 68
    new-instance v0, Landroidx/core/f/ac$h;

    invoke-direct {v0, p0, p1}, Landroidx/core/f/ac$h;-><init>(Landroidx/core/f/ac;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    goto :goto_0

    .line 69
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 70
    new-instance v0, Landroidx/core/f/ac$g;

    invoke-direct {v0, p0, p1}, Landroidx/core/f/ac$g;-><init>(Landroidx/core/f/ac;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    goto :goto_0

    .line 71
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    .line 72
    new-instance v0, Landroidx/core/f/ac$f;

    invoke-direct {v0, p0, p1}, Landroidx/core/f/ac$f;-><init>(Landroidx/core/f/ac;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    goto :goto_0

    .line 74
    :cond_3
    new-instance p1, Landroidx/core/f/ac$e;

    invoke-direct {p1, p0}, Landroidx/core/f/ac$e;-><init>(Landroidx/core/f/ac;)V

    iput-object p1, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroidx/core/f/ac;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 86
    iget-object p1, p1, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Landroidx/core/f/ac$i;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Landroidx/core/f/ac$i;

    check-cast p1, Landroidx/core/f/ac$i;

    invoke-direct {v0, p0, p1}, Landroidx/core/f/ac$i;-><init>(Landroidx/core/f/ac;Landroidx/core/f/ac$i;)V

    iput-object v0, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    goto :goto_0

    .line 89
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    instance-of v0, p1, Landroidx/core/f/ac$h;

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Landroidx/core/f/ac$h;

    check-cast p1, Landroidx/core/f/ac$h;

    invoke-direct {v0, p0, p1}, Landroidx/core/f/ac$h;-><init>(Landroidx/core/f/ac;Landroidx/core/f/ac$h;)V

    iput-object v0, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    goto :goto_0

    .line 91
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    instance-of v0, p1, Landroidx/core/f/ac$g;

    if-eqz v0, :cond_2

    .line 92
    new-instance v0, Landroidx/core/f/ac$g;

    check-cast p1, Landroidx/core/f/ac$g;

    invoke-direct {v0, p0, p1}, Landroidx/core/f/ac$g;-><init>(Landroidx/core/f/ac;Landroidx/core/f/ac$g;)V

    iput-object v0, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    goto :goto_0

    .line 93
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    instance-of v0, p1, Landroidx/core/f/ac$f;

    if-eqz v0, :cond_3

    .line 94
    new-instance v0, Landroidx/core/f/ac$f;

    check-cast p1, Landroidx/core/f/ac$f;

    invoke-direct {v0, p0, p1}, Landroidx/core/f/ac$f;-><init>(Landroidx/core/f/ac;Landroidx/core/f/ac$f;)V

    iput-object v0, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    goto :goto_0

    .line 96
    :cond_3
    new-instance p1, Landroidx/core/f/ac$e;

    invoke-direct {p1, p0}, Landroidx/core/f/ac$e;-><init>(Landroidx/core/f/ac;)V

    iput-object p1, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    goto :goto_0

    .line 100
    :cond_4
    new-instance p1, Landroidx/core/f/ac$e;

    invoke-direct {p1, p0}, Landroidx/core/f/ac$e;-><init>(Landroidx/core/f/ac;)V

    iput-object p1, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    :goto_0
    return-void
.end method

.method public static a(Landroid/view/WindowInsets;)Landroidx/core/f/ac;
    .locals 1

    .line 113
    new-instance v0, Landroidx/core/f/ac;

    invoke-static {p0}, Landroidx/core/e/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroidx/core/f/ac;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method

.method static a(Landroidx/core/graphics/b;IIII)Landroidx/core/graphics/b;
    .locals 5

    .line 837
    iget v0, p0, Landroidx/core/graphics/b;->b:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 838
    iget v2, p0, Landroidx/core/graphics/b;->c:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 839
    iget v3, p0, Landroidx/core/graphics/b;->d:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 840
    iget v4, p0, Landroidx/core/graphics/b;->e:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    .line 844
    :cond_0
    invoke-static {v0, v2, v3, v1}, Landroidx/core/graphics/b;->a(IIII)Landroidx/core/graphics/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 127
    invoke-virtual {p0}, Landroidx/core/f/ac;->h()Landroidx/core/graphics/b;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/b;->b:I

    return v0
.end method

.method public a(IIII)Landroidx/core/f/ac;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    new-instance v0, Landroidx/core/f/ac$a;

    invoke-direct {v0, p0}, Landroidx/core/f/ac$a;-><init>(Landroidx/core/f/ac;)V

    .line 266
    invoke-static {p1, p2, p3, p4}, Landroidx/core/graphics/b;->a(IIII)Landroidx/core/graphics/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/f/ac$a;->a(Landroidx/core/graphics/b;)Landroidx/core/f/ac$a;

    move-result-object p1

    .line 267
    invoke-virtual {p1}, Landroidx/core/f/ac$a;->a()Landroidx/core/f/ac;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 141
    invoke-virtual {p0}, Landroidx/core/f/ac;->h()Landroidx/core/graphics/b;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/b;->c:I

    return v0
.end method

.method public b(IIII)Landroidx/core/f/ac;
    .locals 1

    .line 541
    iget-object v0, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/f/ac$e;->a(IIII)Landroidx/core/f/ac;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1

    .line 155
    invoke-virtual {p0}, Landroidx/core/f/ac;->h()Landroidx/core/graphics/b;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/b;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 169
    invoke-virtual {p0}, Landroidx/core/f/ac;->h()Landroidx/core/graphics/b;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/b;->e:I

    return v0
.end method

.method public e()Landroidx/core/f/ac;
    .locals 1

    .line 244
    iget-object v0, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    invoke-virtual {v0}, Landroidx/core/f/ac$e;->c()Landroidx/core/f/ac;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 549
    :cond_0
    instance-of v0, p1, Landroidx/core/f/ac;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 552
    :cond_1
    check-cast p1, Landroidx/core/f/ac;

    .line 553
    iget-object v0, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    iget-object p1, p1, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    invoke-static {v0, p1}, Landroidx/core/e/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Landroidx/core/f/ac;
    .locals 1

    .line 385
    iget-object v0, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    invoke-virtual {v0}, Landroidx/core/f/ac$e;->d()Landroidx/core/f/ac;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroidx/core/f/ac;
    .locals 1

    .line 410
    iget-object v0, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    invoke-virtual {v0}, Landroidx/core/f/ac$e;->f()Landroidx/core/f/ac;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroidx/core/graphics/b;
    .locals 1

    .line 428
    iget-object v0, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    invoke-virtual {v0}, Landroidx/core/f/ac$e;->g()Landroidx/core/graphics/b;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 558
    iget-object v0, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/core/f/ac$e;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public i()Landroid/view/WindowInsets;
    .locals 2

    .line 569
    iget-object v0, p0, Landroidx/core/f/ac;->b:Landroidx/core/f/ac$e;

    instance-of v1, v0, Landroidx/core/f/ac$f;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/core/f/ac$f;

    iget-object v0, v0, Landroidx/core/f/ac$f;->b:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
