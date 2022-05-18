.class Lcom/android/gallery3d/filtershow/controller/v$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/controller/v;->d(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/h;Lcom/android/gallery3d/filtershow/editors/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/android/gallery3d/filtershow/controller/v;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/controller/v;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v$a;->b:Lcom/android/gallery3d/filtershow/controller/v;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/controller/v$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v$a;->b:Lcom/android/gallery3d/filtershow/controller/v;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/controller/v;->d:Lcom/android/gallery3d/filtershow/controller/m;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/gallery3d/filtershow/controller/m;->h()I

    move-result p3

    add-int/2addr p2, p3

    invoke-interface {p1, p2}, Lcom/android/gallery3d/filtershow/controller/m;->l(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v$a;->b:Lcom/android/gallery3d/filtershow/controller/v;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/controller/v;->e(Lcom/android/gallery3d/filtershow/controller/v;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v$a;->b:Lcom/android/gallery3d/filtershow/controller/v;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/controller/v;->e(Lcom/android/gallery3d/filtershow/controller/v;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/controller/v$a;->b:Lcom/android/gallery3d/filtershow/controller/v;

    iget-object p2, p2, Lcom/android/gallery3d/filtershow/controller/v;->d:Lcom/android/gallery3d/filtershow/controller/m;

    invoke-interface {p2}, Lcom/android/gallery3d/filtershow/controller/h;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v$a;->b:Lcom/android/gallery3d/filtershow/controller/v;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/controller/v;->f(Lcom/android/gallery3d/filtershow/controller/v;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v$a;->b:Lcom/android/gallery3d/filtershow/controller/v;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/controller/v;->f(Lcom/android/gallery3d/filtershow/controller/v;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/controller/v$a;->b:Lcom/android/gallery3d/filtershow/controller/v;

    iget-object p2, p2, Lcom/android/gallery3d/filtershow/controller/v;->d:Lcom/android/gallery3d/filtershow/controller/m;

    invoke-interface {p2}, Lcom/android/gallery3d/filtershow/controller/m;->getValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v$a;->b:Lcom/android/gallery3d/filtershow/controller/v;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/controller/v;->e:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v$a;->a:Landroid/content/Context;

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/controller/v$a;->b:Lcom/android/gallery3d/filtershow/controller/v;

    iget-object p2, p2, Lcom/android/gallery3d/filtershow/controller/v;->d:Lcom/android/gallery3d/filtershow/controller/m;

    invoke-interface {p2}, Lcom/android/gallery3d/filtershow/controller/m;->getValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->r2(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v$a;->b:Lcom/android/gallery3d/filtershow/controller/v;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/controller/v;->d:Lcom/android/gallery3d/filtershow/controller/m;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/v$a;->a:Landroid/content/Context;

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-interface {p1}, Lcom/android/gallery3d/filtershow/controller/m;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f2(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v$a;->a:Landroid/content/Context;

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d1(Z)V

    return-void
.end method
