.class Lcom/android/gallery3d/filtershow/controller/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/controller/a;->d(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/h;Lcom/android/gallery3d/filtershow/editors/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/controller/a;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/controller/a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/a$b;->a:Lcom/android/gallery3d/filtershow/controller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/a$b;->a:Lcom/android/gallery3d/filtershow/controller/a;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/controller/v;->d:Lcom/android/gallery3d/filtershow/controller/m;

    check-cast p1, Lcom/android/gallery3d/filtershow/controller/i;

    invoke-interface {p1}, Lcom/android/gallery3d/filtershow/controller/i;->i()V

    return-void
.end method
