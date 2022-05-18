.class Lcom/android/gallery3d/filtershow/editors/d$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/d;->E(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/editors/d;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/d;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/d$c;->a:Lcom/android/gallery3d/filtershow/editors/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/d$c;->a:Lcom/android/gallery3d/filtershow/editors/d;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/editors/d;->V(Lcom/android/gallery3d/filtershow/editors/d;I)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/d$c;->a:Lcom/android/gallery3d/filtershow/editors/d;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/d;->W(Lcom/android/gallery3d/filtershow/editors/d;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/d$c;->a:Lcom/android/gallery3d/filtershow/editors/d;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/d$c;->a:Lcom/android/gallery3d/filtershow/editors/d;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    return-void
.end method
