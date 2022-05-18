.class public Lc/b/b/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Lc/b/b/a/a;


# instance fields
.field private a:[Lc/b/b/a/b;

.field private b:La/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/a<",
            "Lc/b/b/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x10

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v0, Lc/b/b/a/a;

    const/high16 v1, 0x1400000

    invoke-direct {v0, v1}, Lc/b/b/a/a;-><init>(I)V

    sput-object v0, Lc/b/b/a/a;->c:Lc/b/b/a/a;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/c/c;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, La/c/c;-><init>(I)V

    iput-object v0, p0, Lc/b/b/a/a;->b:La/c/a;

    const/4 v1, 0x3

    new-array v2, v1, [Lc/b/b/a/b;

    iput-object v2, p0, Lc/b/b/a/a;->a:[Lc/b/b/a/b;

    new-instance v3, Lc/b/b/a/b;

    div-int/2addr p1, v1

    invoke-direct {v3, p1, v0}, Lc/b/b/a/b;-><init>(ILa/c/a;)V

    const/4 v0, 0x0

    aput-object v3, v2, v0

    iget-object v0, p0, Lc/b/b/a/a;->a:[Lc/b/b/a/b;

    new-instance v1, Lc/b/b/a/b;

    iget-object v2, p0, Lc/b/b/a/a;->b:La/c/a;

    invoke-direct {v1, p1, v2}, Lc/b/b/a/b;-><init>(ILa/c/a;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lc/b/b/a/a;->a:[Lc/b/b/a/b;

    new-instance v1, Lc/b/b/a/b;

    iget-object v2, p0, Lc/b/b/a/a;->b:La/c/a;

    invoke-direct {v1, p1, v2}, Lc/b/b/a/b;-><init>(ILa/c/a;)V

    const/4 p1, 0x2

    aput-object v1, v0, p1

    return-void
.end method

.method public static b()Lc/b/b/a/a;
    .locals 1

    sget-object v0, Lc/b/b/a/a;->c:Lc/b/b/a/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lc/b/b/a/a;->a:[Lc/b/b/a/b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lc/b/b/a/b;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
