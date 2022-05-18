.class public Lc/b/a/n/i/m/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/i/m/g;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/n/i/m/i$b;,
        Lc/b/a/n/i/m/i$c;
    }
.end annotation


# static fields
.field private static final d:[Landroid/graphics/Bitmap$Config;

.field private static final e:[Landroid/graphics/Bitmap$Config;

.field private static final f:[Landroid/graphics/Bitmap$Config;

.field private static final g:[Landroid/graphics/Bitmap$Config;


# instance fields
.field private final a:Lc/b/a/n/i/m/i$c;

.field private final b:Lc/b/a/n/i/m/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/i/m/e<",
            "Lc/b/a/n/i/m/i$b;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap$Config;",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    .line 1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sput-object v0, Lc/b/a/n/i/m/i;->d:[Landroid/graphics/Bitmap$Config;

    new-array v0, v3, [Landroid/graphics/Bitmap$Config;

    .line 2
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lc/b/a/n/i/m/i;->e:[Landroid/graphics/Bitmap$Config;

    new-array v0, v3, [Landroid/graphics/Bitmap$Config;

    .line 3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lc/b/a/n/i/m/i;->f:[Landroid/graphics/Bitmap$Config;

    new-array v0, v3, [Landroid/graphics/Bitmap$Config;

    .line 4
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lc/b/a/n/i/m/i;->g:[Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/b/a/n/i/m/i$c;

    invoke-direct {v0}, Lc/b/a/n/i/m/i$c;-><init>()V

    iput-object v0, p0, Lc/b/a/n/i/m/i;->a:Lc/b/a/n/i/m/i$c;

    .line 3
    new-instance v0, Lc/b/a/n/i/m/e;

    invoke-direct {v0}, Lc/b/a/n/i/m/e;-><init>()V

    iput-object v0, p0, Lc/b/a/n/i/m/i;->b:Lc/b/a/n/i/m/e;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/b/a/n/i/m/i;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic g(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc/b/a/n/i/m/i;->j(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private h(Ljava/lang/Integer;Landroid/graphics/Bitmap$Config;)V
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lc/b/a/n/i/m/i;->l(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object p2

    .line 2
    invoke-interface {p2, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    invoke-interface {p2, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private i(Lc/b/a/n/i/m/i$b;ILandroid/graphics/Bitmap$Config;)Lc/b/a/n/i/m/i$b;
    .locals 7

    .line 1
    invoke-static {p3}, Lc/b/a/n/i/m/i;->k(Landroid/graphics/Bitmap$Config;)[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 2
    invoke-direct {p0, v3}, Lc/b/a/n/i/m/i;->l(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v4

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/lit8 v6, p2, 0x8

    if-gt v5, v6, :cond_2

    .line 5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_1

    if-nez v3, :cond_0

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p3}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 6
    :cond_1
    :goto_1
    iget-object p2, p0, Lc/b/a/n/i/m/i;->a:Lc/b/a/n/i/m/i$c;

    invoke-virtual {p2, p1}, Lc/b/a/n/i/m/b;->c(Lc/b/a/n/i/m/h;)V

    .line 7
    iget-object p1, p0, Lc/b/a/n/i/m/i;->a:Lc/b/a/n/i/m/i$c;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v3}, Lc/b/a/n/i/m/i$c;->e(ILandroid/graphics/Bitmap$Config;)Lc/b/a/n/i/m/i$b;

    move-result-object p1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object p1
.end method

.method private static j(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static k(Landroid/graphics/Bitmap$Config;)[Landroid/graphics/Bitmap$Config;
    .locals 3

    .line 1
    sget-object v0, Lc/b/a/n/i/m/i$a;->a:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    new-array v0, v1, [Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    .line 2
    :cond_0
    sget-object p0, Lc/b/a/n/i/m/i;->g:[Landroid/graphics/Bitmap$Config;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lc/b/a/n/i/m/i;->f:[Landroid/graphics/Bitmap$Config;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lc/b/a/n/i/m/i;->e:[Landroid/graphics/Bitmap$Config;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lc/b/a/n/i/m/i;->d:[Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method private l(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/i/m/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 3
    iget-object v1, p0, Lc/b/a/n/i/m/i;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lc/b/a/t/h;->e(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-static {p1, p2, p3}, Lc/b/a/t/h;->d(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lc/b/a/n/i/m/i;->a:Lc/b/a/n/i/m/i$c;

    invoke-virtual {v1, v0, p3}, Lc/b/a/n/i/m/i$c;->e(ILandroid/graphics/Bitmap$Config;)Lc/b/a/n/i/m/i$b;

    move-result-object v1

    .line 3
    invoke-direct {p0, v1, v0, p3}, Lc/b/a/n/i/m/i;->i(Lc/b/a/n/i/m/i$b;ILandroid/graphics/Bitmap$Config;)Lc/b/a/n/i/m/i$b;

    move-result-object p3

    .line 4
    iget-object v0, p0, Lc/b/a/n/i/m/i;->b:Lc/b/a/n/i/m/e;

    invoke-virtual {v0, p3}, Lc/b/a/n/i/m/e;->a(Lc/b/a/n/i/m/h;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    if-eqz p3, :cond_1

    .line 5
    invoke-static {p3}, Lc/b/a/t/h;->e(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lc/b/a/n/i/m/i;->h(Ljava/lang/Integer;Landroid/graphics/Bitmap$Config;)V

    .line 6
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-virtual {p3, p1, p2, v0}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    :cond_1
    return-object p3
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lc/b/a/t/h;->e(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lc/b/a/n/i/m/i;->a:Lc/b/a/n/i/m/i$c;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lc/b/a/n/i/m/i$c;->e(ILandroid/graphics/Bitmap$Config;)Lc/b/a/n/i/m/i$b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lc/b/a/n/i/m/i;->b:Lc/b/a/n/i/m/e;

    invoke-virtual {v1, v0, p1}, Lc/b/a/n/i/m/e;->d(Lc/b/a/n/i/m/h;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/b/a/n/i/m/i;->l(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object p1

    .line 5
    invoke-static {v0}, Lc/b/a/n/i/m/i$b;->b(Lc/b/a/n/i/m/i$b;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 6
    invoke-static {v0}, Lc/b/a/n/i/m/i$b;->b(Lc/b/a/n/i/m/i$b;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/b/a/n/i/m/i;->b:Lc/b/a/n/i/m/e;

    invoke-virtual {v0}, Lc/b/a/n/i/m/e;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lc/b/a/t/h;->e(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lc/b/a/n/i/m/i;->h(Ljava/lang/Integer;Landroid/graphics/Bitmap$Config;)V

    :cond_0
    return-object v0
.end method

.method public e(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lc/b/a/t/h;->d(IILandroid/graphics/Bitmap$Config;)I

    move-result p1

    .line 2
    invoke-static {p1, p3}, Lc/b/a/n/i/m/i;->j(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lc/b/a/t/h;->e(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {v0, p1}, Lc/b/a/n/i/m/i;->j(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SizeConfigStrategy{groupedMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/n/i/m/i;->b:Lc/b/a/n/i/m/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sortedSizes=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lc/b/a/n/i/m/i;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lc/b/a/n/i/m/i;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ")}"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
