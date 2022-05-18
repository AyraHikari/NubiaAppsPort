.class Lcom/android/gallery3d/filtershow/controller/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/controller/e;->d(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/h;Lcom/android/gallery3d/filtershow/editors/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/gallery3d/filtershow/controller/e;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/controller/e;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/e$a;->b:Lcom/android/gallery3d/filtershow/controller/e;

    iput p2, p0, Lcom/android/gallery3d/filtershow/controller/e$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/e$a;->b:Lcom/android/gallery3d/filtershow/controller/e;

    iget v1, p0, Lcom/android/gallery3d/filtershow/controller/e$a;->a:I

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/filtershow/controller/e;->h(Landroid/view/View;I)V

    return-void
.end method
