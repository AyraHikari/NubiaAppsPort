.class Lcom/zte/camera/ui/common/VlogCenterLayoutManager$a;
.super Landroidx/recyclerview/widget/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/ui/common/VlogCenterLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic f:Lcom/zte/camera/ui/common/VlogCenterLayoutManager;


# direct methods
.method constructor <init>(Lcom/zte/camera/ui/common/VlogCenterLayoutManager;Landroid/content/Context;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogCenterLayoutManager$a;->f:Lcom/zte/camera/ui/common/VlogCenterLayoutManager;

    .line 42
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogCenterLayoutManager$a;->f:Lcom/zte/camera/ui/common/VlogCenterLayoutManager;

    invoke-static {v0}, Lcom/zte/camera/ui/common/VlogCenterLayoutManager;->a(Lcom/zte/camera/ui/common/VlogCenterLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42a00000    # 80.0f

    .line 53
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_0
    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0

    :cond_0
    const/high16 v0, 0x43160000    # 150.0f

    .line 55
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0
.end method

.method public a(IIIII)I
    .locals 0

    sub-int/2addr p4, p3

    .line 47
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    sub-int/2addr p3, p1

    return p3
.end method
