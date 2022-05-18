.class Lcom/android/gallery3d/filtershow/editors/e$a;
.super Lcom/android/gallery3d/filtershow/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/e;->E(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Landroid/widget/LinearLayout;

.field final synthetic d:Lcom/android/gallery3d/filtershow/editors/e;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/e;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e$a;->d:Lcom/android/gallery3d/filtershow/editors/e;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e$a;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/e$a;->d:Lcom/android/gallery3d/filtershow/editors/e;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/e;->T()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/e$a;->d:Lcom/android/gallery3d/filtershow/editors/e;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/e$a;->c:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/editors/e;->V(Lcom/android/gallery3d/filtershow/editors/e;Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/e$a;->d:Lcom/android/gallery3d/filtershow/editors/e;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/e;->K()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/editors/c;->g(Z)V

    return-void
.end method
