.class Lcom/android/gallery3d/filtershow/editors/g$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/g;->n(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/editors/g;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/g;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/g$b;->a:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/g$b;->a:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/g;->a(Lcom/android/gallery3d/filtershow/editors/g;)Lcom/android/gallery3d/filtershow/filters/h;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/android/gallery3d/filtershow/filters/h;->o0(I)Lcom/android/gallery3d/filtershow/controller/h;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/controller/b;->h()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/g$b;->a:Lcom/android/gallery3d/filtershow/editors/g;

    iget-object p2, p2, Lcom/android/gallery3d/filtershow/editors/g;->n:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/g$b;->a:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/g;->b(Lcom/android/gallery3d/filtershow/editors/g;)Lcom/android/gallery3d/filtershow/editors/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
