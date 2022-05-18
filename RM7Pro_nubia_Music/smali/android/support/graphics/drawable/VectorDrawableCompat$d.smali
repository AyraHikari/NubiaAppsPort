.class Landroid/support/graphics/drawable/VectorDrawableCompat$d;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field protected m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

.field n:Ljava/lang/String;

.field o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 1520
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$d;)V
    .locals 1

    .prologue
    .line 1544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 1545
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->n:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->n:Ljava/lang/String;

    .line 1546
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->o:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->o:I

    .line 1547
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-static {v0}, Landroid/support/v4/graphics/PathParser;->deepCopyNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 1548
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .locals 1

    .prologue
    .line 1551
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1552
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    if-eqz v0, :cond_0

    .line 1553
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/PathParser$PathDataNode;->nodesToPath([Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V

    .line 1555
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1569
    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1558
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->n:Ljava/lang/String;

    return-object v0
.end method
