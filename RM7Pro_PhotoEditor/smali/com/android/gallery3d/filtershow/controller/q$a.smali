.class Lcom/android/gallery3d/filtershow/controller/q$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/colorpicker/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/controller/q;->d(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/h;Lcom/android/gallery3d/filtershow/editors/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/controller/q;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/controller/q;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/q$a;->a:Lcom/android/gallery3d/filtershow/controller/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/filtershow/colorpicker/a;)V
    .locals 0

    return-void
.end method

.method public setColor([F)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/q$a;->a:Lcom/android/gallery3d/filtershow/controller/q;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/controller/q;->e(Lcom/android/gallery3d/filtershow/controller/q;)Lcom/android/gallery3d/filtershow/controller/j;

    move-result-object v0

    const/4 v1, 0x3

    aget p1, p1, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/q$a;->a:Lcom/android/gallery3d/filtershow/controller/q;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/controller/q;->c:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    return-void
.end method
