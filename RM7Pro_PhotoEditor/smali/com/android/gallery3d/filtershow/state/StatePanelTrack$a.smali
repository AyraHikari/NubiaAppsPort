.class Lcom/android/gallery3d/filtershow/state/StatePanelTrack$a;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/state/StatePanelTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/state/StatePanelTrack;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/state/StatePanelTrack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack$a;->a:Lcom/android/gallery3d/filtershow/state/StatePanelTrack;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack$a;->a:Lcom/android/gallery3d/filtershow/state/StatePanelTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->a(Z)V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack$a;->a:Lcom/android/gallery3d/filtershow/state/StatePanelTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->a(Z)V

    return-void
.end method
