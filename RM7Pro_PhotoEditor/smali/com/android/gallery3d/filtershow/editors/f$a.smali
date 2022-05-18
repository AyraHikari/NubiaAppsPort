.class Lcom/android/gallery3d/filtershow/editors/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/f;->E(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Lcom/android/gallery3d/filtershow/editors/f;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/f;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/f$a;->b:Lcom/android/gallery3d/filtershow/editors/f;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/f$a;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/f$a;->b:Lcom/android/gallery3d/filtershow/editors/f;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/f$a;->a:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/editors/f;->V(Lcom/android/gallery3d/filtershow/editors/f;Landroid/widget/LinearLayout;)V

    return-void
.end method
