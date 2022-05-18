.class abstract La/b/b/a/h$f;
.super La/b/b/a/h$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "f"
.end annotation


# instance fields
.field protected a:[Landroid/support/v4/graphics/PathParser$PathDataNode;

.field b:Ljava/lang/String;

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, La/b/b/a/h$e;-><init>(La/b/b/a/h$a;)V

    .line 2
    iput-object v0, p0, La/b/b/a/h$f;->a:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    return-void
.end method

.method public constructor <init>(La/b/b/a/h$f;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, La/b/b/a/h$e;-><init>(La/b/b/a/h$a;)V

    .line 4
    iput-object v0, p0, La/b/b/a/h$f;->a:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 5
    iget-object v0, p1, La/b/b/a/h$f;->b:Ljava/lang/String;

    iput-object v0, p0, La/b/b/a/h$f;->b:Ljava/lang/String;

    .line 6
    iget v0, p1, La/b/b/a/h$f;->c:I

    iput v0, p0, La/b/b/a/h$f;->c:I

    .line 7
    iget-object p1, p1, La/b/b/a/h$f;->a:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-static {p1}, Landroid/support/v4/graphics/PathParser;->deepCopyNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object p1

    iput-object p1, p0, La/b/b/a/h$f;->a:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/graphics/Path;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, La/b/b/a/h$f;->a:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/graphics/PathParser$PathDataNode;->nodesToPath([Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public getPathData()[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .locals 1

    .line 1
    iget-object v0, p0, La/b/b/a/h$f;->a:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La/b/b/a/h$f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Landroid/support/v4/graphics/PathParser$PathDataNode;)V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/b/a/h$f;->a:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/PathParser;->canMorph([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/support/v4/graphics/PathParser;->deepCopyNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object p1

    iput-object p1, p0, La/b/b/a/h$f;->a:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, La/b/b/a/h$f;->a:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/PathParser;->updateNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)V

    :goto_0
    return-void
.end method
