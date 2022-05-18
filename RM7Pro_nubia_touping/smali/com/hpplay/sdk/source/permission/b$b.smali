.class Lcom/hpplay/sdk/source/permission/b$b;
.super Landroid/app/SharedElementCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/permission/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/hpplay/sdk/source/permission/b$a;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/permission/b$a;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/hpplay/sdk/source/permission/b$b;->a:Lcom/hpplay/sdk/source/permission/b$a;

    .line 85
    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/b$b;->a:Lcom/hpplay/sdk/source/permission/b$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/permission/b$a;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/b$b;->a:Lcom/hpplay/sdk/source/permission/b$a;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/permission/b$a;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

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
    .line 108
    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/b$b;->a:Lcom/hpplay/sdk/source/permission/b$a;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/permission/b$a;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 109
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
    .line 103
    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/b$b;->a:Lcom/hpplay/sdk/source/permission/b$a;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/permission/b$a;->onRejectSharedElements(Ljava/util/List;)V

    .line 104
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
    .line 97
    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/b$b;->a:Lcom/hpplay/sdk/source/permission/b$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/permission/b$a;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 99
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
    .line 90
    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/b$b;->a:Lcom/hpplay/sdk/source/permission/b$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/permission/b$a;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 92
    return-void
.end method
