.class Lcom/hpplay/sdk/source/permission/c$d;
.super Landroid/app/SharedElementCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/permission/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/hpplay/sdk/source/permission/c$c;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/permission/c$c;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/hpplay/sdk/source/permission/c$d;->a:Lcom/hpplay/sdk/source/permission/c$c;

    .line 84
    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/c$d;->a:Lcom/hpplay/sdk/source/permission/c$c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/permission/c$c;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/c$d;->a:Lcom/hpplay/sdk/source/permission/c$c;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/permission/c$c;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/c$d;->a:Lcom/hpplay/sdk/source/permission/c$c;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/permission/c$c;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 108
    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/c$d;->a:Lcom/hpplay/sdk/source/permission/c$c;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/permission/c$c;->onRejectSharedElements(Ljava/util/List;)V

    .line 103
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/c$d;->a:Lcom/hpplay/sdk/source/permission/c$c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/permission/c$c;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 98
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/c$d;->a:Lcom/hpplay/sdk/source/permission/c$c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/permission/c$c;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 91
    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/c$d;->a:Lcom/hpplay/sdk/source/permission/c$c;

    new-instance v1, Lcom/hpplay/sdk/source/permission/c$d$1;

    invoke-direct {v1, p0, p3}, Lcom/hpplay/sdk/source/permission/c$d$1;-><init>(Lcom/hpplay/sdk/source/permission/c$d;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/hpplay/sdk/source/permission/c$c;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Lcom/hpplay/sdk/source/permission/c$a;)V

    .line 132
    return-void
.end method
